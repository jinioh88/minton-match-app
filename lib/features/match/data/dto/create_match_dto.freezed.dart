// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_match_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateMatchRequestDto {

 String get title; String get description; String get matchDate; String get startTime; int get durationMin; String? get locationName; String get regionCode; int get maxPeople; String? get targetLevels; CostPolicy get costPolicy; String? get imageUrl; double? get latitude; double? get longitude;
/// Create a copy of CreateMatchRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateMatchRequestDtoCopyWith<CreateMatchRequestDto> get copyWith => _$CreateMatchRequestDtoCopyWithImpl<CreateMatchRequestDto>(this as CreateMatchRequestDto, _$identity);

  /// Serializes this CreateMatchRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateMatchRequestDto&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.matchDate, matchDate) || other.matchDate == matchDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.durationMin, durationMin) || other.durationMin == durationMin)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.regionCode, regionCode) || other.regionCode == regionCode)&&(identical(other.maxPeople, maxPeople) || other.maxPeople == maxPeople)&&(identical(other.targetLevels, targetLevels) || other.targetLevels == targetLevels)&&(identical(other.costPolicy, costPolicy) || other.costPolicy == costPolicy)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,matchDate,startTime,durationMin,locationName,regionCode,maxPeople,targetLevels,costPolicy,imageUrl,latitude,longitude);

