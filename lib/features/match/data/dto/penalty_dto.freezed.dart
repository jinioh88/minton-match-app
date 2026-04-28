// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'penalty_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatePenaltyRequestDto {

 int get userId; String get type;
/// Create a copy of CreatePenaltyRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePenaltyRequestDtoCopyWith<CreatePenaltyRequestDto> get copyWith => _$CreatePenaltyRequestDtoCopyWithImpl<CreatePenaltyRequestDto>(this as CreatePenaltyRequestDto, _$identity);

  /// Serializes this CreatePenaltyRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePenaltyRequestDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,type);

@override
String toString() {
  return 'CreatePenaltyRequestDto(userId: $userId, type: $type)';
}


}

/// @nodoc
abstract mixin class $CreatePenaltyRequestDtoCopyWith<$Res>  {
  factory $CreatePenaltyRequestDtoCopyWith(CreatePenaltyRequestDto value, $Res Function(CreatePenaltyRequestDto) _then) = _$CreatePenaltyRequestDtoCopyWithImpl;
@useResult
$Res call({
 int userId, String type
});




}
/// @nodoc
class _$CreatePenaltyRequestDtoCopyWithImpl<$Res>
    implements $CreatePenaltyRequestDtoCopyWith<$Res> {
  _$CreatePenaltyRequestDtoCopyWithImpl(this._self, this._then);

  final CreatePenaltyRequestDto _self;
  final $Res Function(CreatePenaltyRequestDto) _then;

/// Create a copy of CreatePenaltyRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? type = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatePenaltyRequestDto].
extension CreatePenaltyRequestDtoPatterns on CreatePenaltyRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePenaltyRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePenaltyRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePenaltyRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CreatePenaltyRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePenaltyRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePenaltyRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePenaltyRequestDto() when $default != null:
return $default(_that.userId,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  String type)  $default,) {final _that = this;
switch (_that) {
case _CreatePenaltyRequestDto():
return $default(_that.userId,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  String type)?  $default,) {final _that = this;
switch (_that) {
case _CreatePenaltyRequestDto() when $default != null:
return $default(_that.userId,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatePenaltyRequestDto implements CreatePenaltyRequestDto {
  const _CreatePenaltyRequestDto({required this.userId, required this.type});
  factory _CreatePenaltyRequestDto.fromJson(Map<String, dynamic> json) => _$CreatePenaltyRequestDtoFromJson(json);

@override final  int userId;
@override final  String type;

/// Create a copy of CreatePenaltyRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePenaltyRequestDtoCopyWith<_CreatePenaltyRequestDto> get copyWith => __$CreatePenaltyRequestDtoCopyWithImpl<_CreatePenaltyRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatePenaltyRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePenaltyRequestDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,type);

@override
String toString() {
  return 'CreatePenaltyRequestDto(userId: $userId, type: $type)';
}


}

/// @nodoc
abstract mixin class _$CreatePenaltyRequestDtoCopyWith<$Res> implements $CreatePenaltyRequestDtoCopyWith<$Res> {
  factory _$CreatePenaltyRequestDtoCopyWith(_CreatePenaltyRequestDto value, $Res Function(_CreatePenaltyRequestDto) _then) = __$CreatePenaltyRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 int userId, String type
});




}
/// @nodoc
class __$CreatePenaltyRequestDtoCopyWithImpl<$Res>
    implements _$CreatePenaltyRequestDtoCopyWith<$Res> {
  __$CreatePenaltyRequestDtoCopyWithImpl(this._self, this._then);

  final _CreatePenaltyRequestDto _self;
  final $Res Function(_CreatePenaltyRequestDto) _then;

/// Create a copy of CreatePenaltyRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? type = null,}) {
  return _then(_CreatePenaltyRequestDto(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CreatedPenaltyDto {

 int get penaltyId; int get matchId; int get userId; String get type; String get createdAt;
/// Create a copy of CreatedPenaltyDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatedPenaltyDtoCopyWith<CreatedPenaltyDto> get copyWith => _$CreatedPenaltyDtoCopyWithImpl<CreatedPenaltyDto>(this as CreatedPenaltyDto, _$identity);

  /// Serializes this CreatedPenaltyDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatedPenaltyDto&&(identical(other.penaltyId, penaltyId) || other.penaltyId == penaltyId)&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,penaltyId,matchId,userId,type,createdAt);

@override
String toString() {
  return 'CreatedPenaltyDto(penaltyId: $penaltyId, matchId: $matchId, userId: $userId, type: $type, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CreatedPenaltyDtoCopyWith<$Res>  {
  factory $CreatedPenaltyDtoCopyWith(CreatedPenaltyDto value, $Res Function(CreatedPenaltyDto) _then) = _$CreatedPenaltyDtoCopyWithImpl;
@useResult
$Res call({
 int penaltyId, int matchId, int userId, String type, String createdAt
});




}
/// @nodoc
class _$CreatedPenaltyDtoCopyWithImpl<$Res>
    implements $CreatedPenaltyDtoCopyWith<$Res> {
  _$CreatedPenaltyDtoCopyWithImpl(this._self, this._then);

  final CreatedPenaltyDto _self;
  final $Res Function(CreatedPenaltyDto) _then;

/// Create a copy of CreatedPenaltyDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? penaltyId = null,Object? matchId = null,Object? userId = null,Object? type = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
penaltyId: null == penaltyId ? _self.penaltyId : penaltyId // ignore: cast_nullable_to_non_nullable
as int,matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatedPenaltyDto].
extension CreatedPenaltyDtoPatterns on CreatedPenaltyDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatedPenaltyDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatedPenaltyDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatedPenaltyDto value)  $default,){
final _that = this;
switch (_that) {
case _CreatedPenaltyDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatedPenaltyDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreatedPenaltyDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int penaltyId,  int matchId,  int userId,  String type,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatedPenaltyDto() when $default != null:
return $default(_that.penaltyId,_that.matchId,_that.userId,_that.type,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int penaltyId,  int matchId,  int userId,  String type,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _CreatedPenaltyDto():
return $default(_that.penaltyId,_that.matchId,_that.userId,_that.type,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int penaltyId,  int matchId,  int userId,  String type,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _CreatedPenaltyDto() when $default != null:
return $default(_that.penaltyId,_that.matchId,_that.userId,_that.type,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatedPenaltyDto implements CreatedPenaltyDto {
  const _CreatedPenaltyDto({required this.penaltyId, required this.matchId, required this.userId, required this.type, required this.createdAt});
  factory _CreatedPenaltyDto.fromJson(Map<String, dynamic> json) => _$CreatedPenaltyDtoFromJson(json);

@override final  int penaltyId;
@override final  int matchId;
@override final  int userId;
@override final  String type;
@override final  String createdAt;

/// Create a copy of CreatedPenaltyDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatedPenaltyDtoCopyWith<_CreatedPenaltyDto> get copyWith => __$CreatedPenaltyDtoCopyWithImpl<_CreatedPenaltyDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatedPenaltyDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatedPenaltyDto&&(identical(other.penaltyId, penaltyId) || other.penaltyId == penaltyId)&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,penaltyId,matchId,userId,type,createdAt);

@override
String toString() {
  return 'CreatedPenaltyDto(penaltyId: $penaltyId, matchId: $matchId, userId: $userId, type: $type, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CreatedPenaltyDtoCopyWith<$Res> implements $CreatedPenaltyDtoCopyWith<$Res> {
  factory _$CreatedPenaltyDtoCopyWith(_CreatedPenaltyDto value, $Res Function(_CreatedPenaltyDto) _then) = __$CreatedPenaltyDtoCopyWithImpl;
@override @useResult
$Res call({
 int penaltyId, int matchId, int userId, String type, String createdAt
});




}
/// @nodoc
class __$CreatedPenaltyDtoCopyWithImpl<$Res>
    implements _$CreatedPenaltyDtoCopyWith<$Res> {
  __$CreatedPenaltyDtoCopyWithImpl(this._self, this._then);

  final _CreatedPenaltyDto _self;
  final $Res Function(_CreatedPenaltyDto) _then;

/// Create a copy of CreatedPenaltyDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? penaltyId = null,Object? matchId = null,Object? userId = null,Object? type = null,Object? createdAt = null,}) {
  return _then(_CreatedPenaltyDto(
penaltyId: null == penaltyId ? _self.penaltyId : penaltyId // ignore: cast_nullable_to_non_nullable
as int,matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CreatePenaltyEnvelope {

 bool get success; CreatedPenaltyDto? get data; String? get message; String? get code;
/// Create a copy of CreatePenaltyEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePenaltyEnvelopeCopyWith<CreatePenaltyEnvelope> get copyWith => _$CreatePenaltyEnvelopeCopyWithImpl<CreatePenaltyEnvelope>(this as CreatePenaltyEnvelope, _$identity);

  /// Serializes this CreatePenaltyEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePenaltyEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'CreatePenaltyEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $CreatePenaltyEnvelopeCopyWith<$Res>  {
  factory $CreatePenaltyEnvelopeCopyWith(CreatePenaltyEnvelope value, $Res Function(CreatePenaltyEnvelope) _then) = _$CreatePenaltyEnvelopeCopyWithImpl;
@useResult
$Res call({
 bool success, CreatedPenaltyDto? data, String? message, String? code
});


$CreatedPenaltyDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$CreatePenaltyEnvelopeCopyWithImpl<$Res>
    implements $CreatePenaltyEnvelopeCopyWith<$Res> {
  _$CreatePenaltyEnvelopeCopyWithImpl(this._self, this._then);

  final CreatePenaltyEnvelope _self;
  final $Res Function(CreatePenaltyEnvelope) _then;

/// Create a copy of CreatePenaltyEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CreatedPenaltyDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CreatePenaltyEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatedPenaltyDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CreatedPenaltyDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreatePenaltyEnvelope].
extension CreatePenaltyEnvelopePatterns on CreatePenaltyEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePenaltyEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePenaltyEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePenaltyEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _CreatePenaltyEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePenaltyEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePenaltyEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  CreatedPenaltyDto? data,  String? message,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePenaltyEnvelope() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  CreatedPenaltyDto? data,  String? message,  String? code)  $default,) {final _that = this;
switch (_that) {
case _CreatePenaltyEnvelope():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  CreatedPenaltyDto? data,  String? message,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _CreatePenaltyEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatePenaltyEnvelope implements CreatePenaltyEnvelope {
  const _CreatePenaltyEnvelope({required this.success, this.data, this.message, this.code});
  factory _CreatePenaltyEnvelope.fromJson(Map<String, dynamic> json) => _$CreatePenaltyEnvelopeFromJson(json);

@override final  bool success;
@override final  CreatedPenaltyDto? data;
@override final  String? message;
@override final  String? code;

/// Create a copy of CreatePenaltyEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePenaltyEnvelopeCopyWith<_CreatePenaltyEnvelope> get copyWith => __$CreatePenaltyEnvelopeCopyWithImpl<_CreatePenaltyEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatePenaltyEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePenaltyEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'CreatePenaltyEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$CreatePenaltyEnvelopeCopyWith<$Res> implements $CreatePenaltyEnvelopeCopyWith<$Res> {
  factory _$CreatePenaltyEnvelopeCopyWith(_CreatePenaltyEnvelope value, $Res Function(_CreatePenaltyEnvelope) _then) = __$CreatePenaltyEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 bool success, CreatedPenaltyDto? data, String? message, String? code
});


@override $CreatedPenaltyDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$CreatePenaltyEnvelopeCopyWithImpl<$Res>
    implements _$CreatePenaltyEnvelopeCopyWith<$Res> {
  __$CreatePenaltyEnvelopeCopyWithImpl(this._self, this._then);

  final _CreatePenaltyEnvelope _self;
  final $Res Function(_CreatePenaltyEnvelope) _then;

/// Create a copy of CreatePenaltyEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_CreatePenaltyEnvelope(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CreatedPenaltyDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CreatePenaltyEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatedPenaltyDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CreatedPenaltyDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
