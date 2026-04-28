// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserProfileDto {

 int get id; String get nickname; String? get profileImg; String? get level;@JsonKey(name: 'interestLoc1') String? get interestLoc1;@JsonKey(name: 'interestLoc2') String? get interestLoc2;@JsonKey(name: 'racketInfo') String? get racketInfo;@JsonKey(name: 'playStyle') String? get playStyle;@JsonKey(name: 'ratingScore') double? get ratingScore;@JsonKey(name: 'penaltyCount') int? get penaltyCount;@JsonKey(name: 'receivedReviewCount') int? get receivedReviewCount;@JsonKey(name: 'hostedMatchCount') int? get hostedMatchCount;@JsonKey(name: 'participatedMatchCount') int? get participatedMatchCount;@JsonKey(name: 'showCautionBadge') bool? get showCautionBadge;@JsonKey(name: 'participationBannedUntil') String? get participationBannedUntil;@JsonKey(name: 'suspendedUntil') String? get suspendedUntil;@JsonKey(name: 'accountStatus') String? get accountStatus;@JsonKey(readValue: _readJoinedAt) String? get joinedAt;@JsonKey(readValue: _readMannerTags, fromJson: _tagsFromJson) List<String>? get mannerTags;
/// Create a copy of UserProfileDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileDtoCopyWith<UserProfileDto> get copyWith => _$UserProfileDtoCopyWithImpl<UserProfileDto>(this as UserProfileDto, _$identity);

  /// Serializes this UserProfileDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileDto&&(identical(other.id, id) || other.id == id)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImg, profileImg) || other.profileImg == profileImg)&&(identical(other.level, level) || other.level == level)&&(identical(other.interestLoc1, interestLoc1) || other.interestLoc1 == interestLoc1)&&(identical(other.interestLoc2, interestLoc2) || other.interestLoc2 == interestLoc2)&&(identical(other.racketInfo, racketInfo) || other.racketInfo == racketInfo)&&(identical(other.playStyle, playStyle) || other.playStyle == playStyle)&&(identical(other.ratingScore, ratingScore) || other.ratingScore == ratingScore)&&(identical(other.penaltyCount, penaltyCount) || other.penaltyCount == penaltyCount)&&(identical(other.receivedReviewCount, receivedReviewCount) || other.receivedReviewCount == receivedReviewCount)&&(identical(other.hostedMatchCount, hostedMatchCount) || other.hostedMatchCount == hostedMatchCount)&&(identical(other.participatedMatchCount, participatedMatchCount) || other.participatedMatchCount == participatedMatchCount)&&(identical(other.showCautionBadge, showCautionBadge) || other.showCautionBadge == showCautionBadge)&&(identical(other.participationBannedUntil, participationBannedUntil) || other.participationBannedUntil == participationBannedUntil)&&(identical(other.suspendedUntil, suspendedUntil) || other.suspendedUntil == suspendedUntil)&&(identical(other.accountStatus, accountStatus) || other.accountStatus == accountStatus)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt)&&const DeepCollectionEquality().equals(other.mannerTags, mannerTags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,nickname,profileImg,level,interestLoc1,interestLoc2,racketInfo,playStyle,ratingScore,penaltyCount,receivedReviewCount,hostedMatchCount,participatedMatchCount,showCautionBadge,participationBannedUntil,suspendedUntil,accountStatus,joinedAt,const DeepCollectionEquality().hash(mannerTags)]);

@override
String toString() {
  return 'UserProfileDto(id: $id, nickname: $nickname, profileImg: $profileImg, level: $level, interestLoc1: $interestLoc1, interestLoc2: $interestLoc2, racketInfo: $racketInfo, playStyle: $playStyle, ratingScore: $ratingScore, penaltyCount: $penaltyCount, receivedReviewCount: $receivedReviewCount, hostedMatchCount: $hostedMatchCount, participatedMatchCount: $participatedMatchCount, showCautionBadge: $showCautionBadge, participationBannedUntil: $participationBannedUntil, suspendedUntil: $suspendedUntil, accountStatus: $accountStatus, joinedAt: $joinedAt, mannerTags: $mannerTags)';
}


}