@override
String toString() {
  return 'CreateMatchRequestDto(title: $title, description: $description, matchDate: $matchDate, startTime: $startTime, durationMin: $durationMin, locationName: $locationName, regionCode: $regionCode, maxPeople: $maxPeople, targetLevels: $targetLevels, costPolicy: $costPolicy, imageUrl: $imageUrl, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $CreateMatchRequestDtoCopyWith<$Res>  {
  factory $CreateMatchRequestDtoCopyWith(CreateMatchRequestDto value, $Res Function(CreateMatchRequestDto) _then) = _$CreateMatchRequestDtoCopyWithImpl;
@useResult
$Res call({
 String title, String description, String matchDate, String startTime, int durationMin, String? locationName, String regionCode, int maxPeople, String? targetLevels, CostPolicy costPolicy, String? imageUrl, double? latitude, double? longitude
});




}
/// @nodoc
class _$CreateMatchRequestDtoCopyWithImpl<$Res>
    implements $CreateMatchRequestDtoCopyWith<$Res> {
  _$CreateMatchRequestDtoCopyWithImpl(this._self, this._then);

  final CreateMatchRequestDto _self;
  final $Res Function(CreateMatchRequestDto) _then;

/// Create a copy of CreateMatchRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,Object? matchDate = null,Object? startTime = null,Object? durationMin = null,Object? locationName = freezed,Object? regionCode = null,Object? maxPeople = null,Object? targetLevels = freezed,Object? costPolicy = null,Object? imageUrl = freezed,Object? latitude = freezed,Object? longitude = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,matchDate: null == matchDate ? _self.matchDate : matchDate // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,durationMin: null == durationMin ? _self.durationMin : durationMin // ignore: cast_nullable_to_non_nullable
as int,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,regionCode: null == regionCode ? _self.regionCode : regionCode // ignore: cast_nullable_to_non_nullable
as String,maxPeople: null == maxPeople ? _self.maxPeople : maxPeople // ignore: cast_nullable_to_non_nullable
as int,targetLevels: freezed == targetLevels ? _self.targetLevels : targetLevels // ignore: cast_nullable_to_non_nullable
as String?,costPolicy: null == costPolicy ? _self.costPolicy : costPolicy // ignore: cast_nullable_to_non_nullable
as CostPolicy,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateMatchRequestDto].
extension CreateMatchRequestDtoPatterns on CreateMatchRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateMatchRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateMatchRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateMatchRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateMatchRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateMatchRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateMatchRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String description,  String matchDate,  String startTime,  int durationMin,  String? locationName,  String regionCode,  int maxPeople,  String? targetLevels,  CostPolicy costPolicy,  String? imageUrl,  double? latitude,  double? longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateMatchRequestDto() when $default != null:
return $default(_that.title,_that.description,_that.matchDate,_that.startTime,_that.durationMin,_that.locationName,_that.regionCode,_that.maxPeople,_that.targetLevels,_that.costPolicy,_that.imageUrl,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String description,  String matchDate,  String startTime,  int durationMin,  String? locationName,  String regionCode,  int maxPeople,  String? targetLevels,  CostPolicy costPolicy,  String? imageUrl,  double? latitude,  double? longitude)  $default,) {final _that = this;
switch (_that) {
case _CreateMatchRequestDto():
return $default(_that.title,_that.description,_that.matchDate,_that.startTime,_that.durationMin,_that.locationName,_that.regionCode,_that.maxPeople,_that.targetLevels,_that.costPolicy,_that.imageUrl,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String description,  String matchDate,  String startTime,  int durationMin,  String? locationName,  String regionCode,  int maxPeople,  String? targetLevels,  CostPolicy costPolicy,  String? imageUrl,  double? latitude,  double? longitude)?  $default,) {final _that = this;
switch (_that) {
case _CreateMatchRequestDto() when $default != null:
return $default(_that.title,_that.description,_that.matchDate,_that.startTime,_that.durationMin,_that.locationName,_that.regionCode,_that.maxPeople,_that.targetLevels,_that.costPolicy,_that.imageUrl,_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateMatchRequestDto implements CreateMatchRequestDto {
  const _CreateMatchRequestDto({required this.title, required this.description, required this.matchDate, required this.startTime, required this.durationMin, this.locationName, required this.regionCode, required this.maxPeople, this.targetLevels, required this.costPolicy, this.imageUrl, this.latitude, this.longitude});
  factory _CreateMatchRequestDto.fromJson(Map<String, dynamic> json) => _$CreateMatchRequestDtoFromJson(json);

@override final  String title;
@override final  String description;
@override final  String matchDate;
@override final  String startTime;
@override final  int durationMin;
@override final  String? locationName;
@override final  String regionCode;
@override final  int maxPeople;
@override final  String? targetLevels;
@override final  CostPolicy costPolicy;
@override final  String? imageUrl;
@override final  double? latitude;
@override final  double? longitude;

/// Create a copy of CreateMatchRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateMatchRequestDtoCopyWith<_CreateMatchRequestDto> get copyWith => __$CreateMatchRequestDtoCopyWithImpl<_CreateMatchRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateMatchRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateMatchRequestDto&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.matchDate, matchDate) || other.matchDate == matchDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.durationMin, durationMin) || other.durationMin == durationMin)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.regionCode, regionCode) || other.regionCode == regionCode)&&(identical(other.maxPeople, maxPeople) || other.maxPeople == maxPeople)&&(identical(other.targetLevels, targetLevels) || other.targetLevels == targetLevels)&&(identical(other.costPolicy, costPolicy) || other.costPolicy == costPolicy)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,matchDate,startTime,durationMin,locationName,regionCode,maxPeople,targetLevels,costPolicy,imageUrl,latitude,longitude);

@override
String toString() {
  return 'CreateMatchRequestDto(title: $title, description: $description, matchDate: $matchDate, startTime: $startTime, durationMin: $durationMin, locationName: $locationName, regionCode: $regionCode, maxPeople: $maxPeople, targetLevels: $targetLevels, costPolicy: $costPolicy, imageUrl: $imageUrl, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$CreateMatchRequestDtoCopyWith<$Res> implements $CreateMatchRequestDtoCopyWith<$Res> {
  factory _$CreateMatchRequestDtoCopyWith(_CreateMatchRequestDto value, $Res Function(_CreateMatchRequestDto) _then) = __$CreateMatchRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String title, String description, String matchDate, String startTime, int durationMin, String? locationName, String regionCode, int maxPeople, String? targetLevels, CostPolicy costPolicy, String? imageUrl, double? latitude, double? longitude
});




}
/// @nodoc
class __$CreateMatchRequestDtoCopyWithImpl<$Res>
    implements _$CreateMatchRequestDtoCopyWith<$Res> {
  __$CreateMatchRequestDtoCopyWithImpl(this._self, this._then);

  final _CreateMatchRequestDto _self;
  final $Res Function(_CreateMatchRequestDto) _then;

/// Create a copy of CreateMatchRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,Object? matchDate = null,Object? startTime = null,Object? durationMin = null,Object? locationName = freezed,Object? regionCode = null,Object? maxPeople = null,Object? targetLevels = freezed,Object? costPolicy = null,Object? imageUrl = freezed,Object? latitude = freezed,Object? longitude = freezed,}) {
  return _then(_CreateMatchRequestDto(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,matchDate: null == matchDate ? _self.matchDate : matchDate // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,durationMin: null == durationMin ? _self.durationMin : durationMin // ignore: cast_nullable_to_non_nullable
as int,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,regionCode: null == regionCode ? _self.regionCode : regionCode // ignore: cast_nullable_to_non_nullable
as String,maxPeople: null == maxPeople ? _self.maxPeople : maxPeople // ignore: cast_nullable_to_non_nullable
as int,targetLevels: freezed == targetLevels ? _self.targetLevels : targetLevels // ignore: cast_nullable_to_non_nullable
as String?,costPolicy: null == costPolicy ? _self.costPolicy : costPolicy // ignore: cast_nullable_to_non_nullable
as CostPolicy,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$CreateMatchResponseDto {

 int get matchId; int get hostId; String get title; String get description; String get matchDate; String get startTime; int get durationMin; String? get locationName; String get regionCode; int get maxPeople; String? get targetLevels; CostPolicy get costPolicy; String get status; String? get imageUrl; double? get latitude; double? get longitude; String? get createdAt;
/// Create a copy of CreateMatchResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateMatchResponseDtoCopyWith<CreateMatchResponseDto> get copyWith => _$CreateMatchResponseDtoCopyWithImpl<CreateMatchResponseDto>(this as CreateMatchResponseDto, _$identity);

  /// Serializes this CreateMatchResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateMatchResponseDto&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.hostId, hostId) || other.hostId == hostId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.matchDate, matchDate) || other.matchDate == matchDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.durationMin, durationMin) || other.durationMin == durationMin)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.regionCode, regionCode) || other.regionCode == regionCode)&&(identical(other.maxPeople, maxPeople) || other.maxPeople == maxPeople)&&(identical(other.targetLevels, targetLevels) || other.targetLevels == targetLevels)&&(identical(other.costPolicy, costPolicy) || other.costPolicy == costPolicy)&&(identical(other.status, status) || other.status == status)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,matchId,hostId,title,description,matchDate,startTime,durationMin,locationName,regionCode,maxPeople,targetLevels,costPolicy,status,imageUrl,latitude,longitude,createdAt);

@override
String toString() {
  return 'CreateMatchResponseDto(matchId: $matchId, hostId: $hostId, title: $title, description: $description, matchDate: $matchDate, startTime: $startTime, durationMin: $durationMin, locationName: $locationName, regionCode: $regionCode, maxPeople: $maxPeople, targetLevels: $targetLevels, costPolicy: $costPolicy, status: $status, imageUrl: $imageUrl, latitude: $latitude, longitude: $longitude, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CreateMatchResponseDtoCopyWith<$Res>  {
  factory $CreateMatchResponseDtoCopyWith(CreateMatchResponseDto value, $Res Function(CreateMatchResponseDto) _then) = _$CreateMatchResponseDtoCopyWithImpl;
@useResult
$Res call({
 int matchId, int hostId, String title, String description, String matchDate, String startTime, int durationMin, String? locationName, String regionCode, int maxPeople, String? targetLevels, CostPolicy costPolicy, String status, String? imageUrl, double? latitude, double? longitude, String? createdAt
});




}
/// @nodoc
class _$CreateMatchResponseDtoCopyWithImpl<$Res>
    implements $CreateMatchResponseDtoCopyWith<$Res> {
  _$CreateMatchResponseDtoCopyWithImpl(this._self, this._then);

  final CreateMatchResponseDto _self;
  final $Res Function(CreateMatchResponseDto) _then;

/// Create a copy of CreateMatchResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? matchId = null,Object? hostId = null,Object? title = null,Object? description = null,Object? matchDate = null,Object? startTime = null,Object? durationMin = null,Object? locationName = freezed,Object? regionCode = null,Object? maxPeople = null,Object? targetLevels = freezed,Object? costPolicy = null,Object? status = null,Object? imageUrl = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,hostId: null == hostId ? _self.hostId : hostId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,matchDate: null == matchDate ? _self.matchDate : matchDate // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,durationMin: null == durationMin ? _self.durationMin : durationMin // ignore: cast_nullable_to_non_nullable
as int,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,regionCode: null == regionCode ? _self.regionCode : regionCode // ignore: cast_nullable_to_non_nullable
as String,maxPeople: null == maxPeople ? _self.maxPeople : maxPeople // ignore: cast_nullable_to_non_nullable
as int,targetLevels: freezed == targetLevels ? _self.targetLevels : targetLevels // ignore: cast_nullable_to_non_nullable
as String?,costPolicy: null == costPolicy ? _self.costPolicy : costPolicy // ignore: cast_nullable_to_non_nullable
as CostPolicy,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateMatchResponseDto].
extension CreateMatchResponseDtoPatterns on CreateMatchResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateMatchResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateMatchResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateMatchResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateMatchResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateMatchResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateMatchResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int matchId,  int hostId,  String title,  String description,  String matchDate,  String startTime,  int durationMin,  String? locationName,  String regionCode,  int maxPeople,  String? targetLevels,  CostPolicy costPolicy,  String status,  String? imageUrl,  double? latitude,  double? longitude,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateMatchResponseDto() when $default != null:
return $default(_that.matchId,_that.hostId,_that.title,_that.description,_that.matchDate,_that.startTime,_that.durationMin,_that.locationName,_that.regionCode,_that.maxPeople,_that.targetLevels,_that.costPolicy,_that.status,_that.imageUrl,_that.latitude,_that.longitude,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int matchId,  int hostId,  String title,  String description,  String matchDate,  String startTime,  int durationMin,  String? locationName,  String regionCode,  int maxPeople,  String? targetLevels,  CostPolicy costPolicy,  String status,  String? imageUrl,  double? latitude,  double? longitude,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _CreateMatchResponseDto():
return $default(_that.matchId,_that.hostId,_that.title,_that.description,_that.matchDate,_that.startTime,_that.durationMin,_that.locationName,_that.regionCode,_that.maxPeople,_that.targetLevels,_that.costPolicy,_that.status,_that.imageUrl,_that.latitude,_that.longitude,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int matchId,  int hostId,  String title,  String description,  String matchDate,  String startTime,  int durationMin,  String? locationName,  String regionCode,  int maxPeople,  String? targetLevels,  CostPolicy costPolicy,  String status,  String? imageUrl,  double? latitude,  double? longitude,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _CreateMatchResponseDto() when $default != null:
return $default(_that.matchId,_that.hostId,_that.title,_that.description,_that.matchDate,_that.startTime,_that.durationMin,_that.locationName,_that.regionCode,_that.maxPeople,_that.targetLevels,_that.costPolicy,_that.status,_that.imageUrl,_that.latitude,_that.longitude,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateMatchResponseDto implements CreateMatchResponseDto {
  const _CreateMatchResponseDto({required this.matchId, required this.hostId, required this.title, required this.description, required this.matchDate, required this.startTime, required this.durationMin, this.locationName, required this.regionCode, required this.maxPeople, this.targetLevels, required this.costPolicy, required this.status, this.imageUrl, this.latitude, this.longitude, this.createdAt});
  factory _CreateMatchResponseDto.fromJson(Map<String, dynamic> json) => _$CreateMatchResponseDtoFromJson(json);

@override final  int matchId;
@override final  int hostId;
@override final  String title;
@override final  String description;
@override final  String matchDate;
@override final  String startTime;
@override final  int durationMin;
@override final  String? locationName;
@override final  String regionCode;
@override final  int maxPeople;
@override final  String? targetLevels;
@override final  CostPolicy costPolicy;
@override final  String status;
@override final  String? imageUrl;
@override final  double? latitude;
@override final  double? longitude;
@override final  String? createdAt;

/// Create a copy of CreateMatchResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateMatchResponseDtoCopyWith<_CreateMatchResponseDto> get copyWith => __$CreateMatchResponseDtoCopyWithImpl<_CreateMatchResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateMatchResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateMatchResponseDto&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.hostId, hostId) || other.hostId == hostId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.matchDate, matchDate) || other.matchDate == matchDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.durationMin, durationMin) || other.durationMin == durationMin)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.regionCode, regionCode) || other.regionCode == regionCode)&&(identical(other.maxPeople, maxPeople) || other.maxPeople == maxPeople)&&(identical(other.targetLevels, targetLevels) || other.targetLevels == targetLevels)&&(identical(other.costPolicy, costPolicy) || other.costPolicy == costPolicy)&&(identical(other.status, status) || other.status == status)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,matchId,hostId,title,description,matchDate,startTime,durationMin,locationName,regionCode,maxPeople,targetLevels,costPolicy,status,imageUrl,latitude,longitude,createdAt);

@override
String toString() {
  return 'CreateMatchResponseDto(matchId: $matchId, hostId: $hostId, title: $title, description: $description, matchDate: $matchDate, startTime: $startTime, durationMin: $durationMin, locationName: $locationName, regionCode: $regionCode, maxPeople: $maxPeople, targetLevels: $targetLevels, costPolicy: $costPolicy, status: $status, imageUrl: $imageUrl, latitude: $latitude, longitude: $longitude, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CreateMatchResponseDtoCopyWith<$Res> implements $CreateMatchResponseDtoCopyWith<$Res> {
  factory _$CreateMatchResponseDtoCopyWith(_CreateMatchResponseDto value, $Res Function(_CreateMatchResponseDto) _then) = __$CreateMatchResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 int matchId, int hostId, String title, String description, String matchDate, String startTime, int durationMin, String? locationName, String regionCode, int maxPeople, String? targetLevels, CostPolicy costPolicy, String status, String? imageUrl, double? latitude, double? longitude, String? createdAt
});




}
/// @nodoc
class __$CreateMatchResponseDtoCopyWithImpl<$Res>
    implements _$CreateMatchResponseDtoCopyWith<$Res> {
  __$CreateMatchResponseDtoCopyWithImpl(this._self, this._then);

  final _CreateMatchResponseDto _self;
  final $Res Function(_CreateMatchResponseDto) _then;

/// Create a copy of CreateMatchResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? matchId = null,Object? hostId = null,Object? title = null,Object? description = null,Object? matchDate = null,Object? startTime = null,Object? durationMin = null,Object? locationName = freezed,Object? regionCode = null,Object? maxPeople = null,Object? targetLevels = freezed,Object? costPolicy = null,Object? status = null,Object? imageUrl = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? createdAt = freezed,}) {
  return _then(_CreateMatchResponseDto(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,hostId: null == hostId ? _self.hostId : hostId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,matchDate: null == matchDate ? _self.matchDate : matchDate // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,durationMin: null == durationMin ? _self.durationMin : durationMin // ignore: cast_nullable_to_non_nullable
as int,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,regionCode: null == regionCode ? _self.regionCode : regionCode // ignore: cast_nullable_to_non_nullable
as String,maxPeople: null == maxPeople ? _self.maxPeople : maxPeople // ignore: cast_nullable_to_non_nullable
as int,targetLevels: freezed == targetLevels ? _self.targetLevels : targetLevels // ignore: cast_nullable_to_non_nullable
as String?,costPolicy: null == costPolicy ? _self.costPolicy : costPolicy // ignore: cast_nullable_to_non_nullable
as CostPolicy,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CreateMatchEnvelope {

 bool get success; CreateMatchResponseDto? get data; String? get message; String? get code;
/// Create a copy of CreateMatchEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateMatchEnvelopeCopyWith<CreateMatchEnvelope> get copyWith => _$CreateMatchEnvelopeCopyWithImpl<CreateMatchEnvelope>(this as CreateMatchEnvelope, _$identity);

  /// Serializes this CreateMatchEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateMatchEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'CreateMatchEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $CreateMatchEnvelopeCopyWith<$Res>  {
  factory $CreateMatchEnvelopeCopyWith(CreateMatchEnvelope value, $Res Function(CreateMatchEnvelope) _then) = _$CreateMatchEnvelopeCopyWithImpl;
@useResult
$Res call({
 bool success, CreateMatchResponseDto? data, String? message, String? code
});


$CreateMatchResponseDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$CreateMatchEnvelopeCopyWithImpl<$Res>
    implements $CreateMatchEnvelopeCopyWith<$Res> {
  _$CreateMatchEnvelopeCopyWithImpl(this._self, this._then);

  final CreateMatchEnvelope _self;
  final $Res Function(CreateMatchEnvelope) _then;

/// Create a copy of CreateMatchEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CreateMatchResponseDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CreateMatchEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateMatchResponseDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CreateMatchResponseDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateMatchEnvelope].
extension CreateMatchEnvelopePatterns on CreateMatchEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateMatchEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateMatchEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateMatchEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _CreateMatchEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateMatchEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _CreateMatchEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  CreateMatchResponseDto? data,  String? message,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateMatchEnvelope() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  CreateMatchResponseDto? data,  String? message,  String? code)  $default,) {final _that = this;
switch (_that) {
case _CreateMatchEnvelope():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  CreateMatchResponseDto? data,  String? message,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _CreateMatchEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateMatchEnvelope implements CreateMatchEnvelope {
  const _CreateMatchEnvelope({required this.success, this.data, this.message, this.code});
  factory _CreateMatchEnvelope.fromJson(Map<String, dynamic> json) => _$CreateMatchEnvelopeFromJson(json);

@override final  bool success;
@override final  CreateMatchResponseDto? data;
@override final  String? message;
@override final  String? code;

/// Create a copy of CreateMatchEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateMatchEnvelopeCopyWith<_CreateMatchEnvelope> get copyWith => __$CreateMatchEnvelopeCopyWithImpl<_CreateMatchEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateMatchEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateMatchEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'CreateMatchEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$CreateMatchEnvelopeCopyWith<$Res> implements $CreateMatchEnvelopeCopyWith<$Res> {
  factory _$CreateMatchEnvelopeCopyWith(_CreateMatchEnvelope value, $Res Function(_CreateMatchEnvelope) _then) = __$CreateMatchEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 bool success, CreateMatchResponseDto? data, String? message, String? code
});


@override $CreateMatchResponseDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$CreateMatchEnvelopeCopyWithImpl<$Res>
    implements _$CreateMatchEnvelopeCopyWith<$Res> {
  __$CreateMatchEnvelopeCopyWithImpl(this._self, this._then);

  final _CreateMatchEnvelope _self;
  final $Res Function(_CreateMatchEnvelope) _then;

/// Create a copy of CreateMatchEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_CreateMatchEnvelope(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CreateMatchResponseDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CreateMatchEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateMatchResponseDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CreateMatchResponseDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$FileUploadResultDto {

 String get url; String? get key;
/// Create a copy of FileUploadResultDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FileUploadResultDtoCopyWith<FileUploadResultDto> get copyWith => _$FileUploadResultDtoCopyWithImpl<FileUploadResultDto>(this as FileUploadResultDto, _$identity);

  /// Serializes this FileUploadResultDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FileUploadResultDto&&(identical(other.url, url) || other.url == url)&&(identical(other.key, key) || other.key == key));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,key);

@override
String toString() {
  return 'FileUploadResultDto(url: $url, key: $key)';
}


}

/// @nodoc
abstract mixin class $FileUploadResultDtoCopyWith<$Res>  {
  factory $FileUploadResultDtoCopyWith(FileUploadResultDto value, $Res Function(FileUploadResultDto) _then) = _$FileUploadResultDtoCopyWithImpl;
@useResult
$Res call({
 String url, String? key
});




}
/// @nodoc
class _$FileUploadResultDtoCopyWithImpl<$Res>
    implements $FileUploadResultDtoCopyWith<$Res> {
  _$FileUploadResultDtoCopyWithImpl(this._self, this._then);

  final FileUploadResultDto _self;
  final $Res Function(FileUploadResultDto) _then;

/// Create a copy of FileUploadResultDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? key = freezed,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FileUploadResultDto].
extension FileUploadResultDtoPatterns on FileUploadResultDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FileUploadResultDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FileUploadResultDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FileUploadResultDto value)  $default,){
final _that = this;
switch (_that) {
case _FileUploadResultDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FileUploadResultDto value)?  $default,){
final _that = this;
switch (_that) {
case _FileUploadResultDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url,  String? key)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FileUploadResultDto() when $default != null:
return $default(_that.url,_that.key);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url,  String? key)  $default,) {final _that = this;
switch (_that) {
case _FileUploadResultDto():
return $default(_that.url,_that.key);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url,  String? key)?  $default,) {final _that = this;
switch (_that) {
case _FileUploadResultDto() when $default != null:
return $default(_that.url,_that.key);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FileUploadResultDto implements FileUploadResultDto {
  const _FileUploadResultDto({required this.url, this.key});
  factory _FileUploadResultDto.fromJson(Map<String, dynamic> json) => _$FileUploadResultDtoFromJson(json);

@override final  String url;
@override final  String? key;

/// Create a copy of FileUploadResultDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FileUploadResultDtoCopyWith<_FileUploadResultDto> get copyWith => __$FileUploadResultDtoCopyWithImpl<_FileUploadResultDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FileUploadResultDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FileUploadResultDto&&(identical(other.url, url) || other.url == url)&&(identical(other.key, key) || other.key == key));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,key);

@override
String toString() {
  return 'FileUploadResultDto(url: $url, key: $key)';
}


}

/// @nodoc
abstract mixin class _$FileUploadResultDtoCopyWith<$Res> implements $FileUploadResultDtoCopyWith<$Res> {
  factory _$FileUploadResultDtoCopyWith(_FileUploadResultDto value, $Res Function(_FileUploadResultDto) _then) = __$FileUploadResultDtoCopyWithImpl;
@override @useResult
$Res call({
 String url, String? key
});




}
/// @nodoc
class __$FileUploadResultDtoCopyWithImpl<$Res>
    implements _$FileUploadResultDtoCopyWith<$Res> {
  __$FileUploadResultDtoCopyWithImpl(this._self, this._then);

  final _FileUploadResultDto _self;
  final $Res Function(_FileUploadResultDto) _then;

/// Create a copy of FileUploadResultDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? key = freezed,}) {
  return _then(_FileUploadResultDto(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FileUploadEnvelope {

 bool get success; FileUploadResultDto? get data; String? get message; String? get code;
/// Create a copy of FileUploadEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FileUploadEnvelopeCopyWith<FileUploadEnvelope> get copyWith => _$FileUploadEnvelopeCopyWithImpl<FileUploadEnvelope>(this as FileUploadEnvelope, _$identity);

  /// Serializes this FileUploadEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FileUploadEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'FileUploadEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $FileUploadEnvelopeCopyWith<$Res>  {
  factory $FileUploadEnvelopeCopyWith(FileUploadEnvelope value, $Res Function(FileUploadEnvelope) _then) = _$FileUploadEnvelopeCopyWithImpl;
@useResult
$Res call({
 bool success, FileUploadResultDto? data, String? message, String? code
});


$FileUploadResultDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$FileUploadEnvelopeCopyWithImpl<$Res>
    implements $FileUploadEnvelopeCopyWith<$Res> {
  _$FileUploadEnvelopeCopyWithImpl(this._self, this._then);

  final FileUploadEnvelope _self;
  final $Res Function(FileUploadEnvelope) _then;

/// Create a copy of FileUploadEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FileUploadResultDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of FileUploadEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FileUploadResultDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $FileUploadResultDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [FileUploadEnvelope].
extension FileUploadEnvelopePatterns on FileUploadEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FileUploadEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FileUploadEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FileUploadEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _FileUploadEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FileUploadEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _FileUploadEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  FileUploadResultDto? data,  String? message,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FileUploadEnvelope() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  FileUploadResultDto? data,  String? message,  String? code)  $default,) {final _that = this;
switch (_that) {
case _FileUploadEnvelope():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  FileUploadResultDto? data,  String? message,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _FileUploadEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FileUploadEnvelope implements FileUploadEnvelope {
  const _FileUploadEnvelope({required this.success, this.data, this.message, this.code});
  factory _FileUploadEnvelope.fromJson(Map<String, dynamic> json) => _$FileUploadEnvelopeFromJson(json);

@override final  bool success;
@override final  FileUploadResultDto? data;
@override final  String? message;
@override final  String? code;

/// Create a copy of FileUploadEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FileUploadEnvelopeCopyWith<_FileUploadEnvelope> get copyWith => __$FileUploadEnvelopeCopyWithImpl<_FileUploadEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FileUploadEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FileUploadEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'FileUploadEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$FileUploadEnvelopeCopyWith<$Res> implements $FileUploadEnvelopeCopyWith<$Res> {
  factory _$FileUploadEnvelopeCopyWith(_FileUploadEnvelope value, $Res Function(_FileUploadEnvelope) _then) = __$FileUploadEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 bool success, FileUploadResultDto? data, String? message, String? code
});


@override $FileUploadResultDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$FileUploadEnvelopeCopyWithImpl<$Res>
    implements _$FileUploadEnvelopeCopyWith<$Res> {
  __$FileUploadEnvelopeCopyWithImpl(this._self, this._then);

  final _FileUploadEnvelope _self;
  final $Res Function(_FileUploadEnvelope) _then;

/// Create a copy of FileUploadEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_FileUploadEnvelope(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FileUploadResultDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of FileUploadEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FileUploadResultDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $FileUploadResultDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
