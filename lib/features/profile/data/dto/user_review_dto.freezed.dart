// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_review_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserReviewMatchDto {

 int get matchId; String get title; String get matchDate; String get startTime;
/// Create a copy of UserReviewMatchDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserReviewMatchDtoCopyWith<UserReviewMatchDto> get copyWith => _$UserReviewMatchDtoCopyWithImpl<UserReviewMatchDto>(this as UserReviewMatchDto, _$identity);

  /// Serializes this UserReviewMatchDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserReviewMatchDto&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.title, title) || other.title == title)&&(identical(other.matchDate, matchDate) || other.matchDate == matchDate)&&(identical(other.startTime, startTime) || other.startTime == startTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,matchId,title,matchDate,startTime);

@override
String toString() {
  return 'UserReviewMatchDto(matchId: $matchId, title: $title, matchDate: $matchDate, startTime: $startTime)';
}


}

/// @nodoc
abstract mixin class $UserReviewMatchDtoCopyWith<$Res>  {
  factory $UserReviewMatchDtoCopyWith(UserReviewMatchDto value, $Res Function(UserReviewMatchDto) _then) = _$UserReviewMatchDtoCopyWithImpl;
@useResult
$Res call({
 int matchId, String title, String matchDate, String startTime
});




}
/// @nodoc
class _$UserReviewMatchDtoCopyWithImpl<$Res>
    implements $UserReviewMatchDtoCopyWith<$Res> {
  _$UserReviewMatchDtoCopyWithImpl(this._self, this._then);

  final UserReviewMatchDto _self;
  final $Res Function(UserReviewMatchDto) _then;

/// Create a copy of UserReviewMatchDto
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


/// Adds pattern-matching-related methods to [UserReviewMatchDto].
extension UserReviewMatchDtoPatterns on UserReviewMatchDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserReviewMatchDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserReviewMatchDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserReviewMatchDto value)  $default,){
final _that = this;
switch (_that) {
case _UserReviewMatchDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserReviewMatchDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserReviewMatchDto() when $default != null:
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
case _UserReviewMatchDto() when $default != null:
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
case _UserReviewMatchDto():
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
case _UserReviewMatchDto() when $default != null:
return $default(_that.matchId,_that.title,_that.matchDate,_that.startTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserReviewMatchDto implements UserReviewMatchDto {
  const _UserReviewMatchDto({required this.matchId, required this.title, required this.matchDate, required this.startTime});
  factory _UserReviewMatchDto.fromJson(Map<String, dynamic> json) => _$UserReviewMatchDtoFromJson(json);

@override final  int matchId;
@override final  String title;
@override final  String matchDate;
@override final  String startTime;

/// Create a copy of UserReviewMatchDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserReviewMatchDtoCopyWith<_UserReviewMatchDto> get copyWith => __$UserReviewMatchDtoCopyWithImpl<_UserReviewMatchDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserReviewMatchDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserReviewMatchDto&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.title, title) || other.title == title)&&(identical(other.matchDate, matchDate) || other.matchDate == matchDate)&&(identical(other.startTime, startTime) || other.startTime == startTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,matchId,title,matchDate,startTime);

@override
String toString() {
  return 'UserReviewMatchDto(matchId: $matchId, title: $title, matchDate: $matchDate, startTime: $startTime)';
}


}

/// @nodoc
abstract mixin class _$UserReviewMatchDtoCopyWith<$Res> implements $UserReviewMatchDtoCopyWith<$Res> {
  factory _$UserReviewMatchDtoCopyWith(_UserReviewMatchDto value, $Res Function(_UserReviewMatchDto) _then) = __$UserReviewMatchDtoCopyWithImpl;
@override @useResult
$Res call({
 int matchId, String title, String matchDate, String startTime
});




}
/// @nodoc
class __$UserReviewMatchDtoCopyWithImpl<$Res>
    implements _$UserReviewMatchDtoCopyWith<$Res> {
  __$UserReviewMatchDtoCopyWithImpl(this._self, this._then);

  final _UserReviewMatchDto _self;
  final $Res Function(_UserReviewMatchDto) _then;

/// Create a copy of UserReviewMatchDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? matchId = null,Object? title = null,Object? matchDate = null,Object? startTime = null,}) {
  return _then(_UserReviewMatchDto(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,matchDate: null == matchDate ? _self.matchDate : matchDate // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$UserReviewReviewerDto {

 int get userId; String get nickname; String? get profileImg;
/// Create a copy of UserReviewReviewerDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserReviewReviewerDtoCopyWith<UserReviewReviewerDto> get copyWith => _$UserReviewReviewerDtoCopyWithImpl<UserReviewReviewerDto>(this as UserReviewReviewerDto, _$identity);

  /// Serializes this UserReviewReviewerDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserReviewReviewerDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImg, profileImg) || other.profileImg == profileImg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,nickname,profileImg);

@override
String toString() {
  return 'UserReviewReviewerDto(userId: $userId, nickname: $nickname, profileImg: $profileImg)';
}


}

/// @nodoc
abstract mixin class $UserReviewReviewerDtoCopyWith<$Res>  {
  factory $UserReviewReviewerDtoCopyWith(UserReviewReviewerDto value, $Res Function(UserReviewReviewerDto) _then) = _$UserReviewReviewerDtoCopyWithImpl;
@useResult
$Res call({
 int userId, String nickname, String? profileImg
});




}
/// @nodoc
class _$UserReviewReviewerDtoCopyWithImpl<$Res>
    implements $UserReviewReviewerDtoCopyWith<$Res> {
  _$UserReviewReviewerDtoCopyWithImpl(this._self, this._then);

  final UserReviewReviewerDto _self;
  final $Res Function(UserReviewReviewerDto) _then;

/// Create a copy of UserReviewReviewerDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? nickname = null,Object? profileImg = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImg: freezed == profileImg ? _self.profileImg : profileImg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserReviewReviewerDto].
extension UserReviewReviewerDtoPatterns on UserReviewReviewerDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserReviewReviewerDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserReviewReviewerDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserReviewReviewerDto value)  $default,){
final _that = this;
switch (_that) {
case _UserReviewReviewerDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserReviewReviewerDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserReviewReviewerDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  String nickname,  String? profileImg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserReviewReviewerDto() when $default != null:
return $default(_that.userId,_that.nickname,_that.profileImg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  String nickname,  String? profileImg)  $default,) {final _that = this;
switch (_that) {
case _UserReviewReviewerDto():
return $default(_that.userId,_that.nickname,_that.profileImg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  String nickname,  String? profileImg)?  $default,) {final _that = this;
switch (_that) {
case _UserReviewReviewerDto() when $default != null:
return $default(_that.userId,_that.nickname,_that.profileImg);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserReviewReviewerDto implements UserReviewReviewerDto {
  const _UserReviewReviewerDto({required this.userId, required this.nickname, this.profileImg});
  factory _UserReviewReviewerDto.fromJson(Map<String, dynamic> json) => _$UserReviewReviewerDtoFromJson(json);

@override final  int userId;
@override final  String nickname;
@override final  String? profileImg;

/// Create a copy of UserReviewReviewerDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserReviewReviewerDtoCopyWith<_UserReviewReviewerDto> get copyWith => __$UserReviewReviewerDtoCopyWithImpl<_UserReviewReviewerDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserReviewReviewerDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserReviewReviewerDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImg, profileImg) || other.profileImg == profileImg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,nickname,profileImg);

@override
String toString() {
  return 'UserReviewReviewerDto(userId: $userId, nickname: $nickname, profileImg: $profileImg)';
}


}

/// @nodoc
abstract mixin class _$UserReviewReviewerDtoCopyWith<$Res> implements $UserReviewReviewerDtoCopyWith<$Res> {
  factory _$UserReviewReviewerDtoCopyWith(_UserReviewReviewerDto value, $Res Function(_UserReviewReviewerDto) _then) = __$UserReviewReviewerDtoCopyWithImpl;
@override @useResult
$Res call({
 int userId, String nickname, String? profileImg
});




}
/// @nodoc
class __$UserReviewReviewerDtoCopyWithImpl<$Res>
    implements _$UserReviewReviewerDtoCopyWith<$Res> {
  __$UserReviewReviewerDtoCopyWithImpl(this._self, this._then);

  final _UserReviewReviewerDto _self;
  final $Res Function(_UserReviewReviewerDto) _then;

/// Create a copy of UserReviewReviewerDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? nickname = null,Object? profileImg = freezed,}) {
  return _then(_UserReviewReviewerDto(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImg: freezed == profileImg ? _self.profileImg : profileImg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$UserReviewItemDto {

 int get reviewId; UserReviewMatchDto get match; UserReviewReviewerDto? get reviewer; String? get sentiment; int? get score; List<String> get hashtags; String? get detail; String get createdAt; bool get contentRevealed; bool get reviewSubmitted;
/// Create a copy of UserReviewItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserReviewItemDtoCopyWith<UserReviewItemDto> get copyWith => _$UserReviewItemDtoCopyWithImpl<UserReviewItemDto>(this as UserReviewItemDto, _$identity);

  /// Serializes this UserReviewItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserReviewItemDto&&(identical(other.reviewId, reviewId) || other.reviewId == reviewId)&&(identical(other.match, match) || other.match == match)&&(identical(other.reviewer, reviewer) || other.reviewer == reviewer)&&(identical(other.sentiment, sentiment) || other.sentiment == sentiment)&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other.hashtags, hashtags)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.contentRevealed, contentRevealed) || other.contentRevealed == contentRevealed)&&(identical(other.reviewSubmitted, reviewSubmitted) || other.reviewSubmitted == reviewSubmitted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reviewId,match,reviewer,sentiment,score,const DeepCollectionEquality().hash(hashtags),detail,createdAt,contentRevealed,reviewSubmitted);

@override
String toString() {
  return 'UserReviewItemDto(reviewId: $reviewId, match: $match, reviewer: $reviewer, sentiment: $sentiment, score: $score, hashtags: $hashtags, detail: $detail, createdAt: $createdAt, contentRevealed: $contentRevealed, reviewSubmitted: $reviewSubmitted)';
}


}

/// @nodoc
abstract mixin class $UserReviewItemDtoCopyWith<$Res>  {
  factory $UserReviewItemDtoCopyWith(UserReviewItemDto value, $Res Function(UserReviewItemDto) _then) = _$UserReviewItemDtoCopyWithImpl;
@useResult
$Res call({
 int reviewId, UserReviewMatchDto match, UserReviewReviewerDto? reviewer, String? sentiment, int? score, List<String> hashtags, String? detail, String createdAt, bool contentRevealed, bool reviewSubmitted
});


$UserReviewMatchDtoCopyWith<$Res> get match;$UserReviewReviewerDtoCopyWith<$Res>? get reviewer;

}
/// @nodoc
class _$UserReviewItemDtoCopyWithImpl<$Res>
    implements $UserReviewItemDtoCopyWith<$Res> {
  _$UserReviewItemDtoCopyWithImpl(this._self, this._then);

  final UserReviewItemDto _self;
  final $Res Function(UserReviewItemDto) _then;

/// Create a copy of UserReviewItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reviewId = null,Object? match = null,Object? reviewer = freezed,Object? sentiment = freezed,Object? score = freezed,Object? hashtags = null,Object? detail = freezed,Object? createdAt = null,Object? contentRevealed = null,Object? reviewSubmitted = null,}) {
  return _then(_self.copyWith(
reviewId: null == reviewId ? _self.reviewId : reviewId // ignore: cast_nullable_to_non_nullable
as int,match: null == match ? _self.match : match // ignore: cast_nullable_to_non_nullable
as UserReviewMatchDto,reviewer: freezed == reviewer ? _self.reviewer : reviewer // ignore: cast_nullable_to_non_nullable
as UserReviewReviewerDto?,sentiment: freezed == sentiment ? _self.sentiment : sentiment // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,hashtags: null == hashtags ? _self.hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,contentRevealed: null == contentRevealed ? _self.contentRevealed : contentRevealed // ignore: cast_nullable_to_non_nullable
as bool,reviewSubmitted: null == reviewSubmitted ? _self.reviewSubmitted : reviewSubmitted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of UserReviewItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserReviewMatchDtoCopyWith<$Res> get match {
  
  return $UserReviewMatchDtoCopyWith<$Res>(_self.match, (value) {
    return _then(_self.copyWith(match: value));
  });
}/// Create a copy of UserReviewItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserReviewReviewerDtoCopyWith<$Res>? get reviewer {
    if (_self.reviewer == null) {
    return null;
  }

  return $UserReviewReviewerDtoCopyWith<$Res>(_self.reviewer!, (value) {
    return _then(_self.copyWith(reviewer: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserReviewItemDto].
extension UserReviewItemDtoPatterns on UserReviewItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserReviewItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserReviewItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserReviewItemDto value)  $default,){
final _that = this;
switch (_that) {
case _UserReviewItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserReviewItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserReviewItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int reviewId,  UserReviewMatchDto match,  UserReviewReviewerDto? reviewer,  String? sentiment,  int? score,  List<String> hashtags,  String? detail,  String createdAt,  bool contentRevealed,  bool reviewSubmitted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserReviewItemDto() when $default != null:
return $default(_that.reviewId,_that.match,_that.reviewer,_that.sentiment,_that.score,_that.hashtags,_that.detail,_that.createdAt,_that.contentRevealed,_that.reviewSubmitted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int reviewId,  UserReviewMatchDto match,  UserReviewReviewerDto? reviewer,  String? sentiment,  int? score,  List<String> hashtags,  String? detail,  String createdAt,  bool contentRevealed,  bool reviewSubmitted)  $default,) {final _that = this;
switch (_that) {
case _UserReviewItemDto():
return $default(_that.reviewId,_that.match,_that.reviewer,_that.sentiment,_that.score,_that.hashtags,_that.detail,_that.createdAt,_that.contentRevealed,_that.reviewSubmitted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int reviewId,  UserReviewMatchDto match,  UserReviewReviewerDto? reviewer,  String? sentiment,  int? score,  List<String> hashtags,  String? detail,  String createdAt,  bool contentRevealed,  bool reviewSubmitted)?  $default,) {final _that = this;
switch (_that) {
case _UserReviewItemDto() when $default != null:
return $default(_that.reviewId,_that.match,_that.reviewer,_that.sentiment,_that.score,_that.hashtags,_that.detail,_that.createdAt,_that.contentRevealed,_that.reviewSubmitted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserReviewItemDto implements UserReviewItemDto {
  const _UserReviewItemDto({required this.reviewId, required this.match, this.reviewer, this.sentiment, this.score, final  List<String> hashtags = const <String>[], this.detail, required this.createdAt, this.contentRevealed = false, this.reviewSubmitted = true}): _hashtags = hashtags;
  factory _UserReviewItemDto.fromJson(Map<String, dynamic> json) => _$UserReviewItemDtoFromJson(json);

@override final  int reviewId;
@override final  UserReviewMatchDto match;
@override final  UserReviewReviewerDto? reviewer;
@override final  String? sentiment;
@override final  int? score;
 final  List<String> _hashtags;
@override@JsonKey() List<String> get hashtags {
  if (_hashtags is EqualUnmodifiableListView) return _hashtags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hashtags);
}

@override final  String? detail;
@override final  String createdAt;
@override@JsonKey() final  bool contentRevealed;
@override@JsonKey() final  bool reviewSubmitted;

/// Create a copy of UserReviewItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserReviewItemDtoCopyWith<_UserReviewItemDto> get copyWith => __$UserReviewItemDtoCopyWithImpl<_UserReviewItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserReviewItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserReviewItemDto&&(identical(other.reviewId, reviewId) || other.reviewId == reviewId)&&(identical(other.match, match) || other.match == match)&&(identical(other.reviewer, reviewer) || other.reviewer == reviewer)&&(identical(other.sentiment, sentiment) || other.sentiment == sentiment)&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other._hashtags, _hashtags)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.contentRevealed, contentRevealed) || other.contentRevealed == contentRevealed)&&(identical(other.reviewSubmitted, reviewSubmitted) || other.reviewSubmitted == reviewSubmitted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reviewId,match,reviewer,sentiment,score,const DeepCollectionEquality().hash(_hashtags),detail,createdAt,contentRevealed,reviewSubmitted);

@override
String toString() {
  return 'UserReviewItemDto(reviewId: $reviewId, match: $match, reviewer: $reviewer, sentiment: $sentiment, score: $score, hashtags: $hashtags, detail: $detail, createdAt: $createdAt, contentRevealed: $contentRevealed, reviewSubmitted: $reviewSubmitted)';
}


}

/// @nodoc
abstract mixin class _$UserReviewItemDtoCopyWith<$Res> implements $UserReviewItemDtoCopyWith<$Res> {
  factory _$UserReviewItemDtoCopyWith(_UserReviewItemDto value, $Res Function(_UserReviewItemDto) _then) = __$UserReviewItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int reviewId, UserReviewMatchDto match, UserReviewReviewerDto? reviewer, String? sentiment, int? score, List<String> hashtags, String? detail, String createdAt, bool contentRevealed, bool reviewSubmitted
});


@override $UserReviewMatchDtoCopyWith<$Res> get match;@override $UserReviewReviewerDtoCopyWith<$Res>? get reviewer;

}
/// @nodoc
class __$UserReviewItemDtoCopyWithImpl<$Res>
    implements _$UserReviewItemDtoCopyWith<$Res> {
  __$UserReviewItemDtoCopyWithImpl(this._self, this._then);

  final _UserReviewItemDto _self;
  final $Res Function(_UserReviewItemDto) _then;

/// Create a copy of UserReviewItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reviewId = null,Object? match = null,Object? reviewer = freezed,Object? sentiment = freezed,Object? score = freezed,Object? hashtags = null,Object? detail = freezed,Object? createdAt = null,Object? contentRevealed = null,Object? reviewSubmitted = null,}) {
  return _then(_UserReviewItemDto(
reviewId: null == reviewId ? _self.reviewId : reviewId // ignore: cast_nullable_to_non_nullable
as int,match: null == match ? _self.match : match // ignore: cast_nullable_to_non_nullable
as UserReviewMatchDto,reviewer: freezed == reviewer ? _self.reviewer : reviewer // ignore: cast_nullable_to_non_nullable
as UserReviewReviewerDto?,sentiment: freezed == sentiment ? _self.sentiment : sentiment // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,hashtags: null == hashtags ? _self._hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,contentRevealed: null == contentRevealed ? _self.contentRevealed : contentRevealed // ignore: cast_nullable_to_non_nullable
as bool,reviewSubmitted: null == reviewSubmitted ? _self.reviewSubmitted : reviewSubmitted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of UserReviewItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserReviewMatchDtoCopyWith<$Res> get match {
  
  return $UserReviewMatchDtoCopyWith<$Res>(_self.match, (value) {
    return _then(_self.copyWith(match: value));
  });
}/// Create a copy of UserReviewItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserReviewReviewerDtoCopyWith<$Res>? get reviewer {
    if (_self.reviewer == null) {
    return null;
  }

  return $UserReviewReviewerDtoCopyWith<$Res>(_self.reviewer!, (value) {
    return _then(_self.copyWith(reviewer: value));
  });
}
}


/// @nodoc
mixin _$UserReviewPageDto {

 List<UserReviewItemDto> get items; int get page; int get pageSize; int get totalElements; int get totalPages; bool get first; bool get last;
/// Create a copy of UserReviewPageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserReviewPageDtoCopyWith<UserReviewPageDto> get copyWith => _$UserReviewPageDtoCopyWithImpl<UserReviewPageDto>(this as UserReviewPageDto, _$identity);

  /// Serializes this UserReviewPageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserReviewPageDto&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.first, first) || other.first == first)&&(identical(other.last, last) || other.last == last));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),page,pageSize,totalElements,totalPages,first,last);

@override
String toString() {
  return 'UserReviewPageDto(items: $items, page: $page, pageSize: $pageSize, totalElements: $totalElements, totalPages: $totalPages, first: $first, last: $last)';
}


}

/// @nodoc
abstract mixin class $UserReviewPageDtoCopyWith<$Res>  {
  factory $UserReviewPageDtoCopyWith(UserReviewPageDto value, $Res Function(UserReviewPageDto) _then) = _$UserReviewPageDtoCopyWithImpl;
@useResult
$Res call({
 List<UserReviewItemDto> items, int page, int pageSize, int totalElements, int totalPages, bool first, bool last
});




}
/// @nodoc
class _$UserReviewPageDtoCopyWithImpl<$Res>
    implements $UserReviewPageDtoCopyWith<$Res> {
  _$UserReviewPageDtoCopyWithImpl(this._self, this._then);

  final UserReviewPageDto _self;
  final $Res Function(UserReviewPageDto) _then;

/// Create a copy of UserReviewPageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? page = null,Object? pageSize = null,Object? totalElements = null,Object? totalPages = null,Object? first = null,Object? last = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<UserReviewItemDto>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,totalElements: null == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,first: null == first ? _self.first : first // ignore: cast_nullable_to_non_nullable
as bool,last: null == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UserReviewPageDto].
extension UserReviewPageDtoPatterns on UserReviewPageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserReviewPageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserReviewPageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserReviewPageDto value)  $default,){
final _that = this;
switch (_that) {
case _UserReviewPageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserReviewPageDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserReviewPageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<UserReviewItemDto> items,  int page,  int pageSize,  int totalElements,  int totalPages,  bool first,  bool last)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserReviewPageDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<UserReviewItemDto> items,  int page,  int pageSize,  int totalElements,  int totalPages,  bool first,  bool last)  $default,) {final _that = this;
switch (_that) {
case _UserReviewPageDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<UserReviewItemDto> items,  int page,  int pageSize,  int totalElements,  int totalPages,  bool first,  bool last)?  $default,) {final _that = this;
switch (_that) {
case _UserReviewPageDto() when $default != null:
return $default(_that.items,_that.page,_that.pageSize,_that.totalElements,_that.totalPages,_that.first,_that.last);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserReviewPageDto implements UserReviewPageDto {
  const _UserReviewPageDto({final  List<UserReviewItemDto> items = const <UserReviewItemDto>[], this.page = 0, this.pageSize = 20, this.totalElements = 0, this.totalPages = 0, this.first = true, this.last = true}): _items = items;
  factory _UserReviewPageDto.fromJson(Map<String, dynamic> json) => _$UserReviewPageDtoFromJson(json);

 final  List<UserReviewItemDto> _items;
@override@JsonKey() List<UserReviewItemDto> get items {
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

/// Create a copy of UserReviewPageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserReviewPageDtoCopyWith<_UserReviewPageDto> get copyWith => __$UserReviewPageDtoCopyWithImpl<_UserReviewPageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserReviewPageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserReviewPageDto&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.first, first) || other.first == first)&&(identical(other.last, last) || other.last == last));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),page,pageSize,totalElements,totalPages,first,last);

@override
String toString() {
  return 'UserReviewPageDto(items: $items, page: $page, pageSize: $pageSize, totalElements: $totalElements, totalPages: $totalPages, first: $first, last: $last)';
}


}

/// @nodoc
abstract mixin class _$UserReviewPageDtoCopyWith<$Res> implements $UserReviewPageDtoCopyWith<$Res> {
  factory _$UserReviewPageDtoCopyWith(_UserReviewPageDto value, $Res Function(_UserReviewPageDto) _then) = __$UserReviewPageDtoCopyWithImpl;
@override @useResult
$Res call({
 List<UserReviewItemDto> items, int page, int pageSize, int totalElements, int totalPages, bool first, bool last
});




}
/// @nodoc
class __$UserReviewPageDtoCopyWithImpl<$Res>
    implements _$UserReviewPageDtoCopyWith<$Res> {
  __$UserReviewPageDtoCopyWithImpl(this._self, this._then);

  final _UserReviewPageDto _self;
  final $Res Function(_UserReviewPageDto) _then;

/// Create a copy of UserReviewPageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? page = null,Object? pageSize = null,Object? totalElements = null,Object? totalPages = null,Object? first = null,Object? last = null,}) {
  return _then(_UserReviewPageDto(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<UserReviewItemDto>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
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
mixin _$UserReviewPageEnvelope {

 bool get success; UserReviewPageDto? get data; String? get message; String? get code;
/// Create a copy of UserReviewPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserReviewPageEnvelopeCopyWith<UserReviewPageEnvelope> get copyWith => _$UserReviewPageEnvelopeCopyWithImpl<UserReviewPageEnvelope>(this as UserReviewPageEnvelope, _$identity);

  /// Serializes this UserReviewPageEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserReviewPageEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'UserReviewPageEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $UserReviewPageEnvelopeCopyWith<$Res>  {
  factory $UserReviewPageEnvelopeCopyWith(UserReviewPageEnvelope value, $Res Function(UserReviewPageEnvelope) _then) = _$UserReviewPageEnvelopeCopyWithImpl;
@useResult
$Res call({
 bool success, UserReviewPageDto? data, String? message, String? code
});


$UserReviewPageDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$UserReviewPageEnvelopeCopyWithImpl<$Res>
    implements $UserReviewPageEnvelopeCopyWith<$Res> {
  _$UserReviewPageEnvelopeCopyWithImpl(this._self, this._then);

  final UserReviewPageEnvelope _self;
  final $Res Function(UserReviewPageEnvelope) _then;

/// Create a copy of UserReviewPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserReviewPageDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of UserReviewPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserReviewPageDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $UserReviewPageDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserReviewPageEnvelope].
extension UserReviewPageEnvelopePatterns on UserReviewPageEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserReviewPageEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserReviewPageEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserReviewPageEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _UserReviewPageEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserReviewPageEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _UserReviewPageEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  UserReviewPageDto? data,  String? message,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserReviewPageEnvelope() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  UserReviewPageDto? data,  String? message,  String? code)  $default,) {final _that = this;
switch (_that) {
case _UserReviewPageEnvelope():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  UserReviewPageDto? data,  String? message,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _UserReviewPageEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserReviewPageEnvelope implements UserReviewPageEnvelope {
  const _UserReviewPageEnvelope({required this.success, this.data, this.message, this.code});
  factory _UserReviewPageEnvelope.fromJson(Map<String, dynamic> json) => _$UserReviewPageEnvelopeFromJson(json);

@override final  bool success;
@override final  UserReviewPageDto? data;
@override final  String? message;
@override final  String? code;

/// Create a copy of UserReviewPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserReviewPageEnvelopeCopyWith<_UserReviewPageEnvelope> get copyWith => __$UserReviewPageEnvelopeCopyWithImpl<_UserReviewPageEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserReviewPageEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserReviewPageEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'UserReviewPageEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$UserReviewPageEnvelopeCopyWith<$Res> implements $UserReviewPageEnvelopeCopyWith<$Res> {
  factory _$UserReviewPageEnvelopeCopyWith(_UserReviewPageEnvelope value, $Res Function(_UserReviewPageEnvelope) _then) = __$UserReviewPageEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 bool success, UserReviewPageDto? data, String? message, String? code
});


@override $UserReviewPageDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$UserReviewPageEnvelopeCopyWithImpl<$Res>
    implements _$UserReviewPageEnvelopeCopyWith<$Res> {
  __$UserReviewPageEnvelopeCopyWithImpl(this._self, this._then);

  final _UserReviewPageEnvelope _self;
  final $Res Function(_UserReviewPageEnvelope) _then;

/// Create a copy of UserReviewPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_UserReviewPageEnvelope(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserReviewPageDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of UserReviewPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserReviewPageDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $UserReviewPageDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
