// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) {
  return _AddressModel.fromJson(json);
}

/// @nodoc
mixin _$AddressModel {
  @JsonKey(name: 'address_name')
  String get addressName => throw _privateConstructorUsedError; // 전체 주소
  @JsonKey(name: 'address_1_depth')
  String get address1Depth => throw _privateConstructorUsedError; // 시도
  @JsonKey(name: 'address_2_depth')
  String get address2Depth => throw _privateConstructorUsedError; // 시군구
  @JsonKey(name: 'address_3_depth')
  String get address3Depth => throw _privateConstructorUsedError; // 읍면동
  @JsonKey(name: 'latitude')
  double get latitude => throw _privateConstructorUsedError; // 위도 Y
  @JsonKey(name: 'longitude')
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressModelCopyWith<AddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressModelCopyWith<$Res> {
  factory $AddressModelCopyWith(
          AddressModel value, $Res Function(AddressModel) then) =
      _$AddressModelCopyWithImpl<$Res, AddressModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'address_name') String addressName,
      @JsonKey(name: 'address_1_depth') String address1Depth,
      @JsonKey(name: 'address_2_depth') String address2Depth,
      @JsonKey(name: 'address_3_depth') String address3Depth,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude});
}

/// @nodoc
class _$AddressModelCopyWithImpl<$Res, $Val extends AddressModel>
    implements $AddressModelCopyWith<$Res> {
  _$AddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressName = null,
    Object? address1Depth = null,
    Object? address2Depth = null,
    Object? address3Depth = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      addressName: null == addressName
          ? _value.addressName
          : addressName // ignore: cast_nullable_to_non_nullable
              as String,
      address1Depth: null == address1Depth
          ? _value.address1Depth
          : address1Depth // ignore: cast_nullable_to_non_nullable
              as String,
      address2Depth: null == address2Depth
          ? _value.address2Depth
          : address2Depth // ignore: cast_nullable_to_non_nullable
              as String,
      address3Depth: null == address3Depth
          ? _value.address3Depth
          : address3Depth // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressModelImplCopyWith<$Res>
    implements $AddressModelCopyWith<$Res> {
  factory _$$AddressModelImplCopyWith(
          _$AddressModelImpl value, $Res Function(_$AddressModelImpl) then) =
      __$$AddressModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'address_name') String addressName,
      @JsonKey(name: 'address_1_depth') String address1Depth,
      @JsonKey(name: 'address_2_depth') String address2Depth,
      @JsonKey(name: 'address_3_depth') String address3Depth,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude});
}

/// @nodoc
class __$$AddressModelImplCopyWithImpl<$Res>
    extends _$AddressModelCopyWithImpl<$Res, _$AddressModelImpl>
    implements _$$AddressModelImplCopyWith<$Res> {
  __$$AddressModelImplCopyWithImpl(
      _$AddressModelImpl _value, $Res Function(_$AddressModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressName = null,
    Object? address1Depth = null,
    Object? address2Depth = null,
    Object? address3Depth = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$AddressModelImpl(
      addressName: null == addressName
          ? _value.addressName
          : addressName // ignore: cast_nullable_to_non_nullable
              as String,
      address1Depth: null == address1Depth
          ? _value.address1Depth
          : address1Depth // ignore: cast_nullable_to_non_nullable
              as String,
      address2Depth: null == address2Depth
          ? _value.address2Depth
          : address2Depth // ignore: cast_nullable_to_non_nullable
              as String,
      address3Depth: null == address3Depth
          ? _value.address3Depth
          : address3Depth // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressModelImpl implements _AddressModel {
  _$AddressModelImpl(
      {@JsonKey(name: 'address_name') required this.addressName,
      @JsonKey(name: 'address_1_depth') required this.address1Depth,
      @JsonKey(name: 'address_2_depth') required this.address2Depth,
      @JsonKey(name: 'address_3_depth') required this.address3Depth,
      @JsonKey(name: 'latitude') required this.latitude,
      @JsonKey(name: 'longitude') required this.longitude});

  factory _$AddressModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressModelImplFromJson(json);

  @override
  @JsonKey(name: 'address_name')
  final String addressName;
// 전체 주소
  @override
  @JsonKey(name: 'address_1_depth')
  final String address1Depth;
// 시도
  @override
  @JsonKey(name: 'address_2_depth')
  final String address2Depth;
// 시군구
  @override
  @JsonKey(name: 'address_3_depth')
  final String address3Depth;
// 읍면동
  @override
  @JsonKey(name: 'latitude')
  final double latitude;
// 위도 Y
  @override
  @JsonKey(name: 'longitude')
  final double longitude;

  @override
  String toString() {
    return 'AddressModel(addressName: $addressName, address1Depth: $address1Depth, address2Depth: $address2Depth, address3Depth: $address3Depth, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressModelImpl &&
            (identical(other.addressName, addressName) ||
                other.addressName == addressName) &&
            (identical(other.address1Depth, address1Depth) ||
                other.address1Depth == address1Depth) &&
            (identical(other.address2Depth, address2Depth) ||
                other.address2Depth == address2Depth) &&
            (identical(other.address3Depth, address3Depth) ||
                other.address3Depth == address3Depth) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, addressName, address1Depth,
      address2Depth, address3Depth, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressModelImplCopyWith<_$AddressModelImpl> get copyWith =>
      __$$AddressModelImplCopyWithImpl<_$AddressModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressModelImplToJson(
      this,
    );
  }
}

abstract class _AddressModel implements AddressModel {
  factory _AddressModel(
          {@JsonKey(name: 'address_name') required final String addressName,
          @JsonKey(name: 'address_1_depth') required final String address1Depth,
          @JsonKey(name: 'address_2_depth') required final String address2Depth,
          @JsonKey(name: 'address_3_depth') required final String address3Depth,
          @JsonKey(name: 'latitude') required final double latitude,
          @JsonKey(name: 'longitude') required final double longitude}) =
      _$AddressModelImpl;

  factory _AddressModel.fromJson(Map<String, dynamic> json) =
      _$AddressModelImpl.fromJson;

  @override
  @JsonKey(name: 'address_name')
  String get addressName;
  @override // 전체 주소
  @JsonKey(name: 'address_1_depth')
  String get address1Depth;
  @override // 시도
  @JsonKey(name: 'address_2_depth')
  String get address2Depth;
  @override // 시군구
  @JsonKey(name: 'address_3_depth')
  String get address3Depth;
  @override // 읍면동
  @JsonKey(name: 'latitude')
  double get latitude;
  @override // 위도 Y
  @JsonKey(name: 'longitude')
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$AddressModelImplCopyWith<_$AddressModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
