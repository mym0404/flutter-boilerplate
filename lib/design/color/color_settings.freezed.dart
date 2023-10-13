// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'color_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ColorSettingsData _$ColorSettingsDataFromJson(Map<String, dynamic> json) {
  return _ColorSettingsData.fromJson(json);
}

/// @nodoc
mixin _$ColorSettingsData {
  bool get isDarkMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorSettingsDataCopyWith<ColorSettingsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorSettingsDataCopyWith<$Res> {
  factory $ColorSettingsDataCopyWith(
          ColorSettingsData value, $Res Function(ColorSettingsData) then) =
      _$ColorSettingsDataCopyWithImpl<$Res, ColorSettingsData>;
  @useResult
  $Res call({bool isDarkMode});
}

/// @nodoc
class _$ColorSettingsDataCopyWithImpl<$Res, $Val extends ColorSettingsData>
    implements $ColorSettingsDataCopyWith<$Res> {
  _$ColorSettingsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = null,
  }) {
    return _then(_value.copyWith(
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColorSettingsDataImplCopyWith<$Res>
    implements $ColorSettingsDataCopyWith<$Res> {
  factory _$$ColorSettingsDataImplCopyWith(_$ColorSettingsDataImpl value,
          $Res Function(_$ColorSettingsDataImpl) then) =
      __$$ColorSettingsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDarkMode});
}

/// @nodoc
class __$$ColorSettingsDataImplCopyWithImpl<$Res>
    extends _$ColorSettingsDataCopyWithImpl<$Res, _$ColorSettingsDataImpl>
    implements _$$ColorSettingsDataImplCopyWith<$Res> {
  __$$ColorSettingsDataImplCopyWithImpl(_$ColorSettingsDataImpl _value,
      $Res Function(_$ColorSettingsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = null,
  }) {
    return _then(_$ColorSettingsDataImpl(
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColorSettingsDataImpl extends _ColorSettingsData
    with DiagnosticableTreeMixin {
  const _$ColorSettingsDataImpl({this.isDarkMode = true}) : super._();

  factory _$ColorSettingsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorSettingsDataImplFromJson(json);

  @override
  @JsonKey()
  final bool isDarkMode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ColorSettingsData(isDarkMode: $isDarkMode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ColorSettingsData'))
      ..add(DiagnosticsProperty('isDarkMode', isDarkMode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorSettingsDataImpl &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isDarkMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorSettingsDataImplCopyWith<_$ColorSettingsDataImpl> get copyWith =>
      __$$ColorSettingsDataImplCopyWithImpl<_$ColorSettingsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorSettingsDataImplToJson(
      this,
    );
  }
}

abstract class _ColorSettingsData extends ColorSettingsData {
  const factory _ColorSettingsData({final bool isDarkMode}) =
      _$ColorSettingsDataImpl;
  const _ColorSettingsData._() : super._();

  factory _ColorSettingsData.fromJson(Map<String, dynamic> json) =
      _$ColorSettingsDataImpl.fromJson;

  @override
  bool get isDarkMode;
  @override
  @JsonKey(ignore: true)
  _$$ColorSettingsDataImplCopyWith<_$ColorSettingsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
