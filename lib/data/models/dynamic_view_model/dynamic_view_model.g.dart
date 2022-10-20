// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DynamicViewModel _$DynamicViewModelFromJson(Map<String, dynamic> json) =>
    DynamicViewModel(
      title: json['title'] as String? ?? '',
      width: json['width'] as int? ?? 0,
      type: json['type'] as String? ?? '',
      color: json['color'] as String? ?? '',
      group: json['group'] as String? ?? '',
      sort: json['sort'] as int? ?? 0,
      height: json['height'] as int? ?? 0,
    );

Map<String, dynamic> _$DynamicViewModelToJson(DynamicViewModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'width': instance.width,
      'height': instance.height,
      'sort': instance.sort,
      'group': instance.group,
      'color': instance.color,
      'type': instance.type,
    };
