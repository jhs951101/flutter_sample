// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadUserRequest _$ReadUserRequestFromJson(Map<String, dynamic> json) {
  return _ReadUserRequest.fromJson(json);
}

/// @nodoc
mixin _$ReadUserRequest {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get typeName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadUserRequestCopyWith<ReadUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadUserRequestCopyWith<$Res> {
  factory $ReadUserRequestCopyWith(
          ReadUserRequest value, $Res Function(ReadUserRequest) then) =
      _$ReadUserRequestCopyWithImpl<$Res, ReadUserRequest>;
  @useResult
  $Res call({String id, String name, String typeName});
}

/// @nodoc
class _$ReadUserRequestCopyWithImpl<$Res, $Val extends ReadUserRequest>
    implements $ReadUserRequestCopyWith<$Res> {
  _$ReadUserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? typeName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadUserRequestImplCopyWith<$Res>
    implements $ReadUserRequestCopyWith<$Res> {
  factory _$$ReadUserRequestImplCopyWith(_$ReadUserRequestImpl value,
          $Res Function(_$ReadUserRequestImpl) then) =
      __$$ReadUserRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String typeName});
}

/// @nodoc
class __$$ReadUserRequestImplCopyWithImpl<$Res>
    extends _$ReadUserRequestCopyWithImpl<$Res, _$ReadUserRequestImpl>
    implements _$$ReadUserRequestImplCopyWith<$Res> {
  __$$ReadUserRequestImplCopyWithImpl(
      _$ReadUserRequestImpl _value, $Res Function(_$ReadUserRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? typeName = null,
  }) {
    return _then(_$ReadUserRequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadUserRequestImpl implements _ReadUserRequest {
  _$ReadUserRequestImpl(
      {required this.id, required this.name, required this.typeName});

  factory _$ReadUserRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadUserRequestImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String typeName;

  @override
  String toString() {
    return 'ReadUserRequest(id: $id, name: $name, typeName: $typeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadUserRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, typeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadUserRequestImplCopyWith<_$ReadUserRequestImpl> get copyWith =>
      __$$ReadUserRequestImplCopyWithImpl<_$ReadUserRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadUserRequestImplToJson(
      this,
    );
  }
}

abstract class _ReadUserRequest implements ReadUserRequest {
  factory _ReadUserRequest(
      {required final String id,
      required final String name,
      required final String typeName}) = _$ReadUserRequestImpl;

  factory _ReadUserRequest.fromJson(Map<String, dynamic> json) =
      _$ReadUserRequestImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get typeName;
  @override
  @JsonKey(ignore: true)
  _$$ReadUserRequestImplCopyWith<_$ReadUserRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
