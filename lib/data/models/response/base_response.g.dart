// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseImpl _$$BaseResponseImplFromJson(Map<String, dynamic> json) =>
    _$BaseResponseImpl(
      success: json['success'] as bool,
      data: json['data'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$BaseResponseImplToJson(_$BaseResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };
