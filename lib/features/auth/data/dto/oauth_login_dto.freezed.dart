// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oauth_login_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OAuthLoginRequestDto {

 String get provider;@JsonKey(name: 'socialAccessToken') String? get socialAccessToken;@JsonKey(name: 'authorizationCode') String? get authorizationCode;@JsonKey(name: 'redirectUri') String? get redirectUri;
/// Create a copy of OAuthLoginRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OAuthLoginRequestDtoCopyWith<OAuthLoginRequestDto> get copyWith => _$OAuthLoginRequestDtoCopyWithImpl<OAuthLoginRequestDto>(this as OAuthLoginRequestDto, _$identity);

  /// Serializes this OAuthLoginRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OAuthLoginRequestDto&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.socialAccessToken, socialAccessToken) || other.socialAccessToken == socialAccessToken)&&(identical(other.authorizationCode, authorizationCode) || other.authorizationCode == authorizationCode)&&(identical(other.redirectUri, redirectUri) || other.redirectUri == redirectUri));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,provider,socialAccessToken,authorizationCode,redirectUri);

@override
String toString() {
  return 'OAuthLoginRequestDto(provider: $provider, socialAccessToken: $socialAccessToken, authorizationCode: $authorizationCode, redirectUri: $redirectUri)';
}


}

