// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_penalty_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserPenaltyMatchDto {

 int get matchId; String get title; String get matchDate; String get startTime;
/// Create a copy of UserPenaltyMatchDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPenaltyMatchDtoCopyWith<UserPenaltyMatchDto> get copyWith => _$UserPenaltyMatchDtoCopyWithImpl<UserPenaltyMatchDto>(this as UserPenaltyMatchDto, _$identity);

  /// Serializes this UserPenaltyMatchDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPenaltyMatchDto&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.title, title) || other.title == title)&&(identical(other.matchDate, matchDate) || other.matchDate == matchDate)&&(identical(other.startTime, startTime) || other.startTime == startTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,matchId,title,matchDate,startTime);

@override
String toString() {
  return 'UserPenaltyMatchDto(matchId: $matchId, title: $title, matchDate: $matchDate, startTime: $startTime)';
}


}

/// @nodoc
abstract mixin class $UserPenaltyMatchDtoCopyWith<$Res>  {
  factory $UserPenaltyMatchDtoCopyWith(UserPenaltyMatchDto value, $Res Function(UserPenaltyMatchDto) _then) = _$UserPenaltyMatchDtoCopyWithImpl;
@useResult
$Res call({
 int matchId, String title, String matchDate, String startTime
});




}
/// @nodoc
class _$UserPenaltyMatchDtoCopyWithImpl<$Res>
    implements $UserPenaltyMatchDtoCopyWith<$Res> {
  _$UserPenaltyMatchDtoCopyWithImpl(this._self, this._then);

  final UserPenaltyMatchDto _self;
  final $Res Function(UserPenaltyMatchDto) _then;

/// Create a copy of UserPenaltyMatchDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? matchId = null,Object? title = null,Object? matchDate = null,Object? startTime = null,}) {
  return _then(_self.copyWith(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,matchDate: null == matchDate ? _self.matchDate : matchDate // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserPenaltyMatchDto].
extension UserPenaltyMatchDtoPatterns on UserPenaltyMatchDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserPenaltyMatchDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserPenaltyMatchDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserPenaltyMatchDto value)  $default,){
final _that = this;
switch (_that) {
case _UserPenaltyMatchDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserPenaltyMatchDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserPenaltyMatchDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int matchId,  String title,  String matchDate,  String startTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPenaltyMatchDto() when $default != null:
return $default(_that.matchId,_that.title,_that.matchDate,_that.startTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int matchId,  String title,  String matchDate,  String startTime)  $default,) {final _that = this;
switch (_that) {
case _UserPenaltyMatchDto():
return $default(_that.matchId,_that.title,_that.matchDate,_that.startTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int matchId,  String title,  String matchDate,  String startTime)?  $default,) {final _that = this;
switch (_that) {
case _UserPenaltyMatchDto() when $default != null:
return $default(_that.matchId,_that.title,_that.matchDate,_that.startTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserPenaltyMatchDto implements UserPenaltyMatchDto {
  const _UserPenaltyMatchDto({required this.matchId, required this.title, required this.matchDate, required this.startTime});
  factory _UserPenaltyMatchDto.fromJson(Map<String, dynamic> json) => _$UserPenaltyMatchDtoFromJson(json);

@override final  int matchId;
@override final  String title;
@override final  String matchDate;
@override final  String startTime;

/// Create a copy of UserPenaltyMatchDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPenaltyMatchDtoCopyWith<_UserPenaltyMatchDto> get copyWith => __$UserPenaltyMatchDtoCopyWithImpl<_UserPenaltyMatchDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserPenaltyMatchDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPenaltyMatchDto&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.title, title) || other.title == title)&&(identical(other.matchDate, matchDate) || other.matchDate == matchDate)&&(identical(other.startTime, startTime) || other.startTime == startTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,matchId,title,matchDate,startTime);

@override
String toString() {
  return 'UserPenaltyMatchDto(matchId: $matchId, title: $title, matchDate: $matchDate, startTime: $startTime)';
}


}

/// @nodoc
abstract mixin class _$UserPenaltyMatchDtoCopyWith<$Res> implements $UserPenaltyMatchDtoCopyWith<$Res> {
  factory _$UserPenaltyMatchDtoCopyWith(_UserPenaltyMatchDto value, $Res Function(_UserPenaltyMatchDto) _then) = __$UserPenaltyMatchDtoCopyWithImpl;
@override @useResult
$Res call({
 int matchId, String title, String matchDate, String startTime
});




}
/// @nodoc
class __$UserPenaltyMatchDtoCopyWithImpl<$Res>
    implements _$UserPenaltyMatchDtoCopyWith<$Res> {
  __$UserPenaltyMatchDtoCopyWithImpl(this._self, this._then);

  final _UserPenaltyMatchDto _self;
  final $Res Function(_UserPenaltyMatchDto) _then;

/// Create a copy of UserPenaltyMatchDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? matchId = null,Object? title = null,Object? matchDate = null,Object? startTime = null,}) {
  return _then(_UserPenaltyMatchDto(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,matchDate: null == matchDate ? _self.matchDate : matchDate // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$UserPenaltyItemDto {

 int get penaltyId; String get type; UserPenaltyMatchDto get match; String get createdAt; String? get hostNickname;
/// Create a copy of UserPenaltyItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPenaltyItemDtoCopyWith<UserPenaltyItemDto> get copyWith => _$UserPenaltyItemDtoCopyWithImpl<UserPenaltyItemDto>(this as UserPenaltyItemDto, _$identity);

  /// Serializes this UserPenaltyItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPenaltyItemDto&&(identical(other.penaltyId, penaltyId) || other.penaltyId == penaltyId)&&(identical(other.type, type) || other.type == type)&&(identical(other.match, match) || other.match == match)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.hostNickname, hostNickname) || other.hostNickname == hostNickname));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,penaltyId,type,match,createdAt,hostNickname);

@override
String toString() {
  return 'UserPenaltyItemDto(penaltyId: $penaltyId, type: $type, match: $match, createdAt: $createdAt, hostNickname: $hostNickname)';
}


}

/// @nodoc
abstract mixin class $UserPenaltyItemDtoCopyWith<$Res>  {
  factory $UserPenaltyItemDtoCopyWith(UserPenaltyItemDto value, $Res Function(UserPenaltyItemDto) _then) = _$UserPenaltyItemDtoCopyWithImpl;
@useResult
$Res call({
 int penaltyId, String type, UserPenaltyMatchDto match, String createdAt, String? hostNickname
});


$UserPenaltyMatchDtoCopyWith<$Res> get match;

}
/// @nodoc
class _$UserPenaltyItemDtoCopyWithImpl<$Res>
    implements $UserPenaltyItemDtoCopyWith<$Res> {
  _$UserPenaltyItemDtoCopyWithImpl(this._self, this._then);

  final UserPenaltyItemDto _self;
  final $Res Function(UserPenaltyItemDto) _then;

/// Create a copy of UserPenaltyItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? penaltyId = null,Object? type = null,Object? match = null,Object? createdAt = null,Object? hostNickname = freezed,}) {
  return _then(_self.copyWith(
penaltyId: null == penaltyId ? _self.penaltyId : penaltyId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,match: null == match ? _self.match : match // ignore: cast_nullable_to_non_nullable
as UserPenaltyMatchDto,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,hostNickname: freezed == hostNickname ? _self.hostNickname : hostNickname // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of UserPenaltyItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserPenaltyMatchDtoCopyWith<$Res> get match {
  
  return $UserPenaltyMatchDtoCopyWith<$Res>(_self.match, (value) {
    return _then(_self.copyWith(match: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserPenaltyItemDto].
extension UserPenaltyItemDtoPatterns on UserPenaltyItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserPenaltyItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserPenaltyItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserPenaltyItemDto value)  $default,){
final _that = this;
switch (_that) {
case _UserPenaltyItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserPenaltyItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserPenaltyItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int penaltyId,  String type,  UserPenaltyMatchDto match,  String createdAt,  String? hostNickname)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPenaltyItemDto() when $default != null:
return $default(_that.penaltyId,_that.type,_that.match,_that.createdAt,_that.hostNickname);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int penaltyId,  String type,  UserPenaltyMatchDto match,  String createdAt,  String? hostNickname)  $default,) {final _that = this;
switch (_that) {
case _UserPenaltyItemDto():
return $default(_that.penaltyId,_that.type,_that.match,_that.createdAt,_that.hostNickname);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int penaltyId,  String type,  UserPenaltyMatchDto match,  String createdAt,  String? hostNickname)?  $default,) {final _that = this;
switch (_that) {
case _UserPenaltyItemDto() when $default != null:
return $default(_that.penaltyId,_that.type,_that.match,_that.createdAt,_that.hostNickname);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserPenaltyItemDto implements UserPenaltyItemDto {
  const _UserPenaltyItemDto({required this.penaltyId, required this.type, required this.match, required this.createdAt, this.hostNickname});
  factory _UserPenaltyItemDto.fromJson(Map<String, dynamic> json) => _$UserPenaltyItemDtoFromJson(json);

@override final  int penaltyId;
@override final  String type;
@override final  UserPenaltyMatchDto match;
@override final  String createdAt;
@override final  String? hostNickname;

/// Create a copy of UserPenaltyItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPenaltyItemDtoCopyWith<_UserPenaltyItemDto> get copyWith => __$UserPenaltyItemDtoCopyWithImpl<_UserPenaltyItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserPenaltyItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPenaltyItemDto&&(identical(other.penaltyId, penaltyId) || other.penaltyId == penaltyId)&&(identical(other.type, type) || other.type == type)&&(identical(other.match, match) || other.match == match)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.hostNickname, hostNickname) || other.hostNickname == hostNickname));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,penaltyId,type,match,createdAt,hostNickname);

@override
String toString() {
  return 'UserPenaltyItemDto(penaltyId: $penaltyId, type: $type, match: $match, createdAt: $createdAt, hostNickname: $hostNickname)';
}


}

/// @nodoc
abstract mixin class _$UserPenaltyItemDtoCopyWith<$Res> implements $UserPenaltyItemDtoCopyWith<$Res> {
  factory _$UserPenaltyItemDtoCopyWith(_UserPenaltyItemDto value, $Res Function(_UserPenaltyItemDto) _then) = __$UserPenaltyItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int penaltyId, String type, UserPenaltyMatchDto match, String createdAt, String? hostNickname
});


@override $UserPenaltyMatchDtoCopyWith<$Res> get match;

}
/// @nodoc
class __$UserPenaltyItemDtoCopyWithImpl<$Res>
    implements _$UserPenaltyItemDtoCopyWith<$Res> {
  __$UserPenaltyItemDtoCopyWithImpl(this._self, this._then);

  final _UserPenaltyItemDto _self;
  final $Res Function(_UserPenaltyItemDto) _then;

/// Create a copy of UserPenaltyItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? penaltyId = null,Object? type = null,Object? match = null,Object? createdAt = null,Object? hostNickname = freezed,}) {
  return _then(_UserPenaltyItemDto(
penaltyId: null == penaltyId ? _self.penaltyId : penaltyId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,match: null == match ? _self.match : match // ignore: cast_nullable_to_non_nullable
as UserPenaltyMatchDto,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,hostNickname: freezed == hostNickname ? _self.hostNickname : hostNickname // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of UserPenaltyItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserPenaltyMatchDtoCopyWith<$Res> get match {
  
  return $UserPenaltyMatchDtoCopyWith<$Res>(_self.match, (value) {
    return _then(_self.copyWith(match: value));
  });
}
}


/// @nodoc
mixin _$UserPenaltyPageDto {

 List<UserPenaltyItemDto> get items; int get page; int get pageSize; int get totalElements; int get totalPages; bool get first; bool get last;
/// Create a copy of UserPenaltyPageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPenaltyPageDtoCopyWith<UserPenaltyPageDto> get copyWith => _$UserPenaltyPageDtoCopyWithImpl<UserPenaltyPageDto>(this as UserPenaltyPageDto, _$identity);

  /// Serializes this UserPenaltyPageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPenaltyPageDto&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.first, first) || other.first == first)&&(identical(other.last, last) || other.last == last));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),page,pageSize,totalElements,totalPages,first,last);

@override
String toString() {
  return 'UserPenaltyPageDto(items: $items, page: $page, pageSize: $pageSize, totalElements: $totalElements, totalPages: $totalPages, first: $first, last: $last)';
}


}

/// @nodoc
abstract mixin class $UserPenaltyPageDtoCopyWith<$Res>  {
  factory $UserPenaltyPageDtoCopyWith(UserPenaltyPageDto value, $Res Function(UserPenaltyPageDto) _then) = _$UserPenaltyPageDtoCopyWithImpl;
@useResult
$Res call({
 List<UserPenaltyItemDto> items, int page, int pageSize, int totalElements, int totalPages, bool first, bool last
});




}
/// @nodoc
class _$UserPenaltyPageDtoCopyWithImpl<$Res>
    implements $UserPenaltyPageDtoCopyWith<$Res> {
  _$UserPenaltyPageDtoCopyWithImpl(this._self, this._then);

  final UserPenaltyPageDto _self;
  final $Res Function(UserPenaltyPageDto) _then;

/// Create a copy of UserPenaltyPageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? page = null,Object? pageSize = null,Object? totalElements = null,Object? totalPages = null,Object? first = null,Object? last = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<UserPenaltyItemDto>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,totalElements: null == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,first: null == first ? _self.first : first // ignore: cast_nullable_to_non_nullable
as bool,last: null == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UserPenaltyPageDto].
extension UserPenaltyPageDtoPatterns on UserPenaltyPageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserPenaltyPageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserPenaltyPageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserPenaltyPageDto value)  $default,){
final _that = this;
switch (_that) {
case _UserPenaltyPageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserPenaltyPageDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserPenaltyPageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<UserPenaltyItemDto> items,  int page,  int pageSize,  int totalElements,  int totalPages,  bool first,  bool last)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPenaltyPageDto() when $default != null:
return $default(_that.items,_that.page,_that.pageSize,_that.totalElements,_that.totalPages,_that.first,_that.last);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<UserPenaltyItemDto> items,  int page,  int pageSize,  int totalElements,  int totalPages,  bool first,  bool last)  $default,) {final _that = this;
switch (_that) {
case _UserPenaltyPageDto():
return $default(_that.items,_that.page,_that.pageSize,_that.totalElements,_that.totalPages,_that.first,_that.last);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<UserPenaltyItemDto> items,  int page,  int pageSize,  int totalElements,  int totalPages,  bool first,  bool last)?  $default,) {final _that = this;
switch (_that) {
case _UserPenaltyPageDto() when $default != null:
return $default(_that.items,_that.page,_that.pageSize,_that.totalElements,_that.totalPages,_that.first,_that.last);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserPenaltyPageDto implements UserPenaltyPageDto {
  const _UserPenaltyPageDto({final  List<UserPenaltyItemDto> items = const <UserPenaltyItemDto>[], this.page = 0, this.pageSize = 20, this.totalElements = 0, this.totalPages = 0, this.first = true, this.last = true}): _items = items;
  factory _UserPenaltyPageDto.fromJson(Map<String, dynamic> json) => _$UserPenaltyPageDtoFromJson(json);

 final  List<UserPenaltyItemDto> _items;
@override@JsonKey() List<UserPenaltyItemDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  int page;
@override@JsonKey() final  int pageSize;
@override@JsonKey() final  int totalElements;
@override@JsonKey() final  int totalPages;
@override@JsonKey() final  bool first;
@override@JsonKey() final  bool last;

/// Create a copy of UserPenaltyPageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPenaltyPageDtoCopyWith<_UserPenaltyPageDto> get copyWith => __$UserPenaltyPageDtoCopyWithImpl<_UserPenaltyPageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserPenaltyPageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPenaltyPageDto&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.first, first) || other.first == first)&&(identical(other.last, last) || other.last == last));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),page,pageSize,totalElements,totalPages,first,last);

@override
String toString() {
  return 'UserPenaltyPageDto(items: $items, page: $page, pageSize: $pageSize, totalElements: $totalElements, totalPages: $totalPages, first: $first, last: $last)';
}


}

/// @nodoc
abstract mixin class _$UserPenaltyPageDtoCopyWith<$Res> implements $UserPenaltyPageDtoCopyWith<$Res> {
  factory _$UserPenaltyPageDtoCopyWith(_UserPenaltyPageDto value, $Res Function(_UserPenaltyPageDto) _then) = __$UserPenaltyPageDtoCopyWithImpl;
@override @useResult
$Res call({
 List<UserPenaltyItemDto> items, int page, int pageSize, int totalElements, int totalPages, bool first, bool last
});




}
/// @nodoc
class __$UserPenaltyPageDtoCopyWithImpl<$Res>
    implements _$UserPenaltyPageDtoCopyWith<$Res> {
  __$UserPenaltyPageDtoCopyWithImpl(this._self, this._then);

  final _UserPenaltyPageDto _self;
  final $Res Function(_UserPenaltyPageDto) _then;

/// Create a copy of UserPenaltyPageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? page = null,Object? pageSize = null,Object? totalElements = null,Object? totalPages = null,Object? first = null,Object? last = null,}) {
  return _then(_UserPenaltyPageDto(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<UserPenaltyItemDto>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,totalElements: null == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,first: null == first ? _self.first : first // ignore: cast_nullable_to_non_nullable
as bool,last: null == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$UserPenaltyPageEnvelope {

 bool get success; UserPenaltyPageDto? get data; String? get message; String? get code;
/// Create a copy of UserPenaltyPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPenaltyPageEnvelopeCopyWith<UserPenaltyPageEnvelope> get copyWith => _$UserPenaltyPageEnvelopeCopyWithImpl<UserPenaltyPageEnvelope>(this as UserPenaltyPageEnvelope, _$identity);

  /// Serializes this UserPenaltyPageEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPenaltyPageEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'UserPenaltyPageEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $UserPenaltyPageEnvelopeCopyWith<$Res>  {
  factory $UserPenaltyPageEnvelopeCopyWith(UserPenaltyPageEnvelope value, $Res Function(UserPenaltyPageEnvelope) _then) = _$UserPenaltyPageEnvelopeCopyWithImpl;
@useResult
$Res call({
 bool success, UserPenaltyPageDto? data, String? message, String? code
});


$UserPenaltyPageDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$UserPenaltyPageEnvelopeCopyWithImpl<$Res>
    implements $UserPenaltyPageEnvelopeCopyWith<$Res> {
  _$UserPenaltyPageEnvelopeCopyWithImpl(this._self, this._then);

  final UserPenaltyPageEnvelope _self;
  final $Res Function(UserPenaltyPageEnvelope) _then;

/// Create a copy of UserPenaltyPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserPenaltyPageDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of UserPenaltyPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserPenaltyPageDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $UserPenaltyPageDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserPenaltyPageEnvelope].
extension UserPenaltyPageEnvelopePatterns on UserPenaltyPageEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserPenaltyPageEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserPenaltyPageEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserPenaltyPageEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _UserPenaltyPageEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserPenaltyPageEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _UserPenaltyPageEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  UserPenaltyPageDto? data,  String? message,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPenaltyPageEnvelope() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  UserPenaltyPageDto? data,  String? message,  String? code)  $default,) {final _that = this;
switch (_that) {
case _UserPenaltyPageEnvelope():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  UserPenaltyPageDto? data,  String? message,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _UserPenaltyPageEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserPenaltyPageEnvelope implements UserPenaltyPageEnvelope {
  const _UserPenaltyPageEnvelope({required this.success, this.data, this.message, this.code});
  factory _UserPenaltyPageEnvelope.fromJson(Map<String, dynamic> json) => _$UserPenaltyPageEnvelopeFromJson(json);

@override final  bool success;
@override final  UserPenaltyPageDto? data;
@override final  String? message;
@override final  String? code;

/// Create a copy of UserPenaltyPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPenaltyPageEnvelopeCopyWith<_UserPenaltyPageEnvelope> get copyWith => __$UserPenaltyPageEnvelopeCopyWithImpl<_UserPenaltyPageEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserPenaltyPageEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPenaltyPageEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'UserPenaltyPageEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$UserPenaltyPageEnvelopeCopyWith<$Res> implements $UserPenaltyPageEnvelopeCopyWith<$Res> {
  factory _$UserPenaltyPageEnvelopeCopyWith(_UserPenaltyPageEnvelope value, $Res Function(_UserPenaltyPageEnvelope) _then) = __$UserPenaltyPageEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 bool success, UserPenaltyPageDto? data, String? message, String? code
});


@override $UserPenaltyPageDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$UserPenaltyPageEnvelopeCopyWithImpl<$Res>
    implements _$UserPenaltyPageEnvelopeCopyWith<$Res> {
  __$UserPenaltyPageEnvelopeCopyWithImpl(this._self, this._then);

  final _UserPenaltyPageEnvelope _self;
  final $Res Function(_UserPenaltyPageEnvelope) _then;

/// Create a copy of UserPenaltyPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_UserPenaltyPageEnvelope(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserPenaltyPageDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of UserPenaltyPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserPenaltyPageDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $UserPenaltyPageDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
