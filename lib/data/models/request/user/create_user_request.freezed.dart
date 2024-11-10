// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateUserRequest _$CreateUserRequestFromJson(Map<String, dynamic> json) {
  return _CreateUserRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateUserRequest {
  String get id => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get birthDay => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateUserRequestCopyWith<CreateUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserRequestCopyWith<$Res> {
  factory $CreateUserRequestCopyWith(
          CreateUserRequest value, $Res Function(CreateUserRequest) then) =
      _$CreateUserRequestCopyWithImpl<$Res, CreateUserRequest>;
  @useResult
  $Res call(
      {String id,
      String password,
      String name,
      @DateTimeConverter() DateTime birthDay,
      String phone,
      String email});
}

/// @nodoc
class _$CreateUserRequestCopyWithImpl<$Res, $Val extends CreateUserRequest>
    implements $CreateUserRequestCopyWith<$Res> {
  _$CreateUserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? password = null,
    Object? name = null,
    Object? birthDay = null,
    Object? phone = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthDay: null == birthDay
          ? _value.birthDay
          : birthDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateUserRequestImplCopyWith<$Res>
    implements $CreateUserRequestCopyWith<$Res> {
  factory _$$CreateUserRequestImplCopyWith(_$CreateUserRequestImpl value,
          $Res Function(_$CreateUserRequestImpl) then) =
      __$$CreateUserRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String password,
      String name,
      @DateTimeConverter() DateTime birthDay,
      String phone,
      String email});
}

/// @nodoc
class __$$CreateUserRequestImplCopyWithImpl<$Res>
    extends _$CreateUserRequestCopyWithImpl<$Res, _$CreateUserRequestImpl>
    implements _$$CreateUserRequestImplCopyWith<$Res> {
  __$$CreateUserRequestImplCopyWithImpl(_$CreateUserRequestImpl _value,
      $Res Function(_$CreateUserRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? password = null,
    Object? name = null,
    Object? birthDay = null,
    Object? phone = null,
    Object? email = null,
  }) {
    return _then(_$CreateUserRequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthDay: null == birthDay
          ? _value.birthDay
          : birthDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateUserRequestImpl implements _CreateUserRequest {
  _$CreateUserRequestImpl(
      {required this.id,
      required this.password,
      required this.name,
      @DateTimeConverter() required this.birthDay,
      required this.phone,
      required this.email});

  factory _$CreateUserRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateUserRequestImplFromJson(json);

  @override
  final String id;
  @override
  final String password;
  @override
  final String name;
  @override
  @DateTimeConverter()
  final DateTime birthDay;
  @override
  final String phone;
  @override
  final String email;

  @override
  String toString() {
    return 'CreateUserRequest(id: $id, password: $password, name: $name, birthDay: $birthDay, phone: $phone, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthDay, birthDay) ||
                other.birthDay == birthDay) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, password, name, birthDay, phone, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserRequestImplCopyWith<_$CreateUserRequestImpl> get copyWith =>
      __$$CreateUserRequestImplCopyWithImpl<_$CreateUserRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateUserRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateUserRequest implements CreateUserRequest {
  factory _CreateUserRequest(
      {required final String id,
      required final String password,
      required final String name,
      @DateTimeConverter() required final DateTime birthDay,
      required final String phone,
      required final String email}) = _$CreateUserRequestImpl;

  factory _CreateUserRequest.fromJson(Map<String, dynamic> json) =
      _$CreateUserRequestImpl.fromJson;

  @override
  String get id;
  @override
  String get password;
  @override
  String get name;
  @override
  @DateTimeConverter()
  DateTime get birthDay;
  @override
  String get phone;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$CreateUserRequestImplCopyWith<_$CreateUserRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