/// @nodoc
abstract mixin class $OAuthLoginRequestDtoCopyWith<$Res>  {
  factory $OAuthLoginRequestDtoCopyWith(OAuthLoginRequestDto value, $Res Function(OAuthLoginRequestDto) _then) = _$OAuthLoginRequestDtoCopyWithImpl;
@useResult
$Res call({
 String provider,@JsonKey(name: 'socialAccessToken') String? socialAccessToken,@JsonKey(name: 'authorizationCode') String? authorizationCode,@JsonKey(name: 'redirectUri') String? redirectUri
});




}
/// @nodoc
class _$OAuthLoginRequestDtoCopyWithImpl<$Res>
    implements $OAuthLoginRequestDtoCopyWith<$Res> {
  _$OAuthLoginRequestDtoCopyWithImpl(this._self, this._then);

  final OAuthLoginRequestDto _self;
  final $Res Function(OAuthLoginRequestDto) _then;

/// Create a copy of OAuthLoginRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? provider = null,Object? socialAccessToken = freezed,Object? authorizationCode = freezed,Object? redirectUri = freezed,}) {
  return _then(_self.copyWith(
provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,socialAccessToken: freezed == socialAccessToken ? _self.socialAccessToken : socialAccessToken // ignore: cast_nullable_to_non_nullable
as String?,authorizationCode: freezed == authorizationCode ? _self.authorizationCode : authorizationCode // ignore: cast_nullable_to_non_nullable
as String?,redirectUri: freezed == redirectUri ? _self.redirectUri : redirectUri // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OAuthLoginRequestDto].
extension OAuthLoginRequestDtoPatterns on OAuthLoginRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OAuthLoginRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OAuthLoginRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OAuthLoginRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _OAuthLoginRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OAuthLoginRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _OAuthLoginRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String provider, @JsonKey(name: 'socialAccessToken')  String? socialAccessToken, @JsonKey(name: 'authorizationCode')  String? authorizationCode, @JsonKey(name: 'redirectUri')  String? redirectUri)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OAuthLoginRequestDto() when $default != null:
return $default(_that.provider,_that.socialAccessToken,_that.authorizationCode,_that.redirectUri);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String provider, @JsonKey(name: 'socialAccessToken')  String? socialAccessToken, @JsonKey(name: 'authorizationCode')  String? authorizationCode, @JsonKey(name: 'redirectUri')  String? redirectUri)  $default,) {final _that = this;
switch (_that) {
case _OAuthLoginRequestDto():
return $default(_that.provider,_that.socialAccessToken,_that.authorizationCode,_that.redirectUri);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String provider, @JsonKey(name: 'socialAccessToken')  String? socialAccessToken, @JsonKey(name: 'authorizationCode')  String? authorizationCode, @JsonKey(name: 'redirectUri')  String? redirectUri)?  $default,) {final _that = this;
switch (_that) {
case _OAuthLoginRequestDto() when $default != null:
return $default(_that.provider,_that.socialAccessToken,_that.authorizationCode,_that.redirectUri);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OAuthLoginRequestDto implements OAuthLoginRequestDto {
  const _OAuthLoginRequestDto({required this.provider, @JsonKey(name: 'socialAccessToken') this.socialAccessToken, @JsonKey(name: 'authorizationCode') this.authorizationCode, @JsonKey(name: 'redirectUri') this.redirectUri});
  factory _OAuthLoginRequestDto.fromJson(Map<String, dynamic> json) => _$OAuthLoginRequestDtoFromJson(json);

@override final  String provider;
@override@JsonKey(name: 'socialAccessToken') final  String? socialAccessToken;
@override@JsonKey(name: 'authorizationCode') final  String? authorizationCode;
@override@JsonKey(name: 'redirectUri') final  String? redirectUri;

/// Create a copy of OAuthLoginRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OAuthLoginRequestDtoCopyWith<_OAuthLoginRequestDto> get copyWith => __$OAuthLoginRequestDtoCopyWithImpl<_OAuthLoginRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OAuthLoginRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OAuthLoginRequestDto&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.socialAccessToken, socialAccessToken) || other.socialAccessToken == socialAccessToken)&&(identical(other.authorizationCode, authorizationCode) || other.authorizationCode == authorizationCode)&&(identical(other.redirectUri, redirectUri) || other.redirectUri == redirectUri));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,provider,socialAccessToken,authorizationCode,redirectUri);

@override
String toString() {
  return 'OAuthLoginRequestDto(provider: $provider, socialAccessToken: $socialAccessToken, authorizationCode: $authorizationCode, redirectUri: $redirectUri)';
}


}

/// @nodoc
abstract mixin class _$OAuthLoginRequestDtoCopyWith<$Res> implements $OAuthLoginRequestDtoCopyWith<$Res> {
  factory _$OAuthLoginRequestDtoCopyWith(_OAuthLoginRequestDto value, $Res Function(_OAuthLoginRequestDto) _then) = __$OAuthLoginRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String provider,@JsonKey(name: 'socialAccessToken') String? socialAccessToken,@JsonKey(name: 'authorizationCode') String? authorizationCode,@JsonKey(name: 'redirectUri') String? redirectUri
});




}
/// @nodoc
class __$OAuthLoginRequestDtoCopyWithImpl<$Res>
    implements _$OAuthLoginRequestDtoCopyWith<$Res> {
  __$OAuthLoginRequestDtoCopyWithImpl(this._self, this._then);

  final _OAuthLoginRequestDto _self;
  final $Res Function(_OAuthLoginRequestDto) _then;

/// Create a copy of OAuthLoginRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? provider = null,Object? socialAccessToken = freezed,Object? authorizationCode = freezed,Object? redirectUri = freezed,}) {
  return _then(_OAuthLoginRequestDto(
provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,socialAccessToken: freezed == socialAccessToken ? _self.socialAccessToken : socialAccessToken // ignore: cast_nullable_to_non_nullable
as String?,authorizationCode: freezed == authorizationCode ? _self.authorizationCode : authorizationCode // ignore: cast_nullable_to_non_nullable
as String?,redirectUri: freezed == redirectUri ? _self.redirectUri : redirectUri // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$OAuthUserDto {

 int get id;/// 카카오 등에서 동의 전·미제공 시 null일 수 있음.
 String? get email; String? get nickname; String? get profileImg;@JsonKey(name: 'profileComplete') bool get profileComplete; String? get joinedAt;
/// Create a copy of OAuthUserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OAuthUserDtoCopyWith<OAuthUserDto> get copyWith => _$OAuthUserDtoCopyWithImpl<OAuthUserDto>(this as OAuthUserDto, _$identity);

  /// Serializes this OAuthUserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OAuthUserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImg, profileImg) || other.profileImg == profileImg)&&(identical(other.profileComplete, profileComplete) || other.profileComplete == profileComplete)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,nickname,profileImg,profileComplete,joinedAt);

@override
String toString() {
  return 'OAuthUserDto(id: $id, email: $email, nickname: $nickname, profileImg: $profileImg, profileComplete: $profileComplete, joinedAt: $joinedAt)';
}


}

/// @nodoc
abstract mixin class $OAuthUserDtoCopyWith<$Res>  {
  factory $OAuthUserDtoCopyWith(OAuthUserDto value, $Res Function(OAuthUserDto) _then) = _$OAuthUserDtoCopyWithImpl;
@useResult
$Res call({
 int id, String? email, String? nickname, String? profileImg,@JsonKey(name: 'profileComplete') bool profileComplete, String? joinedAt
});




}
/// @nodoc
class _$OAuthUserDtoCopyWithImpl<$Res>
    implements $OAuthUserDtoCopyWith<$Res> {
  _$OAuthUserDtoCopyWithImpl(this._self, this._then);

  final OAuthUserDto _self;
  final $Res Function(OAuthUserDto) _then;

/// Create a copy of OAuthUserDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = freezed,Object? nickname = freezed,Object? profileImg = freezed,Object? profileComplete = null,Object? joinedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,profileImg: freezed == profileImg ? _self.profileImg : profileImg // ignore: cast_nullable_to_non_nullable
as String?,profileComplete: null == profileComplete ? _self.profileComplete : profileComplete // ignore: cast_nullable_to_non_nullable
as bool,joinedAt: freezed == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OAuthUserDto].
extension OAuthUserDtoPatterns on OAuthUserDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OAuthUserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OAuthUserDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OAuthUserDto value)  $default,){
final _that = this;
switch (_that) {
case _OAuthUserDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OAuthUserDto value)?  $default,){
final _that = this;
switch (_that) {
case _OAuthUserDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? email,  String? nickname,  String? profileImg, @JsonKey(name: 'profileComplete')  bool profileComplete,  String? joinedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OAuthUserDto() when $default != null:
return $default(_that.id,_that.email,_that.nickname,_that.profileImg,_that.profileComplete,_that.joinedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? email,  String? nickname,  String? profileImg, @JsonKey(name: 'profileComplete')  bool profileComplete,  String? joinedAt)  $default,) {final _that = this;
switch (_that) {
case _OAuthUserDto():
return $default(_that.id,_that.email,_that.nickname,_that.profileImg,_that.profileComplete,_that.joinedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? email,  String? nickname,  String? profileImg, @JsonKey(name: 'profileComplete')  bool profileComplete,  String? joinedAt)?  $default,) {final _that = this;
switch (_that) {
case _OAuthUserDto() when $default != null:
return $default(_that.id,_that.email,_that.nickname,_that.profileImg,_that.profileComplete,_that.joinedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OAuthUserDto implements OAuthUserDto {
  const _OAuthUserDto({required this.id, this.email, this.nickname, this.profileImg, @JsonKey(name: 'profileComplete') this.profileComplete = false, this.joinedAt});
  factory _OAuthUserDto.fromJson(Map<String, dynamic> json) => _$OAuthUserDtoFromJson(json);

@override final  int id;
/// 카카오 등에서 동의 전·미제공 시 null일 수 있음.
@override final  String? email;
@override final  String? nickname;
@override final  String? profileImg;
@override@JsonKey(name: 'profileComplete') final  bool profileComplete;
@override final  String? joinedAt;

/// Create a copy of OAuthUserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OAuthUserDtoCopyWith<_OAuthUserDto> get copyWith => __$OAuthUserDtoCopyWithImpl<_OAuthUserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OAuthUserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OAuthUserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImg, profileImg) || other.profileImg == profileImg)&&(identical(other.profileComplete, profileComplete) || other.profileComplete == profileComplete)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,nickname,profileImg,profileComplete,joinedAt);

@override
String toString() {
  return 'OAuthUserDto(id: $id, email: $email, nickname: $nickname, profileImg: $profileImg, profileComplete: $profileComplete, joinedAt: $joinedAt)';
}


}

/// @nodoc
abstract mixin class _$OAuthUserDtoCopyWith<$Res> implements $OAuthUserDtoCopyWith<$Res> {
  factory _$OAuthUserDtoCopyWith(_OAuthUserDto value, $Res Function(_OAuthUserDto) _then) = __$OAuthUserDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String? email, String? nickname, String? profileImg,@JsonKey(name: 'profileComplete') bool profileComplete, String? joinedAt
});




}
/// @nodoc
class __$OAuthUserDtoCopyWithImpl<$Res>
    implements _$OAuthUserDtoCopyWith<$Res> {
  __$OAuthUserDtoCopyWithImpl(this._self, this._then);

  final _OAuthUserDto _self;
  final $Res Function(_OAuthUserDto) _then;

/// Create a copy of OAuthUserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = freezed,Object? nickname = freezed,Object? profileImg = freezed,Object? profileComplete = null,Object? joinedAt = freezed,}) {
  return _then(_OAuthUserDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,profileImg: freezed == profileImg ? _self.profileImg : profileImg // ignore: cast_nullable_to_non_nullable
as String?,profileComplete: null == profileComplete ? _self.profileComplete : profileComplete // ignore: cast_nullable_to_non_nullable
as bool,joinedAt: freezed == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$OAuthLoginDataDto {

@JsonKey(readValue: _oauthLoginReadAccessToken) String get accessToken; OAuthUserDto get user;
/// Create a copy of OAuthLoginDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OAuthLoginDataDtoCopyWith<OAuthLoginDataDto> get copyWith => _$OAuthLoginDataDtoCopyWithImpl<OAuthLoginDataDto>(this as OAuthLoginDataDto, _$identity);

  /// Serializes this OAuthLoginDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OAuthLoginDataDto&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,user);

@override
String toString() {
  return 'OAuthLoginDataDto(accessToken: $accessToken, user: $user)';
}


}

/// @nodoc
abstract mixin class $OAuthLoginDataDtoCopyWith<$Res>  {
  factory $OAuthLoginDataDtoCopyWith(OAuthLoginDataDto value, $Res Function(OAuthLoginDataDto) _then) = _$OAuthLoginDataDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: _oauthLoginReadAccessToken) String accessToken, OAuthUserDto user
});


$OAuthUserDtoCopyWith<$Res> get user;

}
/// @nodoc
class _$OAuthLoginDataDtoCopyWithImpl<$Res>
    implements $OAuthLoginDataDtoCopyWith<$Res> {
  _$OAuthLoginDataDtoCopyWithImpl(this._self, this._then);

  final OAuthLoginDataDto _self;
  final $Res Function(OAuthLoginDataDto) _then;

/// Create a copy of OAuthLoginDataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? user = null,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as OAuthUserDto,
  ));
}
/// Create a copy of OAuthLoginDataDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OAuthUserDtoCopyWith<$Res> get user {
  
  return $OAuthUserDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [OAuthLoginDataDto].
