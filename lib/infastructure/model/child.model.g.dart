// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChildModelImpl _$$ChildModelImplFromJson(Map<String, dynamic> json) =>
    _$ChildModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      country: json['country'] as String,
      status: json['status'] as bool,
    );

Map<String, dynamic> _$$ChildModelImplToJson(_$ChildModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'status': instance.status,
    };
