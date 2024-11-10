// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      type: const UserTypeConverter().fromJson((json['type'] as num).toInt()),
      createdDate:
          const DateTimeConverter().fromJson(json['createdDate'] as String),
      updatedDate:
          const DateTimeConverter().fromJson(json['updatedDate'] as String),
      birthDay: const DateTimeConverter().fromJson(json['birthDay'] as String),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'phone': instance.phone,
      'type': const UserTypeConverter().toJson(instance.type),
      'createdDate': const DateTimeConverter().toJson(instance.createdDate),
      'updatedDate': const DateTimeConverter().toJson(instance.updatedDate),
      'birthDay': const DateTimeConverter().toJson(instance.birthDay),
    };
