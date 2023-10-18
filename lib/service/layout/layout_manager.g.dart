// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'layout_manager.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LayoutDataImpl _$$LayoutDataImplFromJson(Map<String, dynamic> json) =>
    _$LayoutDataImpl(
      size: json['size'] == null
          ? Size.zero
          : const SizeJsonConverter().fromJson(json['size'] as String),
    );

Map<String, dynamic> _$$LayoutDataImplToJson(_$LayoutDataImpl instance) =>
    <String, dynamic>{
      'size': const SizeJsonConverter().toJson(instance.size),
    };