extension OAuthLoginDataDtoPatterns on OAuthLoginDataDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OAuthLoginDataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OAuthLoginDataDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OAuthLoginDataDto value)  $default,){
final _that = this;
switch (_that) {
case _OAuthLoginDataDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OAuthLoginDataDto value)?  $default,){
final _that = this;
switch (_that) {
case _OAuthLoginDataDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: _oauthLoginReadAccessToken)  String accessToken,  OAuthUserDto user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OAuthLoginDataDto() when $default != null:
return $default(_that.accessToken,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: _oauthLoginReadAccessToken)  String accessToken,  OAuthUserDto user)  $default,) {final _that = this;
switch (_that) {
case _OAuthLoginDataDto():
return $default(_that.accessToken,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: _oauthLoginReadAccessToken)  String accessToken,  OAuthUserDto user)?  $default,) {final _that = this;
switch (_that) {
case _OAuthLoginDataDto() when $default != null:
return $default(_that.accessToken,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OAuthLoginDataDto implements OAuthLoginDataDto {
  const _OAuthLoginDataDto({@JsonKey(readValue: _oauthLoginReadAccessToken) required this.accessToken, required this.user});
  factory _OAuthLoginDataDto.fromJson(Map<String, dynamic> json) => _$OAuthLoginDataDtoFromJson(json);

@override@JsonKey(readValue: _oauthLoginReadAccessToken) final  String accessToken;
@override final  OAuthUserDto user;

/// Create a copy of OAuthLoginDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OAuthLoginDataDtoCopyWith<_OAuthLoginDataDto> get copyWith => __$OAuthLoginDataDtoCopyWithImpl<_OAuthLoginDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OAuthLoginDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OAuthLoginDataDto&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,user);

@override
String toString() {
  return 'OAuthLoginDataDto(accessToken: $accessToken, user: $user)';
}


}

/// @nodoc
abstract mixin class _$OAuthLoginDataDtoCopyWith<$Res> implements $OAuthLoginDataDtoCopyWith<$Res> {
  factory _$OAuthLoginDataDtoCopyWith(_OAuthLoginDataDto value, $Res Function(_OAuthLoginDataDto) _then) = __$OAuthLoginDataDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: _oauthLoginReadAccessToken) String accessToken, OAuthUserDto user
});


@override $OAuthUserDtoCopyWith<$Res> get user;

}
/// @nodoc
class __$OAuthLoginDataDtoCopyWithImpl<$Res>
    implements _$OAuthLoginDataDtoCopyWith<$Res> {
  __$OAuthLoginDataDtoCopyWithImpl(this._self, this._then);

  final _OAuthLoginDataDto _self;
  final $Res Function(_OAuthLoginDataDto) _then;

/// Create a copy of OAuthLoginDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? user = null,}) {
  return _then(_OAuthLoginDataDto(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as OAuthUserDto,
  ));
}

