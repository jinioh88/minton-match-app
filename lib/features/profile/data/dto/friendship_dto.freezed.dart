// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friendship_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FollowingUserDto {

 int get userId; String? get nickname; String? get profileImg; String? get level; String? get followedAt;
/// Create a copy of FollowingUserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FollowingUserDtoCopyWith<FollowingUserDto> get copyWith => _$FollowingUserDtoCopyWithImpl<FollowingUserDto>(this as FollowingUserDto, _$identity);

  /// Serializes this FollowingUserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FollowingUserDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImg, profileImg) || other.profileImg == profileImg)&&(identical(other.level, level) || other.level == level)&&(identical(other.followedAt, followedAt) || other.followedAt == followedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,nickname,profileImg,level,followedAt);

@override
String toString() {
  return 'FollowingUserDto(userId: $userId, nickname: $nickname, profileImg: $profileImg, level: $level, followedAt: $followedAt)';
}


}

/// @nodoc
abstract mixin class $FollowingUserDtoCopyWith<$Res>  {
  factory $FollowingUserDtoCopyWith(FollowingUserDto value, $Res Function(FollowingUserDto) _then) = _$FollowingUserDtoCopyWithImpl;
@useResult
$Res call({
 int userId, String? nickname, String? profileImg, String? level, String? followedAt
});




}
/// @nodoc
class _$FollowingUserDtoCopyWithImpl<$Res>
    implements $FollowingUserDtoCopyWith<$Res> {
  _$FollowingUserDtoCopyWithImpl(this._self, this._then);

  final FollowingUserDto _self;
  final $Res Function(FollowingUserDto) _then;

/// Create a copy of FollowingUserDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? nickname = freezed,Object? profileImg = freezed,Object? level = freezed,Object? followedAt = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,profileImg: freezed == profileImg ? _self.profileImg : profileImg // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String?,followedAt: freezed == followedAt ? _self.followedAt : followedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FollowingUserDto].
extension FollowingUserDtoPatterns on FollowingUserDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FollowingUserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FollowingUserDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FollowingUserDto value)  $default,){
final _that = this;
switch (_that) {
case _FollowingUserDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FollowingUserDto value)?  $default,){
final _that = this;
switch (_that) {
case _FollowingUserDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  String? nickname,  String? profileImg,  String? level,  String? followedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FollowingUserDto() when $default != null:
return $default(_that.userId,_that.nickname,_that.profileImg,_that.level,_that.followedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  String? nickname,  String? profileImg,  String? level,  String? followedAt)  $default,) {final _that = this;
switch (_that) {
case _FollowingUserDto():
return $default(_that.userId,_that.nickname,_that.profileImg,_that.level,_that.followedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  String? nickname,  String? profileImg,  String? level,  String? followedAt)?  $default,) {final _that = this;
switch (_that) {
case _FollowingUserDto() when $default != null:
return $default(_that.userId,_that.nickname,_that.profileImg,_that.level,_that.followedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FollowingUserDto implements FollowingUserDto {
  const _FollowingUserDto({required this.userId, this.nickname, this.profileImg, this.level, this.followedAt});
  factory _FollowingUserDto.fromJson(Map<String, dynamic> json) => _$FollowingUserDtoFromJson(json);

@override final  int userId;
@override final  String? nickname;
@override final  String? profileImg;
@override final  String? level;
@override final  String? followedAt;

/// Create a copy of FollowingUserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FollowingUserDtoCopyWith<_FollowingUserDto> get copyWith => __$FollowingUserDtoCopyWithImpl<_FollowingUserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FollowingUserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FollowingUserDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImg, profileImg) || other.profileImg == profileImg)&&(identical(other.level, level) || other.level == level)&&(identical(other.followedAt, followedAt) || other.followedAt == followedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,nickname,profileImg,level,followedAt);

@override
String toString() {
  return 'FollowingUserDto(userId: $userId, nickname: $nickname, profileImg: $profileImg, level: $level, followedAt: $followedAt)';
}


}

/// @nodoc
abstract mixin class _$FollowingUserDtoCopyWith<$Res> implements $FollowingUserDtoCopyWith<$Res> {
  factory _$FollowingUserDtoCopyWith(_FollowingUserDto value, $Res Function(_FollowingUserDto) _then) = __$FollowingUserDtoCopyWithImpl;
@override @useResult
$Res call({
 int userId, String? nickname, String? profileImg, String? level, String? followedAt
});




}
/// @nodoc
class __$FollowingUserDtoCopyWithImpl<$Res>
    implements _$FollowingUserDtoCopyWith<$Res> {
  __$FollowingUserDtoCopyWithImpl(this._self, this._then);

  final _FollowingUserDto _self;
  final $Res Function(_FollowingUserDto) _then;

/// Create a copy of FollowingUserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? nickname = freezed,Object? profileImg = freezed,Object? level = freezed,Object? followedAt = freezed,}) {
  return _then(_FollowingUserDto(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,profileImg: freezed == profileImg ? _self.profileImg : profileImg // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String?,followedAt: freezed == followedAt ? _self.followedAt : followedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FollowingUserEnvelope {

 bool get success; FollowingUserDto? get data; String? get message; String? get code;
/// Create a copy of FollowingUserEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FollowingUserEnvelopeCopyWith<FollowingUserEnvelope> get copyWith => _$FollowingUserEnvelopeCopyWithImpl<FollowingUserEnvelope>(this as FollowingUserEnvelope, _$identity);

  /// Serializes this FollowingUserEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FollowingUserEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'FollowingUserEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $FollowingUserEnvelopeCopyWith<$Res>  {
  factory $FollowingUserEnvelopeCopyWith(FollowingUserEnvelope value, $Res Function(FollowingUserEnvelope) _then) = _$FollowingUserEnvelopeCopyWithImpl;
@useResult
$Res call({
 bool success, FollowingUserDto? data, String? message, String? code
});


$FollowingUserDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$FollowingUserEnvelopeCopyWithImpl<$Res>
    implements $FollowingUserEnvelopeCopyWith<$Res> {
  _$FollowingUserEnvelopeCopyWithImpl(this._self, this._then);

  final FollowingUserEnvelope _self;
  final $Res Function(FollowingUserEnvelope) _then;

/// Create a copy of FollowingUserEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FollowingUserDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of FollowingUserEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FollowingUserDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $FollowingUserDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [FollowingUserEnvelope].
extension FollowingUserEnvelopePatterns on FollowingUserEnvelope {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FollowingUserEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FollowingUserEnvelope() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FollowingUserEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _FollowingUserEnvelope():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FollowingUserEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _FollowingUserEnvelope() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  FollowingUserDto? data,  String? message,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FollowingUserEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  FollowingUserDto? data,  String? message,  String? code)  $default,) {final _that = this;
switch (_that) {
case _FollowingUserEnvelope():
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  FollowingUserDto? data,  String? message,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _FollowingUserEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FollowingUserEnvelope implements FollowingUserEnvelope {
  const _FollowingUserEnvelope({required this.success, this.data, this.message, this.code});
  factory _FollowingUserEnvelope.fromJson(Map<String, dynamic> json) => _$FollowingUserEnvelopeFromJson(json);

@override final  bool success;
@override final  FollowingUserDto? data;
@override final  String? message;
@override final  String? code;

/// Create a copy of FollowingUserEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FollowingUserEnvelopeCopyWith<_FollowingUserEnvelope> get copyWith => __$FollowingUserEnvelopeCopyWithImpl<_FollowingUserEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FollowingUserEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FollowingUserEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'FollowingUserEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$FollowingUserEnvelopeCopyWith<$Res> implements $FollowingUserEnvelopeCopyWith<$Res> {
  factory _$FollowingUserEnvelopeCopyWith(_FollowingUserEnvelope value, $Res Function(_FollowingUserEnvelope) _then) = __$FollowingUserEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 bool success, FollowingUserDto? data, String? message, String? code
});


@override $FollowingUserDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$FollowingUserEnvelopeCopyWithImpl<$Res>
    implements _$FollowingUserEnvelopeCopyWith<$Res> {
  __$FollowingUserEnvelopeCopyWithImpl(this._self, this._then);

  final _FollowingUserEnvelope _self;
  final $Res Function(_FollowingUserEnvelope) _then;

/// Create a copy of FollowingUserEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_FollowingUserEnvelope(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FollowingUserDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of FollowingUserEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FollowingUserDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $FollowingUserDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$FollowingUsersEnvelope {

 bool get success; List<FollowingUserDto> get data; String? get message; String? get code;
/// Create a copy of FollowingUsersEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FollowingUsersEnvelopeCopyWith<FollowingUsersEnvelope> get copyWith => _$FollowingUsersEnvelopeCopyWithImpl<FollowingUsersEnvelope>(this as FollowingUsersEnvelope, _$identity);

  /// Serializes this FollowingUsersEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FollowingUsersEnvelope&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data),message,code);

@override
String toString() {
  return 'FollowingUsersEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $FollowingUsersEnvelopeCopyWith<$Res>  {
  factory $FollowingUsersEnvelopeCopyWith(FollowingUsersEnvelope value, $Res Function(FollowingUsersEnvelope) _then) = _$FollowingUsersEnvelopeCopyWithImpl;
@useResult
$Res call({
 bool success, List<FollowingUserDto> data, String? message, String? code
});




}
/// @nodoc
class _$FollowingUsersEnvelopeCopyWithImpl<$Res>
    implements $FollowingUsersEnvelopeCopyWith<$Res> {
  _$FollowingUsersEnvelopeCopyWithImpl(this._self, this._then);

  final FollowingUsersEnvelope _self;
  final $Res Function(FollowingUsersEnvelope) _then;

/// Create a copy of FollowingUsersEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? message = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<FollowingUserDto>,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FollowingUsersEnvelope].
extension FollowingUsersEnvelopePatterns on FollowingUsersEnvelope {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FollowingUsersEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FollowingUsersEnvelope() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FollowingUsersEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _FollowingUsersEnvelope():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FollowingUsersEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _FollowingUsersEnvelope() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<FollowingUserDto> data,  String? message,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FollowingUsersEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<FollowingUserDto> data,  String? message,  String? code)  $default,) {final _that = this;
switch (_that) {
case _FollowingUsersEnvelope():
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<FollowingUserDto> data,  String? message,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _FollowingUsersEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FollowingUsersEnvelope implements FollowingUsersEnvelope {
  const _FollowingUsersEnvelope({required this.success, final  List<FollowingUserDto> data = const <FollowingUserDto>[], this.message, this.code}): _data = data;
  factory _FollowingUsersEnvelope.fromJson(Map<String, dynamic> json) => _$FollowingUsersEnvelopeFromJson(json);

@override final  bool success;
 final  List<FollowingUserDto> _data;
@override@JsonKey() List<FollowingUserDto> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  String? message;
@override final  String? code;

/// Create a copy of FollowingUsersEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FollowingUsersEnvelopeCopyWith<_FollowingUsersEnvelope> get copyWith => __$FollowingUsersEnvelopeCopyWithImpl<_FollowingUsersEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FollowingUsersEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FollowingUsersEnvelope&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data),message,code);

@override
String toString() {
  return 'FollowingUsersEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$FollowingUsersEnvelopeCopyWith<$Res> implements $FollowingUsersEnvelopeCopyWith<$Res> {
  factory _$FollowingUsersEnvelopeCopyWith(_FollowingUsersEnvelope value, $Res Function(_FollowingUsersEnvelope) _then) = __$FollowingUsersEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<FollowingUserDto> data, String? message, String? code
});




}
/// @nodoc
class __$FollowingUsersEnvelopeCopyWithImpl<$Res>
    implements _$FollowingUsersEnvelopeCopyWith<$Res> {
  __$FollowingUsersEnvelopeCopyWithImpl(this._self, this._then);

  final _FollowingUsersEnvelope _self;
  final $Res Function(_FollowingUsersEnvelope) _then;

/// Create a copy of FollowingUsersEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? message = freezed,Object? code = freezed,}) {
  return _then(_FollowingUsersEnvelope(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<FollowingUserDto>,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FollowRequestDto {

 int get followingUserId;
/// Create a copy of FollowRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FollowRequestDtoCopyWith<FollowRequestDto> get copyWith => _$FollowRequestDtoCopyWithImpl<FollowRequestDto>(this as FollowRequestDto, _$identity);

  /// Serializes this FollowRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FollowRequestDto&&(identical(other.followingUserId, followingUserId) || other.followingUserId == followingUserId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,followingUserId);

@override
String toString() {
  return 'FollowRequestDto(followingUserId: $followingUserId)';
}


}

/// @nodoc
abstract mixin class $FollowRequestDtoCopyWith<$Res>  {
  factory $FollowRequestDtoCopyWith(FollowRequestDto value, $Res Function(FollowRequestDto) _then) = _$FollowRequestDtoCopyWithImpl;
@useResult
$Res call({
 int followingUserId
});




}
/// @nodoc
class _$FollowRequestDtoCopyWithImpl<$Res>
    implements $FollowRequestDtoCopyWith<$Res> {
  _$FollowRequestDtoCopyWithImpl(this._self, this._then);

  final FollowRequestDto _self;
  final $Res Function(FollowRequestDto) _then;

/// Create a copy of FollowRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? followingUserId = null,}) {
  return _then(_self.copyWith(
followingUserId: null == followingUserId ? _self.followingUserId : followingUserId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FollowRequestDto].
extension FollowRequestDtoPatterns on FollowRequestDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FollowRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FollowRequestDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FollowRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _FollowRequestDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FollowRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _FollowRequestDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int followingUserId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FollowRequestDto() when $default != null:
return $default(_that.followingUserId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int followingUserId)  $default,) {final _that = this;
switch (_that) {
case _FollowRequestDto():
return $default(_that.followingUserId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int followingUserId)?  $default,) {final _that = this;
switch (_that) {
case _FollowRequestDto() when $default != null:
return $default(_that.followingUserId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FollowRequestDto implements FollowRequestDto {
  const _FollowRequestDto({required this.followingUserId});
  factory _FollowRequestDto.fromJson(Map<String, dynamic> json) => _$FollowRequestDtoFromJson(json);

@override final  int followingUserId;

/// Create a copy of FollowRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FollowRequestDtoCopyWith<_FollowRequestDto> get copyWith => __$FollowRequestDtoCopyWithImpl<_FollowRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FollowRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FollowRequestDto&&(identical(other.followingUserId, followingUserId) || other.followingUserId == followingUserId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,followingUserId);

@override
String toString() {
  return 'FollowRequestDto(followingUserId: $followingUserId)';
}


}

/// @nodoc
abstract mixin class _$FollowRequestDtoCopyWith<$Res> implements $FollowRequestDtoCopyWith<$Res> {
  factory _$FollowRequestDtoCopyWith(_FollowRequestDto value, $Res Function(_FollowRequestDto) _then) = __$FollowRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 int followingUserId
});




}
/// @nodoc
class __$FollowRequestDtoCopyWithImpl<$Res>
    implements _$FollowRequestDtoCopyWith<$Res> {
  __$FollowRequestDtoCopyWithImpl(this._self, this._then);

  final _FollowRequestDto _self;
  final $Res Function(_FollowRequestDto) _then;

/// Create a copy of FollowRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? followingUserId = null,}) {
  return _then(_FollowRequestDto(
followingUserId: null == followingUserId ? _self.followingUserId : followingUserId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
