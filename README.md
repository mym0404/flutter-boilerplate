<div align="center">

<a href="https://github.com/mym0404"><img alt="GitHub: mym0404" src="https://img.shields.io/github/followers/mym0404?label=Follow&style=social" /></a>
<a href="https://github.com/mym0404/flutter-boilerplate"><img src="https://img.shields.io/github/stars/mym0404/flutter-boilerplate?style=social" /></a>
<a href="https://opensource.org/licenses/MIT" target="_blank"><img src="https://img.shields.io/badge/License-MIT-yellow.svg"/></a>

</div>

# Flutter Boilerplate

A simple boilerplate project for the new Flutter application.

Pre-installed packages and boilerplate codes are often opinionated by author.

But components are easily opt-outed by hand or you can just pick useful parts of the project.

You can use this project as Flutter app initialization sample for guide & study.

This Project doesn't provide any architecture layer.

The main purpose of this project aims skip install & package setup phases with extra utils.

## Project Settings

- Platforms: `android`, `ios` (Add more with CLI if you need)
- Dart: `>=3.1.3 <4.0.0`

## Pre-installed Packages

### UI

- [gap](https://pub.dev/packages/gap)

Add a gap within `Column` or `Row` easily

- [flutter_native_splash](https://pub.dev/packages/flutter_native_splash)

Generate Splash screen codes automatically for each platforms

### Routing

- [go_router](https://pub.dev/packages/go_router)

### Dependency Injection

- [get_it](https://pub.dev/packages/get_it)

Simplest service locator style dependency injection solution

- [watch_it](https://pub.dev/packages/watch_it)

A addon package for `get_it` that provides mixins and watch features.

### Utility

- [freezed](https://pub.dev/packages/freezed)

Static boilerplate generation tool for class.

It generates `copyWith`, equality check, json serialization and other many annotations.

- [shared_preferences](https://pub.dev/packages/shared_preferences)
- [logger](https://pub.dev/packages/logger)
- [collection](https://pub.dev/packages/collection)

### Localization

[Flutter L10N docs](https://docs.flutter.dev/ui/accessibility-and-localization/internationalization)

- [flutter_localizations](https://pub.dev/packages/flutter_localization)
- [intl](https://pub.dev/packages/intl)
- [intl_utils](https://pub.dev/packages/intl_utils)

## Getting Started
**Step 1:**

Fork, download or clone this repo by using the link below:

```
https://github.com/mym0404/flutter_boilerplate.git
```

**Step 2:**

```cmd
# get pub dependencies
flutter pub get

# generate localization  
flutter pub run intl_utils:generate

# generate ...
flutter pub run build_runner build --delete-conflicting-outputs
```

**Step 3:**
Go to `/packages/rest_client` and execute the following command in terminal to generate model and api client:

```cmd
flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
```

**Whenever change freezed file, assets, api**

Run command
```cmd
flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
```

## Folder structure
```
flutter_boilerplate/
|- assets/                    (assets)
|- lib/
  |- configs/                 (flavor config)
  |- core/                    (bloc observer, theme,...)
  |- data/                    (repository)
  |- features/                (features page)
  |- generated/               (code generation includes localization and assets generation)
  |- injector/                (dependencies injector)
  |- l10n/                    (localization resources
  |- router/                  (routing)
  |- services/                (app services)
  |- utils/                   (app utils)
|- packages/
  |- rest_client/             (api client)
  |- local_database/          (local database)
|- integration_test
|- test/
  |- dependencies/                (mock dependencies)
  |- features/                (bloc test features)

```

## [Freezed](https://pub.dev/packages/freezed):
### Create a immutable Model with any features available
- Define a `constructor` + the `properties`
- Override `toString`, operator `==`, hashCode
- Implement a `copyWith` method to clone the object
- Handling `de/serialization`
### Example
```dart
part 'dog_image.freezed.dart';
part 'dog_image.g.dart';

@Freezed(fromJson: true)
class DogImage with _$DogImage {
  const factory DogImage({
    required String message,
    required String status,
  }) = _DogImage;

  factory DogImage.fromJson(Map<String, dynamic> json) =>
      _$DogImageFromJson(json);
}
```
### Implement
```dart
final DogImage dogImage = DogImage.fromJson(json);
///
final DogImage dogImage = dogImage.copyWith(status: 'failed');
/// Deep copy, equal operator ...
...
```

## [Retrofit]((https://pub.dev/packages/retrofit)):
### Create a api client by code generation, you do not need to implement each request manually
### Example
```dart
part 'dog_api.g.dart';

@RestApi()
abstract class DogApiClient {
  factory DogApiClient(Dio dio, {String baseUrl}) = _DogApiClient;

  @GET('/breeds/image/random')
  Future<DogImage> getDogImageRandom();
}
```
Generate to
```dart
  ///
  @override
  Future<DogImage> getDogImageRandom() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result =
        await _dio.fetch<Map<String, dynamic>>(_setStreamType<DogImage>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/breeds/image/random',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DogImage.fromJson(_result.data!);
    return value;
  }
```
And this api client will use the `baseUrl` from a Dio injector
```dart
injector.registerLazySingleton<Dio>(
  () {
  /// TODO: custom DIO here
    final Dio dio = Dio(
      BaseOptions(
        baseUrl: AppConfig.baseUrl,
      ),
    );
    if (!kReleaseMode) {
      dio.interceptors.add(
        LogInterceptor(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          responseBody: true,
          request: false,
        ),
      );
    }
    return dio;
  },
  instanceName: dioInstance,
);

injector.registerFactory<DogApiClient>(
  () => DogApiClient(
    injector(instanceName: dioInstance),
  ),
);
```

## Mockito and Bloc tests:
If a bloc that you want to test have a required dependencies, you must add it into annotations `@GenerateMocks` in `/test/app_test/app_test.dart`:
```dart
@GenerateMocks([
  DogImageRandomRepository,
  LogService,

  /// TODO
])
void main() {}
```
Run the following command to generate a mock dependency
```cmd
flutter pub run build_runner build --delete-conflicting-outputs
```

Write a test file:
```dart
setUp(() {
    bloc = DogImageRandomBloc(
      dogImageRandomRepository: repository,
      logService: logService,
    );
  });

  group('test add event [DogImageRandomRandomRequested]', () {
    blocTest(
      'emit state when success',
      setUp: () {
        when(repository.getDogImageRandom())
            .thenAnswer((_) => Future<DogImage>.value(image));
      },
      build: () => bloc,
      act: (_) => bloc.add(
        const DogImageRandomRandomRequested(),
      ),
      expect: () => [
        isA<DogImageRandomState>().having(
          (state) => state.status,
          'status',
          UIStatus.loading,
        ),
        isA<DogImageRandomState>()
            .having(
              (state) => state.status,
              'status',
              UIStatus.loadSuccess,
            )
            .having(
              (state) => state.dogImage,
              'image',
              image,
            ),
      ],
    );

    blocTest(
      'emit state when failed',
      setUp: () {
        when(repository.getDogImageRandom()).thenThrow(Exception('error'));
      },
      build: () => bloc,
      seed: () => const DogImageRandomState(dogImage: image),
      act: (_) => bloc.add(
        const DogImageRandomRandomRequested(),
      ),
      expect: () => [
        isA<DogImageRandomState>().having(
          (state) => state.status,
          'status',
          UIStatus.loading,
        ),
        isA<DogImageRandomState>()
            .having(
              (state) => state.status,
              'status',
              UIStatus.actionFailed,
            )
            .having(
              (state) => state.dogImage,
              'image',
              image,
            ),
      ],
    );
  });
```

## If you want to understand architecture or any packages used in this project, you can create a discussion on github repo.
## And feel free to create a pull request !





