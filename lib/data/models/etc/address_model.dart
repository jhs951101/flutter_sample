import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

@freezed
class AddressModel with _$AddressModel {
  factory AddressModel({
    @JsonKey(name: 'address_name') required String addressName, // 전체 주소
    @JsonKey(name: 'address_1_depth') required String address1Depth, // 시도
    @JsonKey(name: 'address_2_depth') required String address2Depth, // 시군구
    @JsonKey(name: 'address_3_depth') required String address3Depth, // 읍면동
    @JsonKey(name: 'latitude') required double latitude, // 위도 Y
    @JsonKey(name: 'longitude') required double longitude, // 경도 X
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  factory AddressModel.gangNamStation() {
    return AddressModel(
      addressName: '강남역',
      address1Depth: '서울특별시',
      address2Depth: '강남구',
      address3Depth: '역삼동',
      latitude: 37.4979,
      longitude: 127.0276,
    );
  }
}