/// @nodoc
abstract mixin class $UserProfileDtoCopyWith<$Res>  {
  factory $UserProfileDtoCopyWith(UserProfileDto value, $Res Function(UserProfileDto) _then) = _$UserProfileDtoCopyWithImpl;
@useResult
$Res call({
 int id, String nickname, String? profileImg, String? level,@JsonKey(name: 'interestLoc1') String? interestLoc1,@JsonKey(name: 'interestLoc2') String? interestLoc2,@JsonKey(name: 'racketInfo') String? racketInfo,@JsonKey(name: 'playStyle') String? playStyle,@JsonKey(name: 'ratingScore') double? ratingScore,@JsonKey(name: 'penaltyCount') int? penaltyCount,@JsonKey(name: 'receivedReviewCount') int? receivedReviewCount,@JsonKey(name: 'hostedMatchCount') int? hostedMatchCount,@JsonKey(name: 'participatedMatchCount') int? participatedMatchCount,@JsonKey(name: 'showCautionBadge') bool? showCautionBadge,@JsonKey(name: 'participationBannedUntil') String? participationBannedUntil,@JsonKey(name: 'suspendedUntil') String? suspendedUntil,@JsonKey(name: 'accountStatus') String? accountStatus,@JsonKey(readValue: _readJoinedAt) String? joinedAt,@JsonKey(readValue: _readMannerTags, fromJson: _tagsFromJson) List<String>? mannerTags
});




}
/// @nodoc
class _$UserProfileDtoCopyWithImpl<$Res>
    implements $UserProfileDtoCopyWith<$Res> {
  _$UserProfileDtoCopyWithImpl(this._self, this._then);

  final UserProfileDto _self;
  final $Res Function(UserProfileDto) _then;

/// Create a copy of UserProfileDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nickname = null,Object? profileImg = freezed,Object? level = freezed,Object? interestLoc1 = freezed,Object? interestLoc2 = freezed,Object? racketInfo = freezed,Object? playStyle = freezed,Object? ratingScore = freezed,Object? penaltyCount = freezed,Object? receivedReviewCount = freezed,Object? hostedMatchCount = freezed,Object? participatedMatchCount = freezed,Object? showCautionBadge = freezed,Object? participationBannedUntil = freezed,Object? suspendedUntil = freezed,Object? accountStatus = freezed,Object? joinedAt = freezed,Object? mannerTags = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImg: freezed == profileImg ? _self.profileImg : profileImg // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String?,interestLoc1: freezed == interestLoc1 ? _self.interestLoc1 : interestLoc1 // ignore: cast_nullable_to_non_nullable
as String?,interestLoc2: freezed == interestLoc2 ? _self.interestLoc2 : interestLoc2 // ignore: cast_nullable_to_non_nullable
as String?,racketInfo: freezed == racketInfo ? _self.racketInfo : racketInfo // ignore: cast_nullable_to_non_nullable
as String?,playStyle: freezed == playStyle ? _self.playStyle : playStyle // ignore: cast_nullable_to_non_nullable
as String?,ratingScore: freezed == ratingScore ? _self.ratingScore : ratingScore // ignore: cast_nullable_to_non_nullable
as double?,penaltyCount: freezed == penaltyCount ? _self.penaltyCount : penaltyCount // ignore: cast_nullable_to_non_nullable
as int?,receivedReviewCount: freezed == receivedReviewCount ? _self.receivedReviewCount : receivedReviewCount // ignore: cast_nullable_to_non_nullable
as int?,hostedMatchCount: freezed == hostedMatchCount ? _self.hostedMatchCount : hostedMatchCount // ignore: cast_nullable_to_non_nullable
as int?,participatedMatchCount: freezed == participatedMatchCount ? _self.participatedMatchCount : participatedMatchCount // ignore: cast_nullable_to_non_nullable
as int?,showCautionBadge: freezed == showCautionBadge ? _self.showCautionBadge : showCautionBadge // ignore: cast_nullable_to_non_nullable
as bool?,participationBannedUntil: freezed == participationBannedUntil ? _self.participationBannedUntil : participationBannedUntil // ignore: cast_nullable_to_non_nullable
as String?,suspendedUntil: freezed == suspendedUntil ? _self.suspendedUntil : suspendedUntil // ignore: cast_nullable_to_non_nullable
as String?,accountStatus: freezed == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String?,joinedAt: freezed == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as String?,mannerTags: freezed == mannerTags ? _self.mannerTags : mannerTags // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserProfileDto].
extension UserProfileDtoPatterns on UserProfileDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProfileDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfileDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProfileDto value)  $default,){
final _that = this;
switch (_that) {
case _UserProfileDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProfileDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserProfileDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String nickname,  String? profileImg,  String? level, @JsonKey(name: 'interestLoc1')  String? interestLoc1, @JsonKey(name: 'interestLoc2')  String? interestLoc2, @JsonKey(name: 'racketInfo')  String? racketInfo, @JsonKey(name: 'playStyle')  String? playStyle, @JsonKey(name: 'ratingScore')  double? ratingScore, @JsonKey(name: 'penaltyCount')  int? penaltyCount, @JsonKey(name: 'receivedReviewCount')  int? receivedReviewCount, @JsonKey(name: 'hostedMatchCount')  int? hostedMatchCount, @JsonKey(name: 'participatedMatchCount')  int? participatedMatchCount, @JsonKey(name: 'showCautionBadge')  bool? showCautionBadge, @JsonKey(name: 'participationBannedUntil')  String? participationBannedUntil, @JsonKey(name: 'suspendedUntil')  String? suspendedUntil, @JsonKey(name: 'accountStatus')  String? accountStatus, @JsonKey(readValue: _readJoinedAt)  String? joinedAt, @JsonKey(readValue: _readMannerTags, fromJson: _tagsFromJson)  List<String>? mannerTags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfileDto() when $default != null:
return $default(_that.id,_that.nickname,_that.profileImg,_that.level,_that.interestLoc1,_that.interestLoc2,_that.racketInfo,_that.playStyle,_that.ratingScore,_that.penaltyCount,_that.receivedReviewCount,_that.hostedMatchCount,_that.participatedMatchCount,_that.showCautionBadge,_that.participationBannedUntil,_that.suspendedUntil,_that.accountStatus,_that.joinedAt,_that.mannerTags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String nickname,  String? profileImg,  String? level, @JsonKey(name: 'interestLoc1')  String? interestLoc1, @JsonKey(name: 'interestLoc2')  String? interestLoc2, @JsonKey(name: 'racketInfo')  String? racketInfo, @JsonKey(name: 'playStyle')  String? playStyle, @JsonKey(name: 'ratingScore')  double? ratingScore, @JsonKey(name: 'penaltyCount')  int? penaltyCount, @JsonKey(name: 'receivedReviewCount')  int? receivedReviewCount, @JsonKey(name: 'hostedMatchCount')  int? hostedMatchCount, @JsonKey(name: 'participatedMatchCount')  int? participatedMatchCount, @JsonKey(name: 'showCautionBadge')  bool? showCautionBadge, @JsonKey(name: 'participationBannedUntil')  String? participationBannedUntil, @JsonKey(name: 'suspendedUntil')  String? suspendedUntil, @JsonKey(name: 'accountStatus')  String? accountStatus, @JsonKey(readValue: _readJoinedAt)  String? joinedAt, @JsonKey(readValue: _readMannerTags, fromJson: _tagsFromJson)  List<String>? mannerTags)  $default,) {final _that = this;
switch (_that) {
case _UserProfileDto():
return $default(_that.id,_that.nickname,_that.profileImg,_that.level,_that.interestLoc1,_that.interestLoc2,_that.racketInfo,_that.playStyle,_that.ratingScore,_that.penaltyCount,_that.receivedReviewCount,_that.hostedMatchCount,_that.participatedMatchCount,_that.showCautionBadge,_that.participationBannedUntil,_that.suspendedUntil,_that.accountStatus,_that.joinedAt,_that.mannerTags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String nickname,  String? profileImg,  String? level, @JsonKey(name: 'interestLoc1')  String? interestLoc1, @JsonKey(name: 'interestLoc2')  String? interestLoc2, @JsonKey(name: 'racketInfo')  String? racketInfo, @JsonKey(name: 'playStyle')  String? playStyle, @JsonKey(name: 'ratingScore')  double? ratingScore, @JsonKey(name: 'penaltyCount')  int? penaltyCount, @JsonKey(name: 'receivedReviewCount')  int? receivedReviewCount, @JsonKey(name: 'hostedMatchCount')  int? hostedMatchCount, @JsonKey(name: 'participatedMatchCount')  int? participatedMatchCount, @JsonKey(name: 'showCautionBadge')  bool? showCautionBadge, @JsonKey(name: 'participationBannedUntil')  String? participationBannedUntil, @JsonKey(name: 'suspendedUntil')  String? suspendedUntil, @JsonKey(name: 'accountStatus')  String? accountStatus, @JsonKey(readValue: _readJoinedAt)  String? joinedAt, @JsonKey(readValue: _readMannerTags, fromJson: _tagsFromJson)  List<String>? mannerTags)?  $default,) {final _that = this;
switch (_that) {
case _UserProfileDto() when $default != null:
return $default(_that.id,_that.nickname,_that.profileImg,_that.level,_that.interestLoc1,_that.interestLoc2,_that.racketInfo,_that.playStyle,_that.ratingScore,_that.penaltyCount,_that.receivedReviewCount,_that.hostedMatchCount,_that.participatedMatchCount,_that.showCautionBadge,_that.participationBannedUntil,_that.suspendedUntil,_that.accountStatus,_that.joinedAt,_that.mannerTags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserProfileDto implements UserProfileDto {
  const _UserProfileDto({required this.id, required this.nickname, this.profileImg, this.level, @JsonKey(name: 'interestLoc1') this.interestLoc1, @JsonKey(name: 'interestLoc2') this.interestLoc2, @JsonKey(name: 'racketInfo') this.racketInfo, @JsonKey(name: 'playStyle') this.playStyle, @JsonKey(name: 'ratingScore') this.ratingScore, @JsonKey(name: 'penaltyCount') this.penaltyCount, @JsonKey(name: 'receivedReviewCount') this.receivedReviewCount, @JsonKey(name: 'hostedMatchCount') this.hostedMatchCount, @JsonKey(name: 'participatedMatchCount') this.participatedMatchCount, @JsonKey(name: 'showCautionBadge') this.showCautionBadge, @JsonKey(name: 'participationBannedUntil') this.participationBannedUntil, @JsonKey(name: 'suspendedUntil') this.suspendedUntil, @JsonKey(name: 'accountStatus') this.accountStatus, @JsonKey(readValue: _readJoinedAt) this.joinedAt, @JsonKey(readValue: _readMannerTags, fromJson: _tagsFromJson) final  List<String>? mannerTags}): _mannerTags = mannerTags;
  factory _UserProfileDto.fromJson(Map<String, dynamic> json) => _$UserProfileDtoFromJson(json);

@override final  int id;
@override final  String nickname;
@override final  String? profileImg;
@override final  String? level;
@override@JsonKey(name: 'interestLoc1') final  String? interestLoc1;
@override@JsonKey(name: 'interestLoc2') final  String? interestLoc2;
@override@JsonKey(name: 'racketInfo') final  String? racketInfo;
@override@JsonKey(name: 'playStyle') final  String? playStyle;
@override@JsonKey(name: 'ratingScore') final  double? ratingScore;
@override@JsonKey(name: 'penaltyCount') final  int? penaltyCount;
@override@JsonKey(name: 'receivedReviewCount') final  int? receivedReviewCount;
@override@JsonKey(name: 'hostedMatchCount') final  int? hostedMatchCount;
@override@JsonKey(name: 'participatedMatchCount') final  int? participatedMatchCount;
@override@JsonKey(name: 'showCautionBadge') final  bool? showCautionBadge;
@override@JsonKey(name: 'participationBannedUntil') final  String? participationBannedUntil;
@override@JsonKey(name: 'suspendedUntil') final  String? suspendedUntil;
@override@JsonKey(name: 'accountStatus') final  String? accountStatus;
@override@JsonKey(readValue: _readJoinedAt) final  String? joinedAt;
 final  List<String>? _mannerTags;
@override@JsonKey(readValue: _readMannerTags, fromJson: _tagsFromJson) List<String>? get mannerTags {
  final value = _mannerTags;
  if (value == null) return null;
  if (_mannerTags is EqualUnmodifiableListView) return _mannerTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UserProfileDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileDtoCopyWith<_UserProfileDto> get copyWith => __$UserProfileDtoCopyWithImpl<_UserProfileDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserProfileDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfileDto&&(identical(other.id, id) || other.id == id)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImg, profileImg) || other.profileImg == profileImg)&&(identical(other.level, level) || other.level == level)&&(identical(other.interestLoc1, interestLoc1) || other.interestLoc1 == interestLoc1)&&(identical(other.interestLoc2, interestLoc2) || other.interestLoc2 == interestLoc2)&&(identical(other.racketInfo, racketInfo) || other.racketInfo == racketInfo)&&(identical(other.playStyle, playStyle) || other.playStyle == playStyle)&&(identical(other.ratingScore, ratingScore) || other.ratingScore == ratingScore)&&(identical(other.penaltyCount, penaltyCount) || other.penaltyCount == penaltyCount)&&(identical(other.receivedReviewCount, receivedReviewCount) || other.receivedReviewCount == receivedReviewCount)&&(identical(other.hostedMatchCount, hostedMatchCount) || other.hostedMatchCount == hostedMatchCount)&&(identical(other.participatedMatchCount, participatedMatchCount) || other.participatedMatchCount == participatedMatchCount)&&(identical(other.showCautionBadge, showCautionBadge) || other.showCautionBadge == showCautionBadge)&&(identical(other.participationBannedUntil, participationBannedUntil) || other.participationBannedUntil == participationBannedUntil)&&(identical(other.suspendedUntil, suspendedUntil) || other.suspendedUntil == suspendedUntil)&&(identical(other.accountStatus, accountStatus) || other.accountStatus == accountStatus)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt)&&const DeepCollectionEquality().equals(other._mannerTags, _mannerTags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,nickname,profileImg,level,interestLoc1,interestLoc2,racketInfo,playStyle,ratingScore,penaltyCount,receivedReviewCount,hostedMatchCount,participatedMatchCount,showCautionBadge,participationBannedUntil,suspendedUntil,accountStatus,joinedAt,const DeepCollectionEquality().hash(_mannerTags)]);

@override
String toString() {
  return 'UserProfileDto(id: $id, nickname: $nickname, profileImg: $profileImg, level: $level, interestLoc1: $interestLoc1, interestLoc2: $interestLoc2, racketInfo: $racketInfo, playStyle: $playStyle, ratingScore: $ratingScore, penaltyCount: $penaltyCount, receivedReviewCount: $receivedReviewCount, hostedMatchCount: $hostedMatchCount, participatedMatchCount: $participatedMatchCount, showCautionBadge: $showCautionBadge, participationBannedUntil: $participationBannedUntil, suspendedUntil: $suspendedUntil, accountStatus: $accountStatus, joinedAt: $joinedAt, mannerTags: $mannerTags)';
}


}

/// @nodoc
abstract mixin class _$UserProfileDtoCopyWith<$Res> implements $UserProfileDtoCopyWith<$Res> {
  factory _$UserProfileDtoCopyWith(_UserProfileDto value, $Res Function(_UserProfileDto) _then) = __$UserProfileDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String nickname, String? profileImg, String? level,@JsonKey(name: 'interestLoc1') String? interestLoc1,@JsonKey(name: 'interestLoc2') String? interestLoc2,@JsonKey(name: 'racketInfo') String? racketInfo,@JsonKey(name: 'playStyle') String? playStyle,@JsonKey(name: 'ratingScore') double? ratingScore,@JsonKey(name: 'penaltyCount') int? penaltyCount,@JsonKey(name: 'receivedReviewCount') int? receivedReviewCount,@JsonKey(name: 'hostedMatchCount') int? hostedMatchCount,@JsonKey(name: 'participatedMatchCount') int? participatedMatchCount,@JsonKey(name: 'showCautionBadge') bool? showCautionBadge,@JsonKey(name: 'participationBannedUntil') String? participationBannedUntil,@JsonKey(name: 'suspendedUntil') String? suspendedUntil,@JsonKey(name: 'accountStatus') String? accountStatus,@JsonKey(readValue: _readJoinedAt) String? joinedAt,@JsonKey(readValue: _readMannerTags, fromJson: _tagsFromJson) List<String>? mannerTags
});




}
/// @nodoc
class __$UserProfileDtoCopyWithImpl<$Res>
    implements _$UserProfileDtoCopyWith<$Res> {
  __$UserProfileDtoCopyWithImpl(this._self, this._then);

  final _UserProfileDto _self;
  final $Res Function(_UserProfileDto) _then;

/// Create a copy of UserProfileDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nickname = null,Object? profileImg = freezed,Object? level = freezed,Object? interestLoc1 = freezed,Object? interestLoc2 = freezed,Object? racketInfo = freezed,Object? playStyle = freezed,Object? ratingScore = freezed,Object? penaltyCount = freezed,Object? receivedReviewCount = freezed,Object? hostedMatchCount = freezed,Object? participatedMatchCount = freezed,Object? showCautionBadge = freezed,Object? participationBannedUntil = freezed,Object? suspendedUntil = freezed,Object? accountStatus = freezed,Object? joinedAt = freezed,Object? mannerTags = freezed,}) {
  return _then(_UserProfileDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImg: freezed == profileImg ? _self.profileImg : profileImg // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String?,interestLoc1: freezed == interestLoc1 ? _self.interestLoc1 : interestLoc1 // ignore: cast_nullable_to_non_nullable
as String?,interestLoc2: freezed == interestLoc2 ? _self.interestLoc2 : interestLoc2 // ignore: cast_nullable_to_non_nullable
as String?,racketInfo: freezed == racketInfo ? _self.racketInfo : racketInfo // ignore: cast_nullable_to_non_nullable
as String?,playStyle: freezed == playStyle ? _self.playStyle : playStyle // ignore: cast_nullable_to_non_nullable
as String?,ratingScore: freezed == ratingScore ? _self.ratingScore : ratingScore // ignore: cast_nullable_to_non_nullable
as double?,penaltyCount: freezed == penaltyCount ? _self.penaltyCount : penaltyCount // ignore: cast_nullable_to_non_nullable
as int?,receivedReviewCount: freezed == receivedReviewCount ? _self.receivedReviewCount : receivedReviewCount // ignore: cast_nullable_to_non_nullable
as int?,hostedMatchCount: freezed == hostedMatchCount ? _self.hostedMatchCount : hostedMatchCount // ignore: cast_nullable_to_non_nullable
as int?,participatedMatchCount: freezed == participatedMatchCount ? _self.participatedMatchCount : participatedMatchCount // ignore: cast_nullable_to_non_nullable
as int?,showCautionBadge: freezed == showCautionBadge ? _self.showCautionBadge : showCautionBadge // ignore: cast_nullable_to_non_nullable
as bool?,participationBannedUntil: freezed == participationBannedUntil ? _self.participationBannedUntil : participationBannedUntil // ignore: cast_nullable_to_non_nullable
as String?,suspendedUntil: freezed == suspendedUntil ? _self.suspendedUntil : suspendedUntil // ignore: cast_nullable_to_non_nullable
as String?,accountStatus: freezed == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String?,joinedAt: freezed == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as String?,mannerTags: freezed == mannerTags ? _self._mannerTags : mannerTags // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}


/// @nodoc
mixin _$UserProfileEnvelope {

 bool get success; UserProfileDto? get data; String? get message; String? get code;
/// Create a copy of UserProfileEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileEnvelopeCopyWith<UserProfileEnvelope> get copyWith => _$UserProfileEnvelopeCopyWithImpl<UserProfileEnvelope>(this as UserProfileEnvelope, _$identity);

  /// Serializes this UserProfileEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'UserProfileEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $UserProfileEnvelopeCopyWith<$Res>  {
  factory $UserProfileEnvelopeCopyWith(UserProfileEnvelope value, $Res Function(UserProfileEnvelope) _then) = _$UserProfileEnvelopeCopyWithImpl;
@useResult
$Res call({
 bool success, UserProfileDto? data, String? message, String? code
});


$UserProfileDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$UserProfileEnvelopeCopyWithImpl<$Res>
    implements $UserProfileEnvelopeCopyWith<$Res> {
  _$UserProfileEnvelopeCopyWithImpl(this._self, this._then);

  final UserProfileEnvelope _self;
  final $Res Function(UserProfileEnvelope) _then;

/// Create a copy of UserProfileEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserProfileDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of UserProfileEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $UserProfileDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserProfileEnvelope].
extension UserProfileEnvelopePatterns on UserProfileEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProfileEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfileEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProfileEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _UserProfileEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProfileEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _UserProfileEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  UserProfileDto? data,  String? message,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfileEnvelope() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  UserProfileDto? data,  String? message,  String? code)  $default,) {final _that = this;
switch (_that) {
case _UserProfileEnvelope():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  UserProfileDto? data,  String? message,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _UserProfileEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserProfileEnvelope implements UserProfileEnvelope {
  const _UserProfileEnvelope({required this.success, this.data, this.message, this.code});
  factory _UserProfileEnvelope.fromJson(Map<String, dynamic> json) => _$UserProfileEnvelopeFromJson(json);

@override final  bool success;
@override final  UserProfileDto? data;
@override final  String? message;
@override final  String? code;

/// Create a copy of UserProfileEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileEnvelopeCopyWith<_UserProfileEnvelope> get copyWith => __$UserProfileEnvelopeCopyWithImpl<_UserProfileEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserProfileEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfileEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'UserProfileEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$UserProfileEnvelopeCopyWith<$Res> implements $UserProfileEnvelopeCopyWith<$Res> {
  factory _$UserProfileEnvelopeCopyWith(_UserProfileEnvelope value, $Res Function(_UserProfileEnvelope) _then) = __$UserProfileEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 bool success, UserProfileDto? data, String? message, String? code
});


@override $UserProfileDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$UserProfileEnvelopeCopyWithImpl<$Res>
    implements _$UserProfileEnvelopeCopyWith<$Res> {
  __$UserProfileEnvelopeCopyWithImpl(this._self, this._then);

  final _UserProfileEnvelope _self;
  final $Res Function(_UserProfileEnvelope) _then;

/// Create a copy of UserProfileEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_UserProfileEnvelope(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserProfileDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of UserProfileEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $UserProfileDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$NicknameAvailabilityDto {

 bool get available;
/// Create a copy of NicknameAvailabilityDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NicknameAvailabilityDtoCopyWith<NicknameAvailabilityDto> get copyWith => _$NicknameAvailabilityDtoCopyWithImpl<NicknameAvailabilityDto>(this as NicknameAvailabilityDto, _$identity);

  /// Serializes this NicknameAvailabilityDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NicknameAvailabilityDto&&(identical(other.available, available) || other.available == available));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,available);

@override
String toString() {
  return 'NicknameAvailabilityDto(available: $available)';
}


}

/// @nodoc
abstract mixin class $NicknameAvailabilityDtoCopyWith<$Res>  {
  factory $NicknameAvailabilityDtoCopyWith(NicknameAvailabilityDto value, $Res Function(NicknameAvailabilityDto) _then) = _$NicknameAvailabilityDtoCopyWithImpl;
@useResult
$Res call({
 bool available
});




}
/// @nodoc
class _$NicknameAvailabilityDtoCopyWithImpl<$Res>
    implements $NicknameAvailabilityDtoCopyWith<$Res> {
  _$NicknameAvailabilityDtoCopyWithImpl(this._self, this._then);

  final NicknameAvailabilityDto _self;
  final $Res Function(NicknameAvailabilityDto) _then;

/// Create a copy of NicknameAvailabilityDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? available = null,}) {
  return _then(_self.copyWith(
available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NicknameAvailabilityDto].
extension NicknameAvailabilityDtoPatterns on NicknameAvailabilityDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NicknameAvailabilityDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NicknameAvailabilityDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NicknameAvailabilityDto value)  $default,){
final _that = this;
switch (_that) {
case _NicknameAvailabilityDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NicknameAvailabilityDto value)?  $default,){
final _that = this;
switch (_that) {
case _NicknameAvailabilityDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool available)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NicknameAvailabilityDto() when $default != null:
return $default(_that.available);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool available)  $default,) {final _that = this;
switch (_that) {
case _NicknameAvailabilityDto():
return $default(_that.available);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool available)?  $default,) {final _that = this;
switch (_that) {
case _NicknameAvailabilityDto() when $default != null:
return $default(_that.available);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NicknameAvailabilityDto implements NicknameAvailabilityDto {
  const _NicknameAvailabilityDto({required this.available});
  factory _NicknameAvailabilityDto.fromJson(Map<String, dynamic> json) => _$NicknameAvailabilityDtoFromJson(json);

@override final  bool available;

/// Create a copy of NicknameAvailabilityDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NicknameAvailabilityDtoCopyWith<_NicknameAvailabilityDto> get copyWith => __$NicknameAvailabilityDtoCopyWithImpl<_NicknameAvailabilityDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NicknameAvailabilityDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NicknameAvailabilityDto&&(identical(other.available, available) || other.available == available));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,available);

@override
String toString() {
  return 'NicknameAvailabilityDto(available: $available)';
}


}

/// @nodoc
abstract mixin class _$NicknameAvailabilityDtoCopyWith<$Res> implements $NicknameAvailabilityDtoCopyWith<$Res> {
  factory _$NicknameAvailabilityDtoCopyWith(_NicknameAvailabilityDto value, $Res Function(_NicknameAvailabilityDto) _then) = __$NicknameAvailabilityDtoCopyWithImpl;
@override @useResult
$Res call({
 bool available
});




}
/// @nodoc
class __$NicknameAvailabilityDtoCopyWithImpl<$Res>
    implements _$NicknameAvailabilityDtoCopyWith<$Res> {
  __$NicknameAvailabilityDtoCopyWithImpl(this._self, this._then);

  final _NicknameAvailabilityDto _self;
  final $Res Function(_NicknameAvailabilityDto) _then;

/// Create a copy of NicknameAvailabilityDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? available = null,}) {
  return _then(_NicknameAvailabilityDto(
available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$NicknameCheckEnvelope {

 bool get success; NicknameAvailabilityDto? get data; String? get message; String? get code;
/// Create a copy of NicknameCheckEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NicknameCheckEnvelopeCopyWith<NicknameCheckEnvelope> get copyWith => _$NicknameCheckEnvelopeCopyWithImpl<NicknameCheckEnvelope>(this as NicknameCheckEnvelope, _$identity);

  /// Serializes this NicknameCheckEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NicknameCheckEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'NicknameCheckEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $NicknameCheckEnvelopeCopyWith<$Res>  {
  factory $NicknameCheckEnvelopeCopyWith(NicknameCheckEnvelope value, $Res Function(NicknameCheckEnvelope) _then) = _$NicknameCheckEnvelopeCopyWithImpl;
@useResult
$Res call({
 bool success, NicknameAvailabilityDto? data, String? message, String? code
});


$NicknameAvailabilityDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$NicknameCheckEnvelopeCopyWithImpl<$Res>
    implements $NicknameCheckEnvelopeCopyWith<$Res> {
  _$NicknameCheckEnvelopeCopyWithImpl(this._self, this._then);

  final NicknameCheckEnvelope _self;
  final $Res Function(NicknameCheckEnvelope) _then;

/// Create a copy of NicknameCheckEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NicknameAvailabilityDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of NicknameCheckEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NicknameAvailabilityDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $NicknameAvailabilityDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [NicknameCheckEnvelope].
extension NicknameCheckEnvelopePatterns on NicknameCheckEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NicknameCheckEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NicknameCheckEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NicknameCheckEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _NicknameCheckEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NicknameCheckEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _NicknameCheckEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  NicknameAvailabilityDto? data,  String? message,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NicknameCheckEnvelope() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  NicknameAvailabilityDto? data,  String? message,  String? code)  $default,) {final _that = this;
switch (_that) {
case _NicknameCheckEnvelope():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  NicknameAvailabilityDto? data,  String? message,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _NicknameCheckEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NicknameCheckEnvelope implements NicknameCheckEnvelope {
  const _NicknameCheckEnvelope({required this.success, this.data, this.message, this.code});
  factory _NicknameCheckEnvelope.fromJson(Map<String, dynamic> json) => _$NicknameCheckEnvelopeFromJson(json);

@override final  bool success;
@override final  NicknameAvailabilityDto? data;
@override final  String? message;
@override final  String? code;

/// Create a copy of NicknameCheckEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NicknameCheckEnvelopeCopyWith<_NicknameCheckEnvelope> get copyWith => __$NicknameCheckEnvelopeCopyWithImpl<_NicknameCheckEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NicknameCheckEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NicknameCheckEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'NicknameCheckEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$NicknameCheckEnvelopeCopyWith<$Res> implements $NicknameCheckEnvelopeCopyWith<$Res> {
  factory _$NicknameCheckEnvelopeCopyWith(_NicknameCheckEnvelope value, $Res Function(_NicknameCheckEnvelope) _then) = __$NicknameCheckEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 bool success, NicknameAvailabilityDto? data, String? message, String? code
});


@override $NicknameAvailabilityDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$NicknameCheckEnvelopeCopyWithImpl<$Res>
    implements _$NicknameCheckEnvelopeCopyWith<$Res> {
  __$NicknameCheckEnvelopeCopyWithImpl(this._self, this._then);

  final _NicknameCheckEnvelope _self;
  final $Res Function(_NicknameCheckEnvelope) _then;

/// Create a copy of NicknameCheckEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_NicknameCheckEnvelope(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NicknameAvailabilityDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of NicknameCheckEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NicknameAvailabilityDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $NicknameAvailabilityDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
