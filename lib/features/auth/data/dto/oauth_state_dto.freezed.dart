// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oauth_state_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OAuthStateDataDto {

 String get state;
/// Create a copy of OAuthStateDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OAuthStateDataDtoCopyWith<OAuthStateDataDto> get copyWith => _$OAuthStateDataDtoCopyWithImpl<OAuthStateDataDto>(this as OAuthStateDataDto, _$identity);

  /// Serializes this OAuthStateDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OAuthStateDataDto&&(identical(other.state, state) || other.state == state));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,state);

@override
String toString() {
  return 'OAuthStateDataDto(state: $state)';
}


}

/// @nodoc
abstract mixin class $OAuthStateDataDtoCopyWith<$Res>  {
  factory $OAuthStateDataDtoCopyWith(OAuthStateDataDto value, $Res Function(OAuthStateDataDto) _then) = _$OAuthStateDataDtoCopyWithImpl;
@useResult
$Res call({
 String state
});




}
/// @nodoc
class _$OAuthStateDataDtoCopyWithImpl<$Res>
    implements $OAuthStateDataDtoCopyWith<$Res> {
  _$OAuthStateDataDtoCopyWithImpl(this._self, this._then);

  final OAuthStateDataDto _self;
  final $Res Function(OAuthStateDataDto) _then;

/// Create a copy of OAuthStateDataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? state = null,}) {
  return _then(_self.copyWith(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OAuthStateDataDto].
extension OAuthStateDataDtoPatterns on OAuthStateDataDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OAuthStateDataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OAuthStateDataDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OAuthStateDataDto value)  $default,){
final _that = this;
switch (_that) {
case _OAuthStateDataDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OAuthStateDataDto value)?  $default,){
final _that = this;
switch (_that) {
case _OAuthStateDataDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String state)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OAuthStateDataDto() when $default != null:
return $default(_that.state);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String state)  $default,) {final _that = this;
switch (_that) {
case _OAuthStateDataDto():
return $default(_that.state);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String state)?  $default,) {final _that = this;
switch (_that) {
case _OAuthStateDataDto() when $default != null:
return $default(_that.state);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OAuthStateDataDto implements OAuthStateDataDto {
  const _OAuthStateDataDto({required this.state});
  factory _OAuthStateDataDto.fromJson(Map<String, dynamic> json) => _$OAuthStateDataDtoFromJson(json);

@override final  String state;

/// Create a copy of OAuthStateDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OAuthStateDataDtoCopyWith<_OAuthStateDataDto> get copyWith => __$OAuthStateDataDtoCopyWithImpl<_OAuthStateDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OAuthStateDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OAuthStateDataDto&&(identical(other.state, state) || other.state == state));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,state);

@override
String toString() {
  return 'OAuthStateDataDto(state: $state)';
}


}

/// @nodoc
abstract mixin class _$OAuthStateDataDtoCopyWith<$Res> implements $OAuthStateDataDtoCopyWith<$Res> {
  factory _$OAuthStateDataDtoCopyWith(_OAuthStateDataDto value, $Res Function(_OAuthStateDataDto) _then) = __$OAuthStateDataDtoCopyWithImpl;
@override @useResult
$Res call({
 String state
});




}
/// @nodoc
class __$OAuthStateDataDtoCopyWithImpl<$Res>
    implements _$OAuthStateDataDtoCopyWith<$Res> {
  __$OAuthStateDataDtoCopyWithImpl(this._self, this._then);

  final _OAuthStateDataDto _self;
  final $Res Function(_OAuthStateDataDto) _then;

/// Create a copy of OAuthStateDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? state = null,}) {
  return _then(_OAuthStateDataDto(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$OAuthStateResponseEnvelope {

 bool get success; OAuthStateDataDto? get data; String? get message; String? get code;
/// Create a copy of OAuthStateResponseEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OAuthStateResponseEnvelopeCopyWith<OAuthStateResponseEnvelope> get copyWith => _$OAuthStateResponseEnvelopeCopyWithImpl<OAuthStateResponseEnvelope>(this as OAuthStateResponseEnvelope, _$identity);

  /// Serializes this OAuthStateResponseEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OAuthStateResponseEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'OAuthStateResponseEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $OAuthStateResponseEnvelopeCopyWith<$Res>  {
  factory $OAuthStateResponseEnvelopeCopyWith(OAuthStateResponseEnvelope value, $Res Function(OAuthStateResponseEnvelope) _then) = _$OAuthStateResponseEnvelopeCopyWithImpl;
@useResult
$Res call({
 bool success, OAuthStateDataDto? data, String? message, String? code
});


$OAuthStateDataDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$OAuthStateResponseEnvelopeCopyWithImpl<$Res>
    implements $OAuthStateResponseEnvelopeCopyWith<$Res> {
  _$OAuthStateResponseEnvelopeCopyWithImpl(this._self, this._then);

  final OAuthStateResponseEnvelope _self;
  final $Res Function(OAuthStateResponseEnvelope) _then;

/// Create a copy of OAuthStateResponseEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as OAuthStateDataDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of OAuthStateResponseEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OAuthStateDataDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $OAuthStateDataDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [OAuthStateResponseEnvelope].
extension OAuthStateResponseEnvelopePatterns on OAuthStateResponseEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OAuthStateResponseEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OAuthStateResponseEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OAuthStateResponseEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _OAuthStateResponseEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OAuthStateResponseEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _OAuthStateResponseEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  OAuthStateDataDto? data,  String? message,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OAuthStateResponseEnvelope() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  OAuthStateDataDto? data,  String? message,  String? code)  $default,) {final _that = this;
switch (_that) {
case _OAuthStateResponseEnvelope():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  OAuthStateDataDto? data,  String? message,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _OAuthStateResponseEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OAuthStateResponseEnvelope implements OAuthStateResponseEnvelope {
  const _OAuthStateResponseEnvelope({required this.success, this.data, this.message, this.code});
  factory _OAuthStateResponseEnvelope.fromJson(Map<String, dynamic> json) => _$OAuthStateResponseEnvelopeFromJson(json);

@override final  bool success;
@override final  OAuthStateDataDto? data;
@override final  String? message;
@override final  String? code;

/// Create a copy of OAuthStateResponseEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OAuthStateResponseEnvelopeCopyWith<_OAuthStateResponseEnvelope> get copyWith => __$OAuthStateResponseEnvelopeCopyWithImpl<_OAuthStateResponseEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OAuthStateResponseEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OAuthStateResponseEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'OAuthStateResponseEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$OAuthStateResponseEnvelopeCopyWith<$Res> implements $OAuthStateResponseEnvelopeCopyWith<$Res> {
  factory _$OAuthStateResponseEnvelopeCopyWith(_OAuthStateResponseEnvelope value, $Res Function(_OAuthStateResponseEnvelope) _then) = __$OAuthStateResponseEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 bool success, OAuthStateDataDto? data, String? message, String? code
});


@override $OAuthStateDataDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$OAuthStateResponseEnvelopeCopyWithImpl<$Res>
    implements _$OAuthStateResponseEnvelopeCopyWith<$Res> {
  __$OAuthStateResponseEnvelopeCopyWithImpl(this._self, this._then);

  final _OAuthStateResponseEnvelope _self;
  final $Res Function(_OAuthStateResponseEnvelope) _then;

/// Create a copy of OAuthStateResponseEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_OAuthStateResponseEnvelope(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as OAuthStateDataDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of OAuthStateResponseEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OAuthStateDataDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $OAuthStateDataDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
