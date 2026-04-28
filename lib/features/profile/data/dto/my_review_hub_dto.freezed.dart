// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_review_hub_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MatchReviewSummaryDto {

 int get matchId; String get title; String get matchDate; String get startTime;
/// Create a copy of MatchReviewSummaryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchReviewSummaryDtoCopyWith<MatchReviewSummaryDto> get copyWith => _$MatchReviewSummaryDtoCopyWithImpl<MatchReviewSummaryDto>(this as MatchReviewSummaryDto, _$identity);

  /// Serializes this MatchReviewSummaryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchReviewSummaryDto&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.title, title) || other.title == title)&&(identical(other.matchDate, matchDate) || other.matchDate == matchDate)&&(identical(other.startTime, startTime) || other.startTime == startTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,matchId,title,matchDate,startTime);

@override
String toString() {
  return 'MatchReviewSummaryDto(matchId: $matchId, title: $title, matchDate: $matchDate, startTime: $startTime)';
}


}

/// @nodoc
abstract mixin class $MatchReviewSummaryDtoCopyWith<$Res>  {
  factory $MatchReviewSummaryDtoCopyWith(MatchReviewSummaryDto value, $Res Function(MatchReviewSummaryDto) _then) = _$MatchReviewSummaryDtoCopyWithImpl;
@useResult
$Res call({
 int matchId, String title, String matchDate, String startTime
});




}
/// @nodoc
class _$MatchReviewSummaryDtoCopyWithImpl<$Res>
    implements $MatchReviewSummaryDtoCopyWith<$Res> {
  _$MatchReviewSummaryDtoCopyWithImpl(this._self, this._then);

  final MatchReviewSummaryDto _self;
  final $Res Function(MatchReviewSummaryDto) _then;

/// Create a copy of MatchReviewSummaryDto
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


/// Adds pattern-matching-related methods to [MatchReviewSummaryDto].
extension MatchReviewSummaryDtoPatterns on MatchReviewSummaryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchReviewSummaryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchReviewSummaryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchReviewSummaryDto value)  $default,){
final _that = this;
switch (_that) {
case _MatchReviewSummaryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchReviewSummaryDto value)?  $default,){
final _that = this;
switch (_that) {
case _MatchReviewSummaryDto() when $default != null:
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
case _MatchReviewSummaryDto() when $default != null:
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
case _MatchReviewSummaryDto():
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
case _MatchReviewSummaryDto() when $default != null:
return $default(_that.matchId,_that.title,_that.matchDate,_that.startTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchReviewSummaryDto implements MatchReviewSummaryDto {
  const _MatchReviewSummaryDto({required this.matchId, required this.title, required this.matchDate, required this.startTime});
  factory _MatchReviewSummaryDto.fromJson(Map<String, dynamic> json) => _$MatchReviewSummaryDtoFromJson(json);

@override final  int matchId;
@override final  String title;
@override final  String matchDate;
@override final  String startTime;

/// Create a copy of MatchReviewSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchReviewSummaryDtoCopyWith<_MatchReviewSummaryDto> get copyWith => __$MatchReviewSummaryDtoCopyWithImpl<_MatchReviewSummaryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchReviewSummaryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchReviewSummaryDto&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.title, title) || other.title == title)&&(identical(other.matchDate, matchDate) || other.matchDate == matchDate)&&(identical(other.startTime, startTime) || other.startTime == startTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,matchId,title,matchDate,startTime);

@override
String toString() {
  return 'MatchReviewSummaryDto(matchId: $matchId, title: $title, matchDate: $matchDate, startTime: $startTime)';
}


}

/// @nodoc
abstract mixin class _$MatchReviewSummaryDtoCopyWith<$Res> implements $MatchReviewSummaryDtoCopyWith<$Res> {
  factory _$MatchReviewSummaryDtoCopyWith(_MatchReviewSummaryDto value, $Res Function(_MatchReviewSummaryDto) _then) = __$MatchReviewSummaryDtoCopyWithImpl;
@override @useResult
$Res call({
 int matchId, String title, String matchDate, String startTime
});




}
/// @nodoc
class __$MatchReviewSummaryDtoCopyWithImpl<$Res>
    implements _$MatchReviewSummaryDtoCopyWith<$Res> {
  __$MatchReviewSummaryDtoCopyWithImpl(this._self, this._then);

  final _MatchReviewSummaryDto _self;
  final $Res Function(_MatchReviewSummaryDto) _then;

/// Create a copy of MatchReviewSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? matchId = null,Object? title = null,Object? matchDate = null,Object? startTime = null,}) {
  return _then(_MatchReviewSummaryDto(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,matchDate: null == matchDate ? _self.matchDate : matchDate // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ReviewerPublicSummaryDto {

 int get userId; String get nickname; String? get profileImg;
/// Create a copy of ReviewerPublicSummaryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewerPublicSummaryDtoCopyWith<ReviewerPublicSummaryDto> get copyWith => _$ReviewerPublicSummaryDtoCopyWithImpl<ReviewerPublicSummaryDto>(this as ReviewerPublicSummaryDto, _$identity);

  /// Serializes this ReviewerPublicSummaryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewerPublicSummaryDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImg, profileImg) || other.profileImg == profileImg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,nickname,profileImg);

@override
String toString() {
  return 'ReviewerPublicSummaryDto(userId: $userId, nickname: $nickname, profileImg: $profileImg)';
}


}

/// @nodoc
abstract mixin class $ReviewerPublicSummaryDtoCopyWith<$Res>  {
  factory $ReviewerPublicSummaryDtoCopyWith(ReviewerPublicSummaryDto value, $Res Function(ReviewerPublicSummaryDto) _then) = _$ReviewerPublicSummaryDtoCopyWithImpl;
@useResult
$Res call({
 int userId, String nickname, String? profileImg
});




}
/// @nodoc
class _$ReviewerPublicSummaryDtoCopyWithImpl<$Res>
    implements $ReviewerPublicSummaryDtoCopyWith<$Res> {
  _$ReviewerPublicSummaryDtoCopyWithImpl(this._self, this._then);

  final ReviewerPublicSummaryDto _self;
  final $Res Function(ReviewerPublicSummaryDto) _then;

/// Create a copy of ReviewerPublicSummaryDto
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


/// Adds pattern-matching-related methods to [ReviewerPublicSummaryDto].
extension ReviewerPublicSummaryDtoPatterns on ReviewerPublicSummaryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewerPublicSummaryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewerPublicSummaryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewerPublicSummaryDto value)  $default,){
final _that = this;
switch (_that) {
case _ReviewerPublicSummaryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewerPublicSummaryDto value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewerPublicSummaryDto() when $default != null:
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
case _ReviewerPublicSummaryDto() when $default != null:
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
case _ReviewerPublicSummaryDto():
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
case _ReviewerPublicSummaryDto() when $default != null:
return $default(_that.userId,_that.nickname,_that.profileImg);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewerPublicSummaryDto implements ReviewerPublicSummaryDto {
  const _ReviewerPublicSummaryDto({required this.userId, required this.nickname, this.profileImg});
  factory _ReviewerPublicSummaryDto.fromJson(Map<String, dynamic> json) => _$ReviewerPublicSummaryDtoFromJson(json);

@override final  int userId;
@override final  String nickname;
@override final  String? profileImg;

/// Create a copy of ReviewerPublicSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewerPublicSummaryDtoCopyWith<_ReviewerPublicSummaryDto> get copyWith => __$ReviewerPublicSummaryDtoCopyWithImpl<_ReviewerPublicSummaryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewerPublicSummaryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewerPublicSummaryDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImg, profileImg) || other.profileImg == profileImg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,nickname,profileImg);

@override
String toString() {
  return 'ReviewerPublicSummaryDto(userId: $userId, nickname: $nickname, profileImg: $profileImg)';
}


}

/// @nodoc
abstract mixin class _$ReviewerPublicSummaryDtoCopyWith<$Res> implements $ReviewerPublicSummaryDtoCopyWith<$Res> {
  factory _$ReviewerPublicSummaryDtoCopyWith(_ReviewerPublicSummaryDto value, $Res Function(_ReviewerPublicSummaryDto) _then) = __$ReviewerPublicSummaryDtoCopyWithImpl;
@override @useResult
$Res call({
 int userId, String nickname, String? profileImg
});




}
/// @nodoc
class __$ReviewerPublicSummaryDtoCopyWithImpl<$Res>
    implements _$ReviewerPublicSummaryDtoCopyWith<$Res> {
  __$ReviewerPublicSummaryDtoCopyWithImpl(this._self, this._then);

  final _ReviewerPublicSummaryDto _self;
  final $Res Function(_ReviewerPublicSummaryDto) _then;

/// Create a copy of ReviewerPublicSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? nickname = null,Object? profileImg = freezed,}) {
  return _then(_ReviewerPublicSummaryDto(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImg: freezed == profileImg ? _self.profileImg : profileImg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$WrittenReviewListItemDto {

 int get reviewId; MatchReviewSummaryDto get match; ReviewerPublicSummaryDto get reviewee; String? get sentiment; int? get score; List<String> get hashtags; String? get detail; String get createdAt;
/// Create a copy of WrittenReviewListItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WrittenReviewListItemDtoCopyWith<WrittenReviewListItemDto> get copyWith => _$WrittenReviewListItemDtoCopyWithImpl<WrittenReviewListItemDto>(this as WrittenReviewListItemDto, _$identity);

  /// Serializes this WrittenReviewListItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WrittenReviewListItemDto&&(identical(other.reviewId, reviewId) || other.reviewId == reviewId)&&(identical(other.match, match) || other.match == match)&&(identical(other.reviewee, reviewee) || other.reviewee == reviewee)&&(identical(other.sentiment, sentiment) || other.sentiment == sentiment)&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other.hashtags, hashtags)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reviewId,match,reviewee,sentiment,score,const DeepCollectionEquality().hash(hashtags),detail,createdAt);

@override
String toString() {
  return 'WrittenReviewListItemDto(reviewId: $reviewId, match: $match, reviewee: $reviewee, sentiment: $sentiment, score: $score, hashtags: $hashtags, detail: $detail, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $WrittenReviewListItemDtoCopyWith<$Res>  {
  factory $WrittenReviewListItemDtoCopyWith(WrittenReviewListItemDto value, $Res Function(WrittenReviewListItemDto) _then) = _$WrittenReviewListItemDtoCopyWithImpl;
@useResult
$Res call({
 int reviewId, MatchReviewSummaryDto match, ReviewerPublicSummaryDto reviewee, String? sentiment, int? score, List<String> hashtags, String? detail, String createdAt
});


$MatchReviewSummaryDtoCopyWith<$Res> get match;$ReviewerPublicSummaryDtoCopyWith<$Res> get reviewee;

}
/// @nodoc
class _$WrittenReviewListItemDtoCopyWithImpl<$Res>
    implements $WrittenReviewListItemDtoCopyWith<$Res> {
  _$WrittenReviewListItemDtoCopyWithImpl(this._self, this._then);

  final WrittenReviewListItemDto _self;
  final $Res Function(WrittenReviewListItemDto) _then;

/// Create a copy of WrittenReviewListItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reviewId = null,Object? match = null,Object? reviewee = null,Object? sentiment = freezed,Object? score = freezed,Object? hashtags = null,Object? detail = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
reviewId: null == reviewId ? _self.reviewId : reviewId // ignore: cast_nullable_to_non_nullable
as int,match: null == match ? _self.match : match // ignore: cast_nullable_to_non_nullable
as MatchReviewSummaryDto,reviewee: null == reviewee ? _self.reviewee : reviewee // ignore: cast_nullable_to_non_nullable
as ReviewerPublicSummaryDto,sentiment: freezed == sentiment ? _self.sentiment : sentiment // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,hashtags: null == hashtags ? _self.hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of WrittenReviewListItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchReviewSummaryDtoCopyWith<$Res> get match {
  
  return $MatchReviewSummaryDtoCopyWith<$Res>(_self.match, (value) {
    return _then(_self.copyWith(match: value));
  });
}/// Create a copy of WrittenReviewListItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewerPublicSummaryDtoCopyWith<$Res> get reviewee {
  
  return $ReviewerPublicSummaryDtoCopyWith<$Res>(_self.reviewee, (value) {
    return _then(_self.copyWith(reviewee: value));
  });
}
}


/// Adds pattern-matching-related methods to [WrittenReviewListItemDto].
extension WrittenReviewListItemDtoPatterns on WrittenReviewListItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WrittenReviewListItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WrittenReviewListItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WrittenReviewListItemDto value)  $default,){
final _that = this;
switch (_that) {
case _WrittenReviewListItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WrittenReviewListItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _WrittenReviewListItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int reviewId,  MatchReviewSummaryDto match,  ReviewerPublicSummaryDto reviewee,  String? sentiment,  int? score,  List<String> hashtags,  String? detail,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WrittenReviewListItemDto() when $default != null:
return $default(_that.reviewId,_that.match,_that.reviewee,_that.sentiment,_that.score,_that.hashtags,_that.detail,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int reviewId,  MatchReviewSummaryDto match,  ReviewerPublicSummaryDto reviewee,  String? sentiment,  int? score,  List<String> hashtags,  String? detail,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _WrittenReviewListItemDto():
return $default(_that.reviewId,_that.match,_that.reviewee,_that.sentiment,_that.score,_that.hashtags,_that.detail,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int reviewId,  MatchReviewSummaryDto match,  ReviewerPublicSummaryDto reviewee,  String? sentiment,  int? score,  List<String> hashtags,  String? detail,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _WrittenReviewListItemDto() when $default != null:
return $default(_that.reviewId,_that.match,_that.reviewee,_that.sentiment,_that.score,_that.hashtags,_that.detail,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WrittenReviewListItemDto implements WrittenReviewListItemDto {
  const _WrittenReviewListItemDto({required this.reviewId, required this.match, required this.reviewee, this.sentiment, this.score, final  List<String> hashtags = const <String>[], this.detail, required this.createdAt}): _hashtags = hashtags;
  factory _WrittenReviewListItemDto.fromJson(Map<String, dynamic> json) => _$WrittenReviewListItemDtoFromJson(json);

@override final  int reviewId;
@override final  MatchReviewSummaryDto match;
@override final  ReviewerPublicSummaryDto reviewee;
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

/// Create a copy of WrittenReviewListItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WrittenReviewListItemDtoCopyWith<_WrittenReviewListItemDto> get copyWith => __$WrittenReviewListItemDtoCopyWithImpl<_WrittenReviewListItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WrittenReviewListItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WrittenReviewListItemDto&&(identical(other.reviewId, reviewId) || other.reviewId == reviewId)&&(identical(other.match, match) || other.match == match)&&(identical(other.reviewee, reviewee) || other.reviewee == reviewee)&&(identical(other.sentiment, sentiment) || other.sentiment == sentiment)&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other._hashtags, _hashtags)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reviewId,match,reviewee,sentiment,score,const DeepCollectionEquality().hash(_hashtags),detail,createdAt);

@override
String toString() {
  return 'WrittenReviewListItemDto(reviewId: $reviewId, match: $match, reviewee: $reviewee, sentiment: $sentiment, score: $score, hashtags: $hashtags, detail: $detail, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$WrittenReviewListItemDtoCopyWith<$Res> implements $WrittenReviewListItemDtoCopyWith<$Res> {
  factory _$WrittenReviewListItemDtoCopyWith(_WrittenReviewListItemDto value, $Res Function(_WrittenReviewListItemDto) _then) = __$WrittenReviewListItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int reviewId, MatchReviewSummaryDto match, ReviewerPublicSummaryDto reviewee, String? sentiment, int? score, List<String> hashtags, String? detail, String createdAt
});


@override $MatchReviewSummaryDtoCopyWith<$Res> get match;@override $ReviewerPublicSummaryDtoCopyWith<$Res> get reviewee;

}
/// @nodoc
class __$WrittenReviewListItemDtoCopyWithImpl<$Res>
    implements _$WrittenReviewListItemDtoCopyWith<$Res> {
  __$WrittenReviewListItemDtoCopyWithImpl(this._self, this._then);

  final _WrittenReviewListItemDto _self;
  final $Res Function(_WrittenReviewListItemDto) _then;

/// Create a copy of WrittenReviewListItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reviewId = null,Object? match = null,Object? reviewee = null,Object? sentiment = freezed,Object? score = freezed,Object? hashtags = null,Object? detail = freezed,Object? createdAt = null,}) {
  return _then(_WrittenReviewListItemDto(
reviewId: null == reviewId ? _self.reviewId : reviewId // ignore: cast_nullable_to_non_nullable
as int,match: null == match ? _self.match : match // ignore: cast_nullable_to_non_nullable
as MatchReviewSummaryDto,reviewee: null == reviewee ? _self.reviewee : reviewee // ignore: cast_nullable_to_non_nullable
as ReviewerPublicSummaryDto,sentiment: freezed == sentiment ? _self.sentiment : sentiment // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,hashtags: null == hashtags ? _self._hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of WrittenReviewListItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchReviewSummaryDtoCopyWith<$Res> get match {
  
  return $MatchReviewSummaryDtoCopyWith<$Res>(_self.match, (value) {
    return _then(_self.copyWith(match: value));
  });
}/// Create a copy of WrittenReviewListItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewerPublicSummaryDtoCopyWith<$Res> get reviewee {
  
  return $ReviewerPublicSummaryDtoCopyWith<$Res>(_self.reviewee, (value) {
    return _then(_self.copyWith(reviewee: value));
  });
}
}


/// @nodoc
mixin _$PendingReviewItemDto {

 int get matchId; MatchReviewSummaryDto get match; int get revieweeId; ReviewerPublicSummaryDto get reviewee;
/// Create a copy of PendingReviewItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PendingReviewItemDtoCopyWith<PendingReviewItemDto> get copyWith => _$PendingReviewItemDtoCopyWithImpl<PendingReviewItemDto>(this as PendingReviewItemDto, _$identity);

  /// Serializes this PendingReviewItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PendingReviewItemDto&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.match, match) || other.match == match)&&(identical(other.revieweeId, revieweeId) || other.revieweeId == revieweeId)&&(identical(other.reviewee, reviewee) || other.reviewee == reviewee));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,matchId,match,revieweeId,reviewee);

@override
String toString() {
  return 'PendingReviewItemDto(matchId: $matchId, match: $match, revieweeId: $revieweeId, reviewee: $reviewee)';
}


}

/// @nodoc
abstract mixin class $PendingReviewItemDtoCopyWith<$Res>  {
  factory $PendingReviewItemDtoCopyWith(PendingReviewItemDto value, $Res Function(PendingReviewItemDto) _then) = _$PendingReviewItemDtoCopyWithImpl;
@useResult
$Res call({
 int matchId, MatchReviewSummaryDto match, int revieweeId, ReviewerPublicSummaryDto reviewee
});


$MatchReviewSummaryDtoCopyWith<$Res> get match;$ReviewerPublicSummaryDtoCopyWith<$Res> get reviewee;

}
/// @nodoc
class _$PendingReviewItemDtoCopyWithImpl<$Res>
    implements $PendingReviewItemDtoCopyWith<$Res> {
  _$PendingReviewItemDtoCopyWithImpl(this._self, this._then);

  final PendingReviewItemDto _self;
  final $Res Function(PendingReviewItemDto) _then;

/// Create a copy of PendingReviewItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? matchId = null,Object? match = null,Object? revieweeId = null,Object? reviewee = null,}) {
  return _then(_self.copyWith(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,match: null == match ? _self.match : match // ignore: cast_nullable_to_non_nullable
as MatchReviewSummaryDto,revieweeId: null == revieweeId ? _self.revieweeId : revieweeId // ignore: cast_nullable_to_non_nullable
as int,reviewee: null == reviewee ? _self.reviewee : reviewee // ignore: cast_nullable_to_non_nullable
as ReviewerPublicSummaryDto,
  ));
}
/// Create a copy of PendingReviewItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchReviewSummaryDtoCopyWith<$Res> get match {
  
  return $MatchReviewSummaryDtoCopyWith<$Res>(_self.match, (value) {
    return _then(_self.copyWith(match: value));
  });
}/// Create a copy of PendingReviewItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewerPublicSummaryDtoCopyWith<$Res> get reviewee {
  
  return $ReviewerPublicSummaryDtoCopyWith<$Res>(_self.reviewee, (value) {
    return _then(_self.copyWith(reviewee: value));
  });
}
}


/// Adds pattern-matching-related methods to [PendingReviewItemDto].
extension PendingReviewItemDtoPatterns on PendingReviewItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PendingReviewItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PendingReviewItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PendingReviewItemDto value)  $default,){
final _that = this;
switch (_that) {
case _PendingReviewItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PendingReviewItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _PendingReviewItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int matchId,  MatchReviewSummaryDto match,  int revieweeId,  ReviewerPublicSummaryDto reviewee)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PendingReviewItemDto() when $default != null:
return $default(_that.matchId,_that.match,_that.revieweeId,_that.reviewee);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int matchId,  MatchReviewSummaryDto match,  int revieweeId,  ReviewerPublicSummaryDto reviewee)  $default,) {final _that = this;
switch (_that) {
case _PendingReviewItemDto():
return $default(_that.matchId,_that.match,_that.revieweeId,_that.reviewee);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int matchId,  MatchReviewSummaryDto match,  int revieweeId,  ReviewerPublicSummaryDto reviewee)?  $default,) {final _that = this;
switch (_that) {
case _PendingReviewItemDto() when $default != null:
return $default(_that.matchId,_that.match,_that.revieweeId,_that.reviewee);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PendingReviewItemDto implements PendingReviewItemDto {
  const _PendingReviewItemDto({required this.matchId, required this.match, required this.revieweeId, required this.reviewee});
  factory _PendingReviewItemDto.fromJson(Map<String, dynamic> json) => _$PendingReviewItemDtoFromJson(json);

@override final  int matchId;
@override final  MatchReviewSummaryDto match;
@override final  int revieweeId;
@override final  ReviewerPublicSummaryDto reviewee;

/// Create a copy of PendingReviewItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PendingReviewItemDtoCopyWith<_PendingReviewItemDto> get copyWith => __$PendingReviewItemDtoCopyWithImpl<_PendingReviewItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PendingReviewItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PendingReviewItemDto&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.match, match) || other.match == match)&&(identical(other.revieweeId, revieweeId) || other.revieweeId == revieweeId)&&(identical(other.reviewee, reviewee) || other.reviewee == reviewee));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,matchId,match,revieweeId,reviewee);

@override
String toString() {
  return 'PendingReviewItemDto(matchId: $matchId, match: $match, revieweeId: $revieweeId, reviewee: $reviewee)';
}


}

/// @nodoc
abstract mixin class _$PendingReviewItemDtoCopyWith<$Res> implements $PendingReviewItemDtoCopyWith<$Res> {
  factory _$PendingReviewItemDtoCopyWith(_PendingReviewItemDto value, $Res Function(_PendingReviewItemDto) _then) = __$PendingReviewItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int matchId, MatchReviewSummaryDto match, int revieweeId, ReviewerPublicSummaryDto reviewee
});


@override $MatchReviewSummaryDtoCopyWith<$Res> get match;@override $ReviewerPublicSummaryDtoCopyWith<$Res> get reviewee;

}
/// @nodoc
class __$PendingReviewItemDtoCopyWithImpl<$Res>
    implements _$PendingReviewItemDtoCopyWith<$Res> {
  __$PendingReviewItemDtoCopyWithImpl(this._self, this._then);

  final _PendingReviewItemDto _self;
  final $Res Function(_PendingReviewItemDto) _then;

/// Create a copy of PendingReviewItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? matchId = null,Object? match = null,Object? revieweeId = null,Object? reviewee = null,}) {
  return _then(_PendingReviewItemDto(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,match: null == match ? _self.match : match // ignore: cast_nullable_to_non_nullable
as MatchReviewSummaryDto,revieweeId: null == revieweeId ? _self.revieweeId : revieweeId // ignore: cast_nullable_to_non_nullable
as int,reviewee: null == reviewee ? _self.reviewee : reviewee // ignore: cast_nullable_to_non_nullable
as ReviewerPublicSummaryDto,
  ));
}

/// Create a copy of PendingReviewItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchReviewSummaryDtoCopyWith<$Res> get match {
  
  return $MatchReviewSummaryDtoCopyWith<$Res>(_self.match, (value) {
    return _then(_self.copyWith(match: value));
  });
}/// Create a copy of PendingReviewItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewerPublicSummaryDtoCopyWith<$Res> get reviewee {
  
  return $ReviewerPublicSummaryDtoCopyWith<$Res>(_self.reviewee, (value) {
    return _then(_self.copyWith(reviewee: value));
  });
}
}


/// @nodoc
mixin _$MyWrittenReviewPageDto {

 List<WrittenReviewListItemDto> get items; int get page; int get pageSize; int get totalElements; int get totalPages; bool get first; bool get last;
/// Create a copy of MyWrittenReviewPageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyWrittenReviewPageDtoCopyWith<MyWrittenReviewPageDto> get copyWith => _$MyWrittenReviewPageDtoCopyWithImpl<MyWrittenReviewPageDto>(this as MyWrittenReviewPageDto, _$identity);

  /// Serializes this MyWrittenReviewPageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyWrittenReviewPageDto&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.first, first) || other.first == first)&&(identical(other.last, last) || other.last == last));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),page,pageSize,totalElements,totalPages,first,last);

@override
String toString() {
  return 'MyWrittenReviewPageDto(items: $items, page: $page, pageSize: $pageSize, totalElements: $totalElements, totalPages: $totalPages, first: $first, last: $last)';
}


}

/// @nodoc
abstract mixin class $MyWrittenReviewPageDtoCopyWith<$Res>  {
  factory $MyWrittenReviewPageDtoCopyWith(MyWrittenReviewPageDto value, $Res Function(MyWrittenReviewPageDto) _then) = _$MyWrittenReviewPageDtoCopyWithImpl;
@useResult
$Res call({
 List<WrittenReviewListItemDto> items, int page, int pageSize, int totalElements, int totalPages, bool first, bool last
});




}
/// @nodoc
class _$MyWrittenReviewPageDtoCopyWithImpl<$Res>
    implements $MyWrittenReviewPageDtoCopyWith<$Res> {
  _$MyWrittenReviewPageDtoCopyWithImpl(this._self, this._then);

  final MyWrittenReviewPageDto _self;
  final $Res Function(MyWrittenReviewPageDto) _then;

/// Create a copy of MyWrittenReviewPageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? page = null,Object? pageSize = null,Object? totalElements = null,Object? totalPages = null,Object? first = null,Object? last = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<WrittenReviewListItemDto>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,totalElements: null == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,first: null == first ? _self.first : first // ignore: cast_nullable_to_non_nullable
as bool,last: null == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MyWrittenReviewPageDto].
extension MyWrittenReviewPageDtoPatterns on MyWrittenReviewPageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyWrittenReviewPageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyWrittenReviewPageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyWrittenReviewPageDto value)  $default,){
final _that = this;
switch (_that) {
case _MyWrittenReviewPageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyWrittenReviewPageDto value)?  $default,){
final _that = this;
switch (_that) {
case _MyWrittenReviewPageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<WrittenReviewListItemDto> items,  int page,  int pageSize,  int totalElements,  int totalPages,  bool first,  bool last)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyWrittenReviewPageDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<WrittenReviewListItemDto> items,  int page,  int pageSize,  int totalElements,  int totalPages,  bool first,  bool last)  $default,) {final _that = this;
switch (_that) {
case _MyWrittenReviewPageDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<WrittenReviewListItemDto> items,  int page,  int pageSize,  int totalElements,  int totalPages,  bool first,  bool last)?  $default,) {final _that = this;
switch (_that) {
case _MyWrittenReviewPageDto() when $default != null:
return $default(_that.items,_that.page,_that.pageSize,_that.totalElements,_that.totalPages,_that.first,_that.last);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyWrittenReviewPageDto implements MyWrittenReviewPageDto {
  const _MyWrittenReviewPageDto({final  List<WrittenReviewListItemDto> items = const <WrittenReviewListItemDto>[], this.page = 0, this.pageSize = 20, this.totalElements = 0, this.totalPages = 0, this.first = true, this.last = true}): _items = items;
  factory _MyWrittenReviewPageDto.fromJson(Map<String, dynamic> json) => _$MyWrittenReviewPageDtoFromJson(json);

 final  List<WrittenReviewListItemDto> _items;
@override@JsonKey() List<WrittenReviewListItemDto> get items {
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

/// Create a copy of MyWrittenReviewPageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyWrittenReviewPageDtoCopyWith<_MyWrittenReviewPageDto> get copyWith => __$MyWrittenReviewPageDtoCopyWithImpl<_MyWrittenReviewPageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyWrittenReviewPageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyWrittenReviewPageDto&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.first, first) || other.first == first)&&(identical(other.last, last) || other.last == last));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),page,pageSize,totalElements,totalPages,first,last);

@override
String toString() {
  return 'MyWrittenReviewPageDto(items: $items, page: $page, pageSize: $pageSize, totalElements: $totalElements, totalPages: $totalPages, first: $first, last: $last)';
}


}

/// @nodoc
abstract mixin class _$MyWrittenReviewPageDtoCopyWith<$Res> implements $MyWrittenReviewPageDtoCopyWith<$Res> {
  factory _$MyWrittenReviewPageDtoCopyWith(_MyWrittenReviewPageDto value, $Res Function(_MyWrittenReviewPageDto) _then) = __$MyWrittenReviewPageDtoCopyWithImpl;
@override @useResult
$Res call({
 List<WrittenReviewListItemDto> items, int page, int pageSize, int totalElements, int totalPages, bool first, bool last
});




}
/// @nodoc
class __$MyWrittenReviewPageDtoCopyWithImpl<$Res>
    implements _$MyWrittenReviewPageDtoCopyWith<$Res> {
  __$MyWrittenReviewPageDtoCopyWithImpl(this._self, this._then);

  final _MyWrittenReviewPageDto _self;
  final $Res Function(_MyWrittenReviewPageDto) _then;

/// Create a copy of MyWrittenReviewPageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? page = null,Object? pageSize = null,Object? totalElements = null,Object? totalPages = null,Object? first = null,Object? last = null,}) {
  return _then(_MyWrittenReviewPageDto(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<WrittenReviewListItemDto>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
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
mixin _$MyPendingReviewPageDto {

 List<PendingReviewItemDto> get items; int get page; int get pageSize; int get totalElements; int get totalPages; bool get first; bool get last;
/// Create a copy of MyPendingReviewPageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyPendingReviewPageDtoCopyWith<MyPendingReviewPageDto> get copyWith => _$MyPendingReviewPageDtoCopyWithImpl<MyPendingReviewPageDto>(this as MyPendingReviewPageDto, _$identity);

  /// Serializes this MyPendingReviewPageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyPendingReviewPageDto&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.first, first) || other.first == first)&&(identical(other.last, last) || other.last == last));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),page,pageSize,totalElements,totalPages,first,last);

@override
String toString() {
  return 'MyPendingReviewPageDto(items: $items, page: $page, pageSize: $pageSize, totalElements: $totalElements, totalPages: $totalPages, first: $first, last: $last)';
}


}

/// @nodoc
abstract mixin class $MyPendingReviewPageDtoCopyWith<$Res>  {
  factory $MyPendingReviewPageDtoCopyWith(MyPendingReviewPageDto value, $Res Function(MyPendingReviewPageDto) _then) = _$MyPendingReviewPageDtoCopyWithImpl;
@useResult
$Res call({
 List<PendingReviewItemDto> items, int page, int pageSize, int totalElements, int totalPages, bool first, bool last
});




}
/// @nodoc
class _$MyPendingReviewPageDtoCopyWithImpl<$Res>
    implements $MyPendingReviewPageDtoCopyWith<$Res> {
  _$MyPendingReviewPageDtoCopyWithImpl(this._self, this._then);

  final MyPendingReviewPageDto _self;
  final $Res Function(MyPendingReviewPageDto) _then;

/// Create a copy of MyPendingReviewPageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? page = null,Object? pageSize = null,Object? totalElements = null,Object? totalPages = null,Object? first = null,Object? last = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<PendingReviewItemDto>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,totalElements: null == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,first: null == first ? _self.first : first // ignore: cast_nullable_to_non_nullable
as bool,last: null == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MyPendingReviewPageDto].
extension MyPendingReviewPageDtoPatterns on MyPendingReviewPageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyPendingReviewPageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyPendingReviewPageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyPendingReviewPageDto value)  $default,){
final _that = this;
switch (_that) {
case _MyPendingReviewPageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyPendingReviewPageDto value)?  $default,){
final _that = this;
switch (_that) {
case _MyPendingReviewPageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PendingReviewItemDto> items,  int page,  int pageSize,  int totalElements,  int totalPages,  bool first,  bool last)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyPendingReviewPageDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PendingReviewItemDto> items,  int page,  int pageSize,  int totalElements,  int totalPages,  bool first,  bool last)  $default,) {final _that = this;
switch (_that) {
case _MyPendingReviewPageDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PendingReviewItemDto> items,  int page,  int pageSize,  int totalElements,  int totalPages,  bool first,  bool last)?  $default,) {final _that = this;
switch (_that) {
case _MyPendingReviewPageDto() when $default != null:
return $default(_that.items,_that.page,_that.pageSize,_that.totalElements,_that.totalPages,_that.first,_that.last);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyPendingReviewPageDto implements MyPendingReviewPageDto {
  const _MyPendingReviewPageDto({final  List<PendingReviewItemDto> items = const <PendingReviewItemDto>[], this.page = 0, this.pageSize = 20, this.totalElements = 0, this.totalPages = 0, this.first = true, this.last = true}): _items = items;
  factory _MyPendingReviewPageDto.fromJson(Map<String, dynamic> json) => _$MyPendingReviewPageDtoFromJson(json);

 final  List<PendingReviewItemDto> _items;
@override@JsonKey() List<PendingReviewItemDto> get items {
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

/// Create a copy of MyPendingReviewPageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyPendingReviewPageDtoCopyWith<_MyPendingReviewPageDto> get copyWith => __$MyPendingReviewPageDtoCopyWithImpl<_MyPendingReviewPageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyPendingReviewPageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyPendingReviewPageDto&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.first, first) || other.first == first)&&(identical(other.last, last) || other.last == last));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),page,pageSize,totalElements,totalPages,first,last);

@override
String toString() {
  return 'MyPendingReviewPageDto(items: $items, page: $page, pageSize: $pageSize, totalElements: $totalElements, totalPages: $totalPages, first: $first, last: $last)';
}


}

/// @nodoc
abstract mixin class _$MyPendingReviewPageDtoCopyWith<$Res> implements $MyPendingReviewPageDtoCopyWith<$Res> {
  factory _$MyPendingReviewPageDtoCopyWith(_MyPendingReviewPageDto value, $Res Function(_MyPendingReviewPageDto) _then) = __$MyPendingReviewPageDtoCopyWithImpl;
@override @useResult
$Res call({
 List<PendingReviewItemDto> items, int page, int pageSize, int totalElements, int totalPages, bool first, bool last
});




}
/// @nodoc
class __$MyPendingReviewPageDtoCopyWithImpl<$Res>
    implements _$MyPendingReviewPageDtoCopyWith<$Res> {
  __$MyPendingReviewPageDtoCopyWithImpl(this._self, this._then);

  final _MyPendingReviewPageDto _self;
  final $Res Function(_MyPendingReviewPageDto) _then;

/// Create a copy of MyPendingReviewPageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? page = null,Object? pageSize = null,Object? totalElements = null,Object? totalPages = null,Object? first = null,Object? last = null,}) {
  return _then(_MyPendingReviewPageDto(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<PendingReviewItemDto>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
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
mixin _$MyWrittenReviewPageEnvelope {

 bool get success; MyWrittenReviewPageDto? get data; String? get message; String? get code;
/// Create a copy of MyWrittenReviewPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyWrittenReviewPageEnvelopeCopyWith<MyWrittenReviewPageEnvelope> get copyWith => _$MyWrittenReviewPageEnvelopeCopyWithImpl<MyWrittenReviewPageEnvelope>(this as MyWrittenReviewPageEnvelope, _$identity);

  /// Serializes this MyWrittenReviewPageEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyWrittenReviewPageEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'MyWrittenReviewPageEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $MyWrittenReviewPageEnvelopeCopyWith<$Res>  {
  factory $MyWrittenReviewPageEnvelopeCopyWith(MyWrittenReviewPageEnvelope value, $Res Function(MyWrittenReviewPageEnvelope) _then) = _$MyWrittenReviewPageEnvelopeCopyWithImpl;
@useResult
$Res call({
 bool success, MyWrittenReviewPageDto? data, String? message, String? code
});


$MyWrittenReviewPageDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$MyWrittenReviewPageEnvelopeCopyWithImpl<$Res>
    implements $MyWrittenReviewPageEnvelopeCopyWith<$Res> {
  _$MyWrittenReviewPageEnvelopeCopyWithImpl(this._self, this._then);

  final MyWrittenReviewPageEnvelope _self;
  final $Res Function(MyWrittenReviewPageEnvelope) _then;

/// Create a copy of MyWrittenReviewPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MyWrittenReviewPageDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of MyWrittenReviewPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyWrittenReviewPageDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $MyWrittenReviewPageDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [MyWrittenReviewPageEnvelope].
extension MyWrittenReviewPageEnvelopePatterns on MyWrittenReviewPageEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyWrittenReviewPageEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyWrittenReviewPageEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyWrittenReviewPageEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _MyWrittenReviewPageEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyWrittenReviewPageEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _MyWrittenReviewPageEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  MyWrittenReviewPageDto? data,  String? message,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyWrittenReviewPageEnvelope() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  MyWrittenReviewPageDto? data,  String? message,  String? code)  $default,) {final _that = this;
switch (_that) {
case _MyWrittenReviewPageEnvelope():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  MyWrittenReviewPageDto? data,  String? message,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _MyWrittenReviewPageEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyWrittenReviewPageEnvelope implements MyWrittenReviewPageEnvelope {
  const _MyWrittenReviewPageEnvelope({required this.success, this.data, this.message, this.code});
  factory _MyWrittenReviewPageEnvelope.fromJson(Map<String, dynamic> json) => _$MyWrittenReviewPageEnvelopeFromJson(json);

@override final  bool success;
@override final  MyWrittenReviewPageDto? data;
@override final  String? message;
@override final  String? code;

/// Create a copy of MyWrittenReviewPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyWrittenReviewPageEnvelopeCopyWith<_MyWrittenReviewPageEnvelope> get copyWith => __$MyWrittenReviewPageEnvelopeCopyWithImpl<_MyWrittenReviewPageEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyWrittenReviewPageEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyWrittenReviewPageEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'MyWrittenReviewPageEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$MyWrittenReviewPageEnvelopeCopyWith<$Res> implements $MyWrittenReviewPageEnvelopeCopyWith<$Res> {
  factory _$MyWrittenReviewPageEnvelopeCopyWith(_MyWrittenReviewPageEnvelope value, $Res Function(_MyWrittenReviewPageEnvelope) _then) = __$MyWrittenReviewPageEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 bool success, MyWrittenReviewPageDto? data, String? message, String? code
});


@override $MyWrittenReviewPageDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$MyWrittenReviewPageEnvelopeCopyWithImpl<$Res>
    implements _$MyWrittenReviewPageEnvelopeCopyWith<$Res> {
  __$MyWrittenReviewPageEnvelopeCopyWithImpl(this._self, this._then);

  final _MyWrittenReviewPageEnvelope _self;
  final $Res Function(_MyWrittenReviewPageEnvelope) _then;

/// Create a copy of MyWrittenReviewPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_MyWrittenReviewPageEnvelope(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MyWrittenReviewPageDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of MyWrittenReviewPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyWrittenReviewPageDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $MyWrittenReviewPageDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$MyPendingReviewPageEnvelope {

 bool get success; MyPendingReviewPageDto? get data; String? get message; String? get code;
/// Create a copy of MyPendingReviewPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyPendingReviewPageEnvelopeCopyWith<MyPendingReviewPageEnvelope> get copyWith => _$MyPendingReviewPageEnvelopeCopyWithImpl<MyPendingReviewPageEnvelope>(this as MyPendingReviewPageEnvelope, _$identity);

  /// Serializes this MyPendingReviewPageEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyPendingReviewPageEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'MyPendingReviewPageEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $MyPendingReviewPageEnvelopeCopyWith<$Res>  {
  factory $MyPendingReviewPageEnvelopeCopyWith(MyPendingReviewPageEnvelope value, $Res Function(MyPendingReviewPageEnvelope) _then) = _$MyPendingReviewPageEnvelopeCopyWithImpl;
@useResult
$Res call({
 bool success, MyPendingReviewPageDto? data, String? message, String? code
});


$MyPendingReviewPageDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$MyPendingReviewPageEnvelopeCopyWithImpl<$Res>
    implements $MyPendingReviewPageEnvelopeCopyWith<$Res> {
  _$MyPendingReviewPageEnvelopeCopyWithImpl(this._self, this._then);

  final MyPendingReviewPageEnvelope _self;
  final $Res Function(MyPendingReviewPageEnvelope) _then;

/// Create a copy of MyPendingReviewPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MyPendingReviewPageDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of MyPendingReviewPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyPendingReviewPageDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $MyPendingReviewPageDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [MyPendingReviewPageEnvelope].
extension MyPendingReviewPageEnvelopePatterns on MyPendingReviewPageEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyPendingReviewPageEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyPendingReviewPageEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyPendingReviewPageEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _MyPendingReviewPageEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyPendingReviewPageEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _MyPendingReviewPageEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  MyPendingReviewPageDto? data,  String? message,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyPendingReviewPageEnvelope() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  MyPendingReviewPageDto? data,  String? message,  String? code)  $default,) {final _that = this;
switch (_that) {
case _MyPendingReviewPageEnvelope():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  MyPendingReviewPageDto? data,  String? message,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _MyPendingReviewPageEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyPendingReviewPageEnvelope implements MyPendingReviewPageEnvelope {
  const _MyPendingReviewPageEnvelope({required this.success, this.data, this.message, this.code});
  factory _MyPendingReviewPageEnvelope.fromJson(Map<String, dynamic> json) => _$MyPendingReviewPageEnvelopeFromJson(json);

@override final  bool success;
@override final  MyPendingReviewPageDto? data;
@override final  String? message;
@override final  String? code;

/// Create a copy of MyPendingReviewPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyPendingReviewPageEnvelopeCopyWith<_MyPendingReviewPageEnvelope> get copyWith => __$MyPendingReviewPageEnvelopeCopyWithImpl<_MyPendingReviewPageEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyPendingReviewPageEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyPendingReviewPageEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'MyPendingReviewPageEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$MyPendingReviewPageEnvelopeCopyWith<$Res> implements $MyPendingReviewPageEnvelopeCopyWith<$Res> {
  factory _$MyPendingReviewPageEnvelopeCopyWith(_MyPendingReviewPageEnvelope value, $Res Function(_MyPendingReviewPageEnvelope) _then) = __$MyPendingReviewPageEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 bool success, MyPendingReviewPageDto? data, String? message, String? code
});


@override $MyPendingReviewPageDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$MyPendingReviewPageEnvelopeCopyWithImpl<$Res>
    implements _$MyPendingReviewPageEnvelopeCopyWith<$Res> {
  __$MyPendingReviewPageEnvelopeCopyWithImpl(this._self, this._then);

  final _MyPendingReviewPageEnvelope _self;
  final $Res Function(_MyPendingReviewPageEnvelope) _then;

/// Create a copy of MyPendingReviewPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_MyPendingReviewPageEnvelope(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MyPendingReviewPageDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of MyPendingReviewPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyPendingReviewPageDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $MyPendingReviewPageDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
