// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'color_manager.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ColorManagerData _$ColorManagerDataFromJson(Map<String, dynamic> json) {
  return _ColorManagerData.fromJson(json);
}

/// @nodoc
mixin _$ColorManagerData {
  bool get isDarkMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorManagerDataCopyWith<ColorManagerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorManagerDataCopyWith<$Res> {
  factory $ColorManagerDataCopyWith(
          ColorManagerData value, $Res Function(ColorManagerData) then) =
      _$ColorManagerDataCopyWithImpl<$Res, ColorManagerData>;
  @useResult
  $Res call({bool isDarkMode});
}

/// @nodoc
class _$ColorManagerDataCopyWithImpl<$Res, $Val extends ColorManagerData>
    implements $ColorManagerDataCopyWith<$Res> {
  _$ColorManagerDataCopyWithImpl(this._value, this._then);

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
abstract class _$$ColorManagerDataImplCopyWith<$Res>
    implements $ColorManagerDataCopyWith<$Res> {
  factory _$$ColorManagerDataImplCopyWith(_$ColorManagerDataImpl value,
          $Res Function(_$ColorManagerDataImpl) then) =
      __$$ColorManagerDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDarkMode});
}

/// @nodoc
class __$$ColorManagerDataImplCopyWithImpl<$Res>
    extends _$ColorManagerDataCopyWithImpl<$Res, _$ColorManagerDataImpl>
    implements _$$ColorManagerDataImplCopyWith<$Res> {
  __$$ColorManagerDataImplCopyWithImpl(_$ColorManagerDataImpl _value,
      $Res Function(_$ColorManagerDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = null,
  }) {
    return _then(_$ColorManagerDataImpl(
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColorManagerDataImpl extends _ColorManagerData
    with DiagnosticableTreeMixin {
  const _$ColorManagerDataImpl({this.isDarkMode = true}) : super._();

  factory _$ColorManagerDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorManagerDataImplFromJson(json);

  @override
  @JsonKey()
  final bool isDarkMode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ColorManagerData(isDarkMode: $isDarkMode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ColorManagerData'))
      ..add(DiagnosticsProperty('isDarkMode', isDarkMode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorManagerDataImpl &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isDarkMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorManagerDataImplCopyWith<_$ColorManagerDataImpl> get copyWith =>
      __$$ColorManagerDataImplCopyWithImpl<_$ColorManagerDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorManagerDataImplToJson(
      this,
    );
  }
}

abstract class _ColorManagerData extends ColorManagerData {
  const factory _ColorManagerData({final bool isDarkMode}) =
      _$ColorManagerDataImpl;
  const _ColorManagerData._() : super._();

  factory _ColorManagerData.fromJson(Map<String, dynamic> json) =
      _$ColorManagerDataImpl.fromJson;

  @override
  bool get isDarkMode;
  @override
  @JsonKey(ignore: true)
  _$$ColorManagerDataImplCopyWith<_$ColorManagerDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