/// Create a copy of OAuthLoginDataDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OAuthUserDtoCopyWith<$Res> get user {
  
  return $OAuthUserDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$OAuthLoginResponseEnvelope {

 bool get success; OAuthLoginDataDto? get data; String? get message; String? get code;
/// Create a copy of OAuthLoginResponseEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OAuthLoginResponseEnvelopeCopyWith<OAuthLoginResponseEnvelope> get copyWith => _$OAuthLoginResponseEnvelopeCopyWithImpl<OAuthLoginResponseEnvelope>(this as OAuthLoginResponseEnvelope, _$identity);

  /// Serializes this OAuthLoginResponseEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OAuthLoginResponseEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'OAuthLoginResponseEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $OAuthLoginResponseEnvelopeCopyWith<$Res>  {
  factory $OAuthLoginResponseEnvelopeCopyWith(OAuthLoginResponseEnvelope value, $Res Function(OAuthLoginResponseEnvelope) _then) = _$OAuthLoginResponseEnvelopeCopyWithImpl;
@useResult
$Res call({
 bool success, OAuthLoginDataDto? data, String? message, String? code
});


$OAuthLoginDataDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$OAuthLoginResponseEnvelopeCopyWithImpl<$Res>
    implements $OAuthLoginResponseEnvelopeCopyWith<$Res> {
  _$OAuthLoginResponseEnvelopeCopyWithImpl(this._self, this._then);

  final OAuthLoginResponseEnvelope _self;
  final $Res Function(OAuthLoginResponseEnvelope) _then;

/// Create a copy of OAuthLoginResponseEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as OAuthLoginDataDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of OAuthLoginResponseEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OAuthLoginDataDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $OAuthLoginDataDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [OAuthLoginResponseEnvelope].
extension OAuthLoginResponseEnvelopePatterns on OAuthLoginResponseEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OAuthLoginResponseEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OAuthLoginResponseEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OAuthLoginResponseEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _OAuthLoginResponseEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OAuthLoginResponseEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _OAuthLoginResponseEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  OAuthLoginDataDto? data,  String? message,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OAuthLoginResponseEnvelope() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  OAuthLoginDataDto? data,  String? message,  String? code)  $default,) {final _that = this;
switch (_that) {
case _OAuthLoginResponseEnvelope():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  OAuthLoginDataDto? data,  String? message,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _OAuthLoginResponseEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OAuthLoginResponseEnvelope implements OAuthLoginResponseEnvelope {
  const _OAuthLoginResponseEnvelope({required this.success, this.data, this.message, this.code});
  factory _OAuthLoginResponseEnvelope.fromJson(Map<String, dynamic> json) => _$OAuthLoginResponseEnvelopeFromJson(json);

@override final  bool success;
@override final  OAuthLoginDataDto? data;
@override final  String? message;
@override final  String? code;

/// Create a copy of OAuthLoginResponseEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OAuthLoginResponseEnvelopeCopyWith<_OAuthLoginResponseEnvelope> get copyWith => __$OAuthLoginResponseEnvelopeCopyWithImpl<_OAuthLoginResponseEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OAuthLoginResponseEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OAuthLoginResponseEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'OAuthLoginResponseEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$OAuthLoginResponseEnvelopeCopyWith<$Res> implements $OAuthLoginResponseEnvelopeCopyWith<$Res> {
  factory _$OAuthLoginResponseEnvelopeCopyWith(_OAuthLoginResponseEnvelope value, $Res Function(_OAuthLoginResponseEnvelope) _then) = __$OAuthLoginResponseEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 bool success, OAuthLoginDataDto? data, String? message, String? code
});


@override $OAuthLoginDataDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$OAuthLoginResponseEnvelopeCopyWithImpl<$Res>
    implements _$OAuthLoginResponseEnvelopeCopyWith<$Res> {
  __$OAuthLoginResponseEnvelopeCopyWithImpl(this._self, this._then);

  final _OAuthLoginResponseEnvelope _self;
  final $Res Function(_OAuthLoginResponseEnvelope) _then;

/// Create a copy of OAuthLoginResponseEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_OAuthLoginResponseEnvelope(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as OAuthLoginDataDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of OAuthLoginResponseEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OAuthLoginDataDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $OAuthLoginDataDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
