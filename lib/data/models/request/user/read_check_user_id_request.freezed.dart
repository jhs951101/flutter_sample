// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_check_user_id_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadCheckUserIdRequest _$ReadCheckUserIdRequestFromJson(
    Map<String, dynamic> json) {
  return _ReadCheckUserIdRequest.fromJson(json);
}

/// @nodoc
mixin _$ReadCheckUserIdRequest {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadCheckUserIdRequestCopyWith<ReadCheckUserIdRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadCheckUserIdRequestCopyWith<$Res> {
  factory $ReadCheckUserIdRequestCopyWith(ReadCheckUserIdRequest value,
          $Res Function(ReadCheckUserIdRequest) then) =
      _$ReadCheckUserIdRequestCopyWithImpl<$Res, ReadCheckUserIdRequest>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$ReadCheckUserIdRequestCopyWithImpl<$Res,
        $Val extends ReadCheckUserIdRequest>
    implements $ReadCheckUserIdRequestCopyWith<$Res> {
  _$ReadCheckUserIdRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadCheckUserIdRequestImplCopyWith<$Res>
    implements $ReadCheckUserIdRequestCopyWith<$Res> {
  factory _$$ReadCheckUserIdRequestImplCopyWith(
          _$ReadCheckUserIdRequestImpl value,
          $Res Function(_$ReadCheckUserIdRequestImpl) then) =
      __$$ReadCheckUserIdRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$ReadCheckUserIdRequestImplCopyWithImpl<$Res>
    extends _$ReadCheckUserIdRequestCopyWithImpl<$Res,
        _$ReadCheckUserIdRequestImpl>
    implements _$$ReadCheckUserIdRequestImplCopyWith<$Res> {
  __$$ReadCheckUserIdRequestImplCopyWithImpl(
      _$ReadCheckUserIdRequestImpl _value,
      $Res Function(_$ReadCheckUserIdRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ReadCheckUserIdRequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadCheckUserIdRequestImpl implements _ReadCheckUserIdRequest {
  _$ReadCheckUserIdRequestImpl({required this.id});

  factory _$ReadCheckUserIdRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadCheckUserIdRequestImplFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'ReadCheckUserIdRequest(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadCheckUserIdRequestImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadCheckUserIdRequestImplCopyWith<_$ReadCheckUserIdRequestImpl>
      get copyWith => __$$ReadCheckUserIdRequestImplCopyWithImpl<
          _$ReadCheckUserIdRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadCheckUserIdRequestImplToJson(
      this,
    );
  }
}

abstract class _ReadCheckUserIdRequest implements ReadCheckUserIdRequest {
  factory _ReadCheckUserIdRequest({required final String id}) =
      _$ReadCheckUserIdRequestImpl;

  factory _ReadCheckUserIdRequest.fromJson(Map<String, dynamic> json) =
      _$ReadCheckUserIdRequestImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$ReadCheckUserIdRequestImplCopyWith<_$ReadCheckUserIdRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
