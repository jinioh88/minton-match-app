// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateReviewRequestDto {

 int get revieweeId; String get sentiment; int get score; List<String> get hashtags; String? get detail;
/// Create a copy of CreateReviewRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateReviewRequestDtoCopyWith<CreateReviewRequestDto> get copyWith => _$CreateReviewRequestDtoCopyWithImpl<CreateReviewRequestDto>(this as CreateReviewRequestDto, _$identity);

  /// Serializes this CreateReviewRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateReviewRequestDto&&(identical(other.revieweeId, revieweeId) || other.revieweeId == revieweeId)&&(identical(other.sentiment, sentiment) || other.sentiment == sentiment)&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other.hashtags, hashtags)&&(identical(other.detail, detail) || other.detail == detail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,revieweeId,sentiment,score,const DeepCollectionEquality().hash(hashtags),detail);

@override
String toString() {
  return 'CreateReviewRequestDto(revieweeId: $revieweeId, sentiment: $sentiment, score: $score, hashtags: $hashtags, detail: $detail)';
}


}

/// @nodoc
abstract mixin class $CreateReviewRequestDtoCopyWith<$Res>  {
  factory $CreateReviewRequestDtoCopyWith(CreateReviewRequestDto value, $Res Function(CreateReviewRequestDto) _then) = _$CreateReviewRequestDtoCopyWithImpl;
@useResult
$Res call({
 int revieweeId, String sentiment, int score, List<String> hashtags, String? detail
});




}
/// @nodoc
class _$CreateReviewRequestDtoCopyWithImpl<$Res>
    implements $CreateReviewRequestDtoCopyWith<$Res> {
  _$CreateReviewRequestDtoCopyWithImpl(this._self, this._then);

  final CreateReviewRequestDto _self;
  final $Res Function(CreateReviewRequestDto) _then;

/// Create a copy of CreateReviewRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? revieweeId = null,Object? sentiment = null,Object? score = null,Object? hashtags = null,Object? detail = freezed,}) {
  return _then(_self.copyWith(
revieweeId: null == revieweeId ? _self.revieweeId : revieweeId // ignore: cast_nullable_to_non_nullable
as int,sentiment: null == sentiment ? _self.sentiment : sentiment // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,hashtags: null == hashtags ? _self.hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateReviewRequestDto].
extension CreateReviewRequestDtoPatterns on CreateReviewRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateReviewRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateReviewRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateReviewRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateReviewRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateReviewRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateReviewRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int revieweeId,  String sentiment,  int score,  List<String> hashtags,  String? detail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateReviewRequestDto() when $default != null:
return $default(_that.revieweeId,_that.sentiment,_that.score,_that.hashtags,_that.detail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int revieweeId,  String sentiment,  int score,  List<String> hashtags,  String? detail)  $default,) {final _that = this;
switch (_that) {
case _CreateReviewRequestDto():
return $default(_that.revieweeId,_that.sentiment,_that.score,_that.hashtags,_that.detail);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int revieweeId,  String sentiment,  int score,  List<String> hashtags,  String? detail)?  $default,) {final _that = this;
switch (_that) {
case _CreateReviewRequestDto() when $default != null:
return $default(_that.revieweeId,_that.sentiment,_that.score,_that.hashtags,_that.detail);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateReviewRequestDto implements CreateReviewRequestDto {
  const _CreateReviewRequestDto({required this.revieweeId, required this.sentiment, required this.score, final  List<String> hashtags = const <String>[], this.detail}): _hashtags = hashtags;
  factory _CreateReviewRequestDto.fromJson(Map<String, dynamic> json) => _$CreateReviewRequestDtoFromJson(json);

@override final  int revieweeId;
@override final  String sentiment;
@override final  int score;
 final  List<String> _hashtags;
@override@JsonKey() List<String> get hashtags {
  if (_hashtags is EqualUnmodifiableListView) return _hashtags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hashtags);
}

@override final  String? detail;

/// Create a copy of CreateReviewRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateReviewRequestDtoCopyWith<_CreateReviewRequestDto> get copyWith => __$CreateReviewRequestDtoCopyWithImpl<_CreateReviewRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateReviewRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateReviewRequestDto&&(identical(other.revieweeId, revieweeId) || other.revieweeId == revieweeId)&&(identical(other.sentiment, sentiment) || other.sentiment == sentiment)&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other._hashtags, _hashtags)&&(identical(other.detail, detail) || other.detail == detail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,revieweeId,sentiment,score,const DeepCollectionEquality().hash(_hashtags),detail);

@override
String toString() {
  return 'CreateReviewRequestDto(revieweeId: $revieweeId, sentiment: $sentiment, score: $score, hashtags: $hashtags, detail: $detail)';
}


}

/// @nodoc
abstract mixin class _$CreateReviewRequestDtoCopyWith<$Res> implements $CreateReviewRequestDtoCopyWith<$Res> {
  factory _$CreateReviewRequestDtoCopyWith(_CreateReviewRequestDto value, $Res Function(_CreateReviewRequestDto) _then) = __$CreateReviewRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 int revieweeId, String sentiment, int score, List<String> hashtags, String? detail
});




}
/// @nodoc
class __$CreateReviewRequestDtoCopyWithImpl<$Res>
    implements _$CreateReviewRequestDtoCopyWith<$Res> {
  __$CreateReviewRequestDtoCopyWithImpl(this._self, this._then);

  final _CreateReviewRequestDto _self;
  final $Res Function(_CreateReviewRequestDto) _then;

/// Create a copy of CreateReviewRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? revieweeId = null,Object? sentiment = null,Object? score = null,Object? hashtags = null,Object? detail = freezed,}) {
  return _then(_CreateReviewRequestDto(
revieweeId: null == revieweeId ? _self.revieweeId : revieweeId // ignore: cast_nullable_to_non_nullable
as int,sentiment: null == sentiment ? _self.sentiment : sentiment // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,hashtags: null == hashtags ? _self._hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReviewCreatedDto {

 int get reviewId; int get matchId; int get revieweeId; String get sentiment; int get score; List<String> get hashtags; String? get detail; String get createdAt;
/// Create a copy of ReviewCreatedDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewCreatedDtoCopyWith<ReviewCreatedDto> get copyWith => _$ReviewCreatedDtoCopyWithImpl<ReviewCreatedDto>(this as ReviewCreatedDto, _$identity);

  /// Serializes this ReviewCreatedDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewCreatedDto&&(identical(other.reviewId, reviewId) || other.reviewId == reviewId)&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.revieweeId, revieweeId) || other.revieweeId == revieweeId)&&(identical(other.sentiment, sentiment) || other.sentiment == sentiment)&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other.hashtags, hashtags)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reviewId,matchId,revieweeId,sentiment,score,const DeepCollectionEquality().hash(hashtags),detail,createdAt);

@override
String toString() {
  return 'ReviewCreatedDto(reviewId: $reviewId, matchId: $matchId, revieweeId: $revieweeId, sentiment: $sentiment, score: $score, hashtags: $hashtags, detail: $detail, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ReviewCreatedDtoCopyWith<$Res>  {
  factory $ReviewCreatedDtoCopyWith(ReviewCreatedDto value, $Res Function(ReviewCreatedDto) _then) = _$ReviewCreatedDtoCopyWithImpl;
@useResult
$Res call({
 int reviewId, int matchId, int revieweeId, String sentiment, int score, List<String> hashtags, String? detail, String createdAt
});




}
/// @nodoc
class _$ReviewCreatedDtoCopyWithImpl<$Res>
    implements $ReviewCreatedDtoCopyWith<$Res> {
  _$ReviewCreatedDtoCopyWithImpl(this._self, this._then);

  final ReviewCreatedDto _self;
  final $Res Function(ReviewCreatedDto) _then;

/// Create a copy of ReviewCreatedDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reviewId = null,Object? matchId = null,Object? revieweeId = null,Object? sentiment = null,Object? score = null,Object? hashtags = null,Object? detail = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
reviewId: null == reviewId ? _self.reviewId : reviewId // ignore: cast_nullable_to_non_nullable
as int,matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,revieweeId: null == revieweeId ? _self.revieweeId : revieweeId // ignore: cast_nullable_to_non_nullable
as int,sentiment: null == sentiment ? _self.sentiment : sentiment // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,hashtags: null == hashtags ? _self.hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewCreatedDto].
extension ReviewCreatedDtoPatterns on ReviewCreatedDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewCreatedDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewCreatedDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewCreatedDto value)  $default,){
final _that = this;
switch (_that) {
case _ReviewCreatedDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewCreatedDto value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewCreatedDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int reviewId,  int matchId,  int revieweeId,  String sentiment,  int score,  List<String> hashtags,  String? detail,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewCreatedDto() when $default != null:
return $default(_that.reviewId,_that.matchId,_that.revieweeId,_that.sentiment,_that.score,_that.hashtags,_that.detail,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int reviewId,  int matchId,  int revieweeId,  String sentiment,  int score,  List<String> hashtags,  String? detail,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _ReviewCreatedDto():
return $default(_that.reviewId,_that.matchId,_that.revieweeId,_that.sentiment,_that.score,_that.hashtags,_that.detail,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int reviewId,  int matchId,  int revieweeId,  String sentiment,  int score,  List<String> hashtags,  String? detail,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ReviewCreatedDto() when $default != null:
return $default(_that.reviewId,_that.matchId,_that.revieweeId,_that.sentiment,_that.score,_that.hashtags,_that.detail,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewCreatedDto implements ReviewCreatedDto {
  const _ReviewCreatedDto({required this.reviewId, required this.matchId, required this.revieweeId, required this.sentiment, required this.score, final  List<String> hashtags = const <String>[], this.detail, required this.createdAt}): _hashtags = hashtags;
  factory _ReviewCreatedDto.fromJson(Map<String, dynamic> json) => _$ReviewCreatedDtoFromJson(json);

@override final  int reviewId;
@override final  int matchId;
@override final  int revieweeId;
@override final  String sentiment;
@override final  int score;
 final  List<String> _hashtags;
@override@JsonKey() List<String> get hashtags {
  if (_hashtags is EqualUnmodifiableListView) return _hashtags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hashtags);
}

@override final  String? detail;
@override final  String createdAt;

/// Create a copy of ReviewCreatedDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewCreatedDtoCopyWith<_ReviewCreatedDto> get copyWith => __$ReviewCreatedDtoCopyWithImpl<_ReviewCreatedDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewCreatedDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewCreatedDto&&(identical(other.reviewId, reviewId) || other.reviewId == reviewId)&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.revieweeId, revieweeId) || other.revieweeId == revieweeId)&&(identical(other.sentiment, sentiment) || other.sentiment == sentiment)&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other._hashtags, _hashtags)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reviewId,matchId,revieweeId,sentiment,score,const DeepCollectionEquality().hash(_hashtags),detail,createdAt);

@override
String toString() {
  return 'ReviewCreatedDto(reviewId: $reviewId, matchId: $matchId, revieweeId: $revieweeId, sentiment: $sentiment, score: $score, hashtags: $hashtags, detail: $detail, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ReviewCreatedDtoCopyWith<$Res> implements $ReviewCreatedDtoCopyWith<$Res> {
  factory _$ReviewCreatedDtoCopyWith(_ReviewCreatedDto value, $Res Function(_ReviewCreatedDto) _then) = __$ReviewCreatedDtoCopyWithImpl;
@override @useResult
$Res call({
 int reviewId, int matchId, int revieweeId, String sentiment, int score, List<String> hashtags, String? detail, String createdAt
});




}
/// @nodoc
class __$ReviewCreatedDtoCopyWithImpl<$Res>
    implements _$ReviewCreatedDtoCopyWith<$Res> {
  __$ReviewCreatedDtoCopyWithImpl(this._self, this._then);

  final _ReviewCreatedDto _self;
  final $Res Function(_ReviewCreatedDto) _then;

/// Create a copy of ReviewCreatedDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reviewId = null,Object? matchId = null,Object? revieweeId = null,Object? sentiment = null,Object? score = null,Object? hashtags = null,Object? detail = freezed,Object? createdAt = null,}) {
  return _then(_ReviewCreatedDto(
reviewId: null == reviewId ? _self.reviewId : reviewId // ignore: cast_nullable_to_non_nullable
as int,matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,revieweeId: null == revieweeId ? _self.revieweeId : revieweeId // ignore: cast_nullable_to_non_nullable
as int,sentiment: null == sentiment ? _self.sentiment : sentiment // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,hashtags: null == hashtags ? _self._hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ReviewCreateEnvelope {

 bool get success; ReviewCreatedDto? get data; String? get message; String? get code;
/// Create a copy of ReviewCreateEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewCreateEnvelopeCopyWith<ReviewCreateEnvelope> get copyWith => _$ReviewCreateEnvelopeCopyWithImpl<ReviewCreateEnvelope>(this as ReviewCreateEnvelope, _$identity);

  /// Serializes this ReviewCreateEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewCreateEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'ReviewCreateEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $ReviewCreateEnvelopeCopyWith<$Res>  {
  factory $ReviewCreateEnvelopeCopyWith(ReviewCreateEnvelope value, $Res Function(ReviewCreateEnvelope) _then) = _$ReviewCreateEnvelopeCopyWithImpl;
@useResult
$Res call({
 bool success, ReviewCreatedDto? data, String? message, String? code
});


$ReviewCreatedDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$ReviewCreateEnvelopeCopyWithImpl<$Res>
    implements $ReviewCreateEnvelopeCopyWith<$Res> {
  _$ReviewCreateEnvelopeCopyWithImpl(this._self, this._then);

  final ReviewCreateEnvelope _self;
  final $Res Function(ReviewCreateEnvelope) _then;

/// Create a copy of ReviewCreateEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ReviewCreatedDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ReviewCreateEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewCreatedDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ReviewCreatedDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReviewCreateEnvelope].
extension ReviewCreateEnvelopePatterns on ReviewCreateEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewCreateEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewCreateEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewCreateEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _ReviewCreateEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewCreateEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewCreateEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  ReviewCreatedDto? data,  String? message,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewCreateEnvelope() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  ReviewCreatedDto? data,  String? message,  String? code)  $default,) {final _that = this;
switch (_that) {
case _ReviewCreateEnvelope():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  ReviewCreatedDto? data,  String? message,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _ReviewCreateEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewCreateEnvelope implements ReviewCreateEnvelope {
  const _ReviewCreateEnvelope({required this.success, this.data, this.message, this.code});
  factory _ReviewCreateEnvelope.fromJson(Map<String, dynamic> json) => _$ReviewCreateEnvelopeFromJson(json);

@override final  bool success;
@override final  ReviewCreatedDto? data;
@override final  String? message;
@override final  String? code;

/// Create a copy of ReviewCreateEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewCreateEnvelopeCopyWith<_ReviewCreateEnvelope> get copyWith => __$ReviewCreateEnvelopeCopyWithImpl<_ReviewCreateEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewCreateEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewCreateEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'ReviewCreateEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$ReviewCreateEnvelopeCopyWith<$Res> implements $ReviewCreateEnvelopeCopyWith<$Res> {
  factory _$ReviewCreateEnvelopeCopyWith(_ReviewCreateEnvelope value, $Res Function(_ReviewCreateEnvelope) _then) = __$ReviewCreateEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 bool success, ReviewCreatedDto? data, String? message, String? code
});


@override $ReviewCreatedDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$ReviewCreateEnvelopeCopyWithImpl<$Res>
    implements _$ReviewCreateEnvelopeCopyWith<$Res> {
  __$ReviewCreateEnvelopeCopyWithImpl(this._self, this._then);

  final _ReviewCreateEnvelope _self;
  final $Res Function(_ReviewCreateEnvelope) _then;

/// Create a copy of ReviewCreateEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_ReviewCreateEnvelope(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ReviewCreatedDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ReviewCreateEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewCreatedDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ReviewCreatedDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
