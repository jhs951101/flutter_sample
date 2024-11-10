// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressModelImpl _$$AddressModelImplFromJson(Map<String, dynamic> json) =>
    _$AddressModelImpl(
      addressName: json['address_name'] as String,
      address1Depth: json['address_1_depth'] as String,
      address2Depth: json['address_2_depth'] as String,
      address3Depth: json['address_3_depth'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$AddressModelImplToJson(_$AddressModelImpl instance) =>
    <String, dynamic>{
      'address_name': instance.addressName,
      'address_1_depth': instance.address1Depth,
      'address_2_depth': instance.address2Depth,
      'address_3_depth': instance.address3Depth,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
