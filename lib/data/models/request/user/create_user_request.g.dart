// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateUserRequestImpl _$$CreateUserRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateUserRequestImpl(
      id: json['id'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      birthDay: const DateTimeConverter().fromJson(json['birthDay'] as String),
      phone: json['phone'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$CreateUserRequestImplToJson(
        _$CreateUserRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'password': instance.password,
      'name': instance.name,
      'birthDay': const DateTimeConverter().toJson(instance.birthDay),
      'phone': instance.phone,
      'email': instance.email,
    };
