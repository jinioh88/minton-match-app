// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_view_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MatchListItemDto {

 int get matchId; String get title; String get matchDate; String get startTime; String? get locationName; int get maxPeople; int get currentPeople; String? get targetLevels; CostPolicy get costPolicy; String? get imageUrl; String? get hostNickname; String? get hostProfileImg; double? get hostRatingScore; String get status;
/// Create a copy of MatchListItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchListItemDtoCopyWith<MatchListItemDto> get copyWith => _$MatchListItemDtoCopyWithImpl<MatchListItemDto>(this as MatchListItemDto, _$identity);

  /// Serializes this MatchListItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchListItemDto&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.title, title) || other.title == title)&&(identical(other.matchDate, matchDate) || other.matchDate == matchDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.maxPeople, maxPeople) || other.maxPeople == maxPeople)&&(identical(other.currentPeople, currentPeople) || other.currentPeople == currentPeople)&&(identical(other.targetLevels, targetLevels) || other.targetLevels == targetLevels)&&(identical(other.costPolicy, costPolicy) || other.costPolicy == costPolicy)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.hostNickname, hostNickname) || other.hostNickname == hostNickname)&&(identical(other.hostProfileImg, hostProfileImg) || other.hostProfileImg == hostProfileImg)&&(identical(other.hostRatingScore, hostRatingScore) || other.hostRatingScore == hostRatingScore)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,matchId,title,matchDate,startTime,locationName,maxPeople,currentPeople,targetLevels,costPolicy,imageUrl,hostNickname,hostProfileImg,hostRatingScore,status);

@override
String toString() {
  return 'MatchListItemDto(matchId: $matchId, title: $title, matchDate: $matchDate, startTime: $startTime, locationName: $locationName, maxPeople: $maxPeople, currentPeople: $currentPeople, targetLevels: $targetLevels, costPolicy: $costPolicy, imageUrl: $imageUrl, hostNickname: $hostNickname, hostProfileImg: $hostProfileImg, hostRatingScore: $hostRatingScore, status: $status)';
}


}

/// @nodoc
abstract mixin class $MatchListItemDtoCopyWith<$Res>  {
  factory $MatchListItemDtoCopyWith(MatchListItemDto value, $Res Function(MatchListItemDto) _then) = _$MatchListItemDtoCopyWithImpl;
@useResult
$Res call({
 int matchId, String title, String matchDate, String startTime, String? locationName, int maxPeople, int currentPeople, String? targetLevels, CostPolicy costPolicy, String? imageUrl, String? hostNickname, String? hostProfileImg, double? hostRatingScore, String status
});




}
/// @nodoc
class _$MatchListItemDtoCopyWithImpl<$Res>
    implements $MatchListItemDtoCopyWith<$Res> {
  _$MatchListItemDtoCopyWithImpl(this._self, this._then);

  final MatchListItemDto _self;
  final $Res Function(MatchListItemDto) _then;

/// Create a copy of MatchListItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? matchId = null,Object? title = null,Object? matchDate = null,Object? startTime = null,Object? locationName = freezed,Object? maxPeople = null,Object? currentPeople = null,Object? targetLevels = freezed,Object? costPolicy = null,Object? imageUrl = freezed,Object? hostNickname = freezed,Object? hostProfileImg = freezed,Object? hostRatingScore = freezed,Object? status = null,}) {
  return _then(_self.copyWith(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,matchDate: null == matchDate ? _self.matchDate : matchDate // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,maxPeople: null == maxPeople ? _self.maxPeople : maxPeople // ignore: cast_nullable_to_non_nullable
as int,currentPeople: null == currentPeople ? _self.currentPeople : currentPeople // ignore: cast_nullable_to_non_nullable
as int,targetLevels: freezed == targetLevels ? _self.targetLevels : targetLevels // ignore: cast_nullable_to_non_nullable
as String?,costPolicy: null == costPolicy ? _self.costPolicy : costPolicy // ignore: cast_nullable_to_non_nullable
as CostPolicy,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,hostNickname: freezed == hostNickname ? _self.hostNickname : hostNickname // ignore: cast_nullable_to_non_nullable
as String?,hostProfileImg: freezed == hostProfileImg ? _self.hostProfileImg : hostProfileImg // ignore: cast_nullable_to_non_nullable
as String?,hostRatingScore: freezed == hostRatingScore ? _self.hostRatingScore : hostRatingScore // ignore: cast_nullable_to_non_nullable
as double?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchListItemDto].
extension MatchListItemDtoPatterns on MatchListItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchListItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchListItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchListItemDto value)  $default,){
final _that = this;
switch (_that) {
case _MatchListItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchListItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _MatchListItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int matchId,  String title,  String matchDate,  String startTime,  String? locationName,  int maxPeople,  int currentPeople,  String? targetLevels,  CostPolicy costPolicy,  String? imageUrl,  String? hostNickname,  String? hostProfileImg,  double? hostRatingScore,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchListItemDto() when $default != null:
return $default(_that.matchId,_that.title,_that.matchDate,_that.startTime,_that.locationName,_that.maxPeople,_that.currentPeople,_that.targetLevels,_that.costPolicy,_that.imageUrl,_that.hostNickname,_that.hostProfileImg,_that.hostRatingScore,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int matchId,  String title,  String matchDate,  String startTime,  String? locationName,  int maxPeople,  int currentPeople,  String? targetLevels,  CostPolicy costPolicy,  String? imageUrl,  String? hostNickname,  String? hostProfileImg,  double? hostRatingScore,  String status)  $default,) {final _that = this;
switch (_that) {
case _MatchListItemDto():
return $default(_that.matchId,_that.title,_that.matchDate,_that.startTime,_that.locationName,_that.maxPeople,_that.currentPeople,_that.targetLevels,_that.costPolicy,_that.imageUrl,_that.hostNickname,_that.hostProfileImg,_that.hostRatingScore,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int matchId,  String title,  String matchDate,  String startTime,  String? locationName,  int maxPeople,  int currentPeople,  String? targetLevels,  CostPolicy costPolicy,  String? imageUrl,  String? hostNickname,  String? hostProfileImg,  double? hostRatingScore,  String status)?  $default,) {final _that = this;
switch (_that) {
case _MatchListItemDto() when $default != null:
return $default(_that.matchId,_that.title,_that.matchDate,_that.startTime,_that.locationName,_that.maxPeople,_that.currentPeople,_that.targetLevels,_that.costPolicy,_that.imageUrl,_that.hostNickname,_that.hostProfileImg,_that.hostRatingScore,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchListItemDto implements MatchListItemDto {
  const _MatchListItemDto({required this.matchId, required this.title, required this.matchDate, required this.startTime, this.locationName, required this.maxPeople, required this.currentPeople, this.targetLevels, required this.costPolicy, this.imageUrl, this.hostNickname, this.hostProfileImg, this.hostRatingScore, required this.status});
  factory _MatchListItemDto.fromJson(Map<String, dynamic> json) => _$MatchListItemDtoFromJson(json);

@override final  int matchId;
@override final  String title;
@override final  String matchDate;
@override final  String startTime;
@override final  String? locationName;
@override final  int maxPeople;
@override final  int currentPeople;
@override final  String? targetLevels;
@override final  CostPolicy costPolicy;
@override final  String? imageUrl;
@override final  String? hostNickname;
@override final  String? hostProfileImg;
@override final  double? hostRatingScore;
@override final  String status;

/// Create a copy of MatchListItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchListItemDtoCopyWith<_MatchListItemDto> get copyWith => __$MatchListItemDtoCopyWithImpl<_MatchListItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchListItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchListItemDto&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.title, title) || other.title == title)&&(identical(other.matchDate, matchDate) || other.matchDate == matchDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.maxPeople, maxPeople) || other.maxPeople == maxPeople)&&(identical(other.currentPeople, currentPeople) || other.currentPeople == currentPeople)&&(identical(other.targetLevels, targetLevels) || other.targetLevels == targetLevels)&&(identical(other.costPolicy, costPolicy) || other.costPolicy == costPolicy)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.hostNickname, hostNickname) || other.hostNickname == hostNickname)&&(identical(other.hostProfileImg, hostProfileImg) || other.hostProfileImg == hostProfileImg)&&(identical(other.hostRatingScore, hostRatingScore) || other.hostRatingScore == hostRatingScore)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,matchId,title,matchDate,startTime,locationName,maxPeople,currentPeople,targetLevels,costPolicy,imageUrl,hostNickname,hostProfileImg,hostRatingScore,status);

@override
String toString() {
  return 'MatchListItemDto(matchId: $matchId, title: $title, matchDate: $matchDate, startTime: $startTime, locationName: $locationName, maxPeople: $maxPeople, currentPeople: $currentPeople, targetLevels: $targetLevels, costPolicy: $costPolicy, imageUrl: $imageUrl, hostNickname: $hostNickname, hostProfileImg: $hostProfileImg, hostRatingScore: $hostRatingScore, status: $status)';
}


}

/// @nodoc
abstract mixin class _$MatchListItemDtoCopyWith<$Res> implements $MatchListItemDtoCopyWith<$Res> {
  factory _$MatchListItemDtoCopyWith(_MatchListItemDto value, $Res Function(_MatchListItemDto) _then) = __$MatchListItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int matchId, String title, String matchDate, String startTime, String? locationName, int maxPeople, int currentPeople, String? targetLevels, CostPolicy costPolicy, String? imageUrl, String? hostNickname, String? hostProfileImg, double? hostRatingScore, String status
});




}
/// @nodoc
class __$MatchListItemDtoCopyWithImpl<$Res>
    implements _$MatchListItemDtoCopyWith<$Res> {
  __$MatchListItemDtoCopyWithImpl(this._self, this._then);

  final _MatchListItemDto _self;
  final $Res Function(_MatchListItemDto) _then;

/// Create a copy of MatchListItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? matchId = null,Object? title = null,Object? matchDate = null,Object? startTime = null,Object? locationName = freezed,Object? maxPeople = null,Object? currentPeople = null,Object? targetLevels = freezed,Object? costPolicy = null,Object? imageUrl = freezed,Object? hostNickname = freezed,Object? hostProfileImg = freezed,Object? hostRatingScore = freezed,Object? status = null,}) {
  return _then(_MatchListItemDto(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,matchDate: null == matchDate ? _self.matchDate : matchDate // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,maxPeople: null == maxPeople ? _self.maxPeople : maxPeople // ignore: cast_nullable_to_non_nullable
as int,currentPeople: null == currentPeople ? _self.currentPeople : currentPeople // ignore: cast_nullable_to_non_nullable
as int,targetLevels: freezed == targetLevels ? _self.targetLevels : targetLevels // ignore: cast_nullable_to_non_nullable
as String?,costPolicy: null == costPolicy ? _self.costPolicy : costPolicy // ignore: cast_nullable_to_non_nullable
as CostPolicy,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,hostNickname: freezed == hostNickname ? _self.hostNickname : hostNickname // ignore: cast_nullable_to_non_nullable
as String?,hostProfileImg: freezed == hostProfileImg ? _self.hostProfileImg : hostProfileImg // ignore: cast_nullable_to_non_nullable
as String?,hostRatingScore: freezed == hostRatingScore ? _self.hostRatingScore : hostRatingScore // ignore: cast_nullable_to_non_nullable
as double?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MatchListPageDto {

 List<MatchListItemDto> get content; int? get totalElements; int? get totalPages; int? get size; int? get number;
/// Create a copy of MatchListPageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchListPageDtoCopyWith<MatchListPageDto> get copyWith => _$MatchListPageDtoCopyWithImpl<MatchListPageDto>(this as MatchListPageDto, _$identity);

  /// Serializes this MatchListPageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchListPageDto&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.size, size) || other.size == size)&&(identical(other.number, number) || other.number == number));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(content),totalElements,totalPages,size,number);

@override
String toString() {
  return 'MatchListPageDto(content: $content, totalElements: $totalElements, totalPages: $totalPages, size: $size, number: $number)';
}


}

/// @nodoc
abstract mixin class $MatchListPageDtoCopyWith<$Res>  {
  factory $MatchListPageDtoCopyWith(MatchListPageDto value, $Res Function(MatchListPageDto) _then) = _$MatchListPageDtoCopyWithImpl;
@useResult
$Res call({
 List<MatchListItemDto> content, int? totalElements, int? totalPages, int? size, int? number
});




}
/// @nodoc
class _$MatchListPageDtoCopyWithImpl<$Res>
    implements $MatchListPageDtoCopyWith<$Res> {
  _$MatchListPageDtoCopyWithImpl(this._self, this._then);

  final MatchListPageDto _self;
  final $Res Function(MatchListPageDto) _then;

/// Create a copy of MatchListPageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? totalElements = freezed,Object? totalPages = freezed,Object? size = freezed,Object? number = freezed,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as List<MatchListItemDto>,totalElements: freezed == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchListPageDto].
extension MatchListPageDtoPatterns on MatchListPageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchListPageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchListPageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchListPageDto value)  $default,){
final _that = this;
switch (_that) {
case _MatchListPageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchListPageDto value)?  $default,){
final _that = this;
switch (_that) {
case _MatchListPageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MatchListItemDto> content,  int? totalElements,  int? totalPages,  int? size,  int? number)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchListPageDto() when $default != null:
return $default(_that.content,_that.totalElements,_that.totalPages,_that.size,_that.number);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MatchListItemDto> content,  int? totalElements,  int? totalPages,  int? size,  int? number)  $default,) {final _that = this;
switch (_that) {
case _MatchListPageDto():
return $default(_that.content,_that.totalElements,_that.totalPages,_that.size,_that.number);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MatchListItemDto> content,  int? totalElements,  int? totalPages,  int? size,  int? number)?  $default,) {final _that = this;
switch (_that) {
case _MatchListPageDto() when $default != null:
return $default(_that.content,_that.totalElements,_that.totalPages,_that.size,_that.number);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchListPageDto implements MatchListPageDto {
  const _MatchListPageDto({final  List<MatchListItemDto> content = const <MatchListItemDto>[], this.totalElements, this.totalPages, this.size, this.number}): _content = content;
  factory _MatchListPageDto.fromJson(Map<String, dynamic> json) => _$MatchListPageDtoFromJson(json);

 final  List<MatchListItemDto> _content;
@override@JsonKey() List<MatchListItemDto> get content {
  if (_content is EqualUnmodifiableListView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_content);
}

@override final  int? totalElements;
@override final  int? totalPages;
@override final  int? size;
@override final  int? number;

/// Create a copy of MatchListPageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchListPageDtoCopyWith<_MatchListPageDto> get copyWith => __$MatchListPageDtoCopyWithImpl<_MatchListPageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchListPageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchListPageDto&&const DeepCollectionEquality().equals(other._content, _content)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.size, size) || other.size == size)&&(identical(other.number, number) || other.number == number));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_content),totalElements,totalPages,size,number);

@override
String toString() {
  return 'MatchListPageDto(content: $content, totalElements: $totalElements, totalPages: $totalPages, size: $size, number: $number)';
}


}

/// @nodoc
abstract mixin class _$MatchListPageDtoCopyWith<$Res> implements $MatchListPageDtoCopyWith<$Res> {
  factory _$MatchListPageDtoCopyWith(_MatchListPageDto value, $Res Function(_MatchListPageDto) _then) = __$MatchListPageDtoCopyWithImpl;
@override @useResult
$Res call({
 List<MatchListItemDto> content, int? totalElements, int? totalPages, int? size, int? number
});




}
/// @nodoc
class __$MatchListPageDtoCopyWithImpl<$Res>
    implements _$MatchListPageDtoCopyWith<$Res> {
  __$MatchListPageDtoCopyWithImpl(this._self, this._then);

  final _MatchListPageDto _self;
  final $Res Function(_MatchListPageDto) _then;

/// Create a copy of MatchListPageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? totalElements = freezed,Object? totalPages = freezed,Object? size = freezed,Object? number = freezed,}) {
  return _then(_MatchListPageDto(
content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<MatchListItemDto>,totalElements: freezed == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$MatchListEnvelope {

 bool get success; MatchListPageDto? get data; String? get message; String? get code;
/// Create a copy of MatchListEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchListEnvelopeCopyWith<MatchListEnvelope> get copyWith => _$MatchListEnvelopeCopyWithImpl<MatchListEnvelope>(this as MatchListEnvelope, _$identity);

  /// Serializes this MatchListEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchListEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'MatchListEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $MatchListEnvelopeCopyWith<$Res>  {
  factory $MatchListEnvelopeCopyWith(MatchListEnvelope value, $Res Function(MatchListEnvelope) _then) = _$MatchListEnvelopeCopyWithImpl;
@useResult
$Res call({
 bool success, MatchListPageDto? data, String? message, String? code
});


$MatchListPageDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$MatchListEnvelopeCopyWithImpl<$Res>
    implements $MatchListEnvelopeCopyWith<$Res> {
  _$MatchListEnvelopeCopyWithImpl(this._self, this._then);

  final MatchListEnvelope _self;
  final $Res Function(MatchListEnvelope) _then;

/// Create a copy of MatchListEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MatchListPageDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of MatchListEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchListPageDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $MatchListPageDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [MatchListEnvelope].
extension MatchListEnvelopePatterns on MatchListEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchListEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchListEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchListEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _MatchListEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchListEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _MatchListEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  MatchListPageDto? data,  String? message,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchListEnvelope() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  MatchListPageDto? data,  String? message,  String? code)  $default,) {final _that = this;
switch (_that) {
case _MatchListEnvelope():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  MatchListPageDto? data,  String? message,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _MatchListEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchListEnvelope implements MatchListEnvelope {
  const _MatchListEnvelope({required this.success, this.data, this.message, this.code});
  factory _MatchListEnvelope.fromJson(Map<String, dynamic> json) => _$MatchListEnvelopeFromJson(json);

@override final  bool success;
@override final  MatchListPageDto? data;
@override final  String? message;
@override final  String? code;

/// Create a copy of MatchListEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchListEnvelopeCopyWith<_MatchListEnvelope> get copyWith => __$MatchListEnvelopeCopyWithImpl<_MatchListEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchListEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchListEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'MatchListEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$MatchListEnvelopeCopyWith<$Res> implements $MatchListEnvelopeCopyWith<$Res> {
  factory _$MatchListEnvelopeCopyWith(_MatchListEnvelope value, $Res Function(_MatchListEnvelope) _then) = __$MatchListEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 bool success, MatchListPageDto? data, String? message, String? code
});


@override $MatchListPageDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$MatchListEnvelopeCopyWithImpl<$Res>
    implements _$MatchListEnvelopeCopyWith<$Res> {
  __$MatchListEnvelopeCopyWithImpl(this._self, this._then);

  final _MatchListEnvelope _self;
  final $Res Function(_MatchListEnvelope) _then;

/// Create a copy of MatchListEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_MatchListEnvelope(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MatchListPageDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of MatchListEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchListPageDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $MatchListPageDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$MatchHostDto {

 int get id; String get nickname; String? get profileImg; double? get ratingScore;
/// Create a copy of MatchHostDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchHostDtoCopyWith<MatchHostDto> get copyWith => _$MatchHostDtoCopyWithImpl<MatchHostDto>(this as MatchHostDto, _$identity);

  /// Serializes this MatchHostDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchHostDto&&(identical(other.id, id) || other.id == id)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImg, profileImg) || other.profileImg == profileImg)&&(identical(other.ratingScore, ratingScore) || other.ratingScore == ratingScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nickname,profileImg,ratingScore);

@override
String toString() {
  return 'MatchHostDto(id: $id, nickname: $nickname, profileImg: $profileImg, ratingScore: $ratingScore)';
}


}

/// @nodoc
abstract mixin class $MatchHostDtoCopyWith<$Res>  {
  factory $MatchHostDtoCopyWith(MatchHostDto value, $Res Function(MatchHostDto) _then) = _$MatchHostDtoCopyWithImpl;
@useResult
$Res call({
 int id, String nickname, String? profileImg, double? ratingScore
});




}
/// @nodoc
class _$MatchHostDtoCopyWithImpl<$Res>
    implements $MatchHostDtoCopyWith<$Res> {
  _$MatchHostDtoCopyWithImpl(this._self, this._then);

  final MatchHostDto _self;
  final $Res Function(MatchHostDto) _then;

/// Create a copy of MatchHostDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nickname = null,Object? profileImg = freezed,Object? ratingScore = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImg: freezed == profileImg ? _self.profileImg : profileImg // ignore: cast_nullable_to_non_nullable
as String?,ratingScore: freezed == ratingScore ? _self.ratingScore : ratingScore // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchHostDto].
extension MatchHostDtoPatterns on MatchHostDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchHostDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchHostDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchHostDto value)  $default,){
final _that = this;
switch (_that) {
case _MatchHostDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchHostDto value)?  $default,){
final _that = this;
switch (_that) {
case _MatchHostDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String nickname,  String? profileImg,  double? ratingScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchHostDto() when $default != null:
return $default(_that.id,_that.nickname,_that.profileImg,_that.ratingScore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String nickname,  String? profileImg,  double? ratingScore)  $default,) {final _that = this;
switch (_that) {
case _MatchHostDto():
return $default(_that.id,_that.nickname,_that.profileImg,_that.ratingScore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String nickname,  String? profileImg,  double? ratingScore)?  $default,) {final _that = this;
switch (_that) {
case _MatchHostDto() when $default != null:
return $default(_that.id,_that.nickname,_that.profileImg,_that.ratingScore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchHostDto implements MatchHostDto {
  const _MatchHostDto({required this.id, required this.nickname, this.profileImg, this.ratingScore});
  factory _MatchHostDto.fromJson(Map<String, dynamic> json) => _$MatchHostDtoFromJson(json);

@override final  int id;
@override final  String nickname;
@override final  String? profileImg;
@override final  double? ratingScore;

/// Create a copy of MatchHostDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchHostDtoCopyWith<_MatchHostDto> get copyWith => __$MatchHostDtoCopyWithImpl<_MatchHostDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchHostDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchHostDto&&(identical(other.id, id) || other.id == id)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImg, profileImg) || other.profileImg == profileImg)&&(identical(other.ratingScore, ratingScore) || other.ratingScore == ratingScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nickname,profileImg,ratingScore);

@override
String toString() {
  return 'MatchHostDto(id: $id, nickname: $nickname, profileImg: $profileImg, ratingScore: $ratingScore)';
}


}

/// @nodoc
abstract mixin class _$MatchHostDtoCopyWith<$Res> implements $MatchHostDtoCopyWith<$Res> {
  factory _$MatchHostDtoCopyWith(_MatchHostDto value, $Res Function(_MatchHostDto) _then) = __$MatchHostDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String nickname, String? profileImg, double? ratingScore
});




}
/// @nodoc
class __$MatchHostDtoCopyWithImpl<$Res>
    implements _$MatchHostDtoCopyWith<$Res> {
  __$MatchHostDtoCopyWithImpl(this._self, this._then);

  final _MatchHostDto _self;
  final $Res Function(_MatchHostDto) _then;

/// Create a copy of MatchHostDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nickname = null,Object? profileImg = freezed,Object? ratingScore = freezed,}) {
  return _then(_MatchHostDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImg: freezed == profileImg ? _self.profileImg : profileImg // ignore: cast_nullable_to_non_nullable
as String?,ratingScore: freezed == ratingScore ? _self.ratingScore : ratingScore // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$MatchParticipantDto {

 int? get participationId; int? get userId; String? get nickname; String? get profileImg; double? get ratingScore; String? get status; int? get queueOrder; String? get applyMessage; String? get offerExpiresAt;
/// Create a copy of MatchParticipantDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchParticipantDtoCopyWith<MatchParticipantDto> get copyWith => _$MatchParticipantDtoCopyWithImpl<MatchParticipantDto>(this as MatchParticipantDto, _$identity);

  /// Serializes this MatchParticipantDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchParticipantDto&&(identical(other.participationId, participationId) || other.participationId == participationId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImg, profileImg) || other.profileImg == profileImg)&&(identical(other.ratingScore, ratingScore) || other.ratingScore == ratingScore)&&(identical(other.status, status) || other.status == status)&&(identical(other.queueOrder, queueOrder) || other.queueOrder == queueOrder)&&(identical(other.applyMessage, applyMessage) || other.applyMessage == applyMessage)&&(identical(other.offerExpiresAt, offerExpiresAt) || other.offerExpiresAt == offerExpiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,participationId,userId,nickname,profileImg,ratingScore,status,queueOrder,applyMessage,offerExpiresAt);

@override
String toString() {
  return 'MatchParticipantDto(participationId: $participationId, userId: $userId, nickname: $nickname, profileImg: $profileImg, ratingScore: $ratingScore, status: $status, queueOrder: $queueOrder, applyMessage: $applyMessage, offerExpiresAt: $offerExpiresAt)';
}


}

/// @nodoc
abstract mixin class $MatchParticipantDtoCopyWith<$Res>  {
  factory $MatchParticipantDtoCopyWith(MatchParticipantDto value, $Res Function(MatchParticipantDto) _then) = _$MatchParticipantDtoCopyWithImpl;
@useResult
$Res call({
 int? participationId, int? userId, String? nickname, String? profileImg, double? ratingScore, String? status, int? queueOrder, String? applyMessage, String? offerExpiresAt
});




}
/// @nodoc
class _$MatchParticipantDtoCopyWithImpl<$Res>
    implements $MatchParticipantDtoCopyWith<$Res> {
  _$MatchParticipantDtoCopyWithImpl(this._self, this._then);

  final MatchParticipantDto _self;
  final $Res Function(MatchParticipantDto) _then;

/// Create a copy of MatchParticipantDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? participationId = freezed,Object? userId = freezed,Object? nickname = freezed,Object? profileImg = freezed,Object? ratingScore = freezed,Object? status = freezed,Object? queueOrder = freezed,Object? applyMessage = freezed,Object? offerExpiresAt = freezed,}) {
  return _then(_self.copyWith(
participationId: freezed == participationId ? _self.participationId : participationId // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,profileImg: freezed == profileImg ? _self.profileImg : profileImg // ignore: cast_nullable_to_non_nullable
as String?,ratingScore: freezed == ratingScore ? _self.ratingScore : ratingScore // ignore: cast_nullable_to_non_nullable
as double?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,queueOrder: freezed == queueOrder ? _self.queueOrder : queueOrder // ignore: cast_nullable_to_non_nullable
as int?,applyMessage: freezed == applyMessage ? _self.applyMessage : applyMessage // ignore: cast_nullable_to_non_nullable
as String?,offerExpiresAt: freezed == offerExpiresAt ? _self.offerExpiresAt : offerExpiresAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchParticipantDto].
extension MatchParticipantDtoPatterns on MatchParticipantDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchParticipantDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchParticipantDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchParticipantDto value)  $default,){
final _that = this;
switch (_that) {
case _MatchParticipantDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchParticipantDto value)?  $default,){
final _that = this;
switch (_that) {
case _MatchParticipantDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? participationId,  int? userId,  String? nickname,  String? profileImg,  double? ratingScore,  String? status,  int? queueOrder,  String? applyMessage,  String? offerExpiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchParticipantDto() when $default != null:
return $default(_that.participationId,_that.userId,_that.nickname,_that.profileImg,_that.ratingScore,_that.status,_that.queueOrder,_that.applyMessage,_that.offerExpiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? participationId,  int? userId,  String? nickname,  String? profileImg,  double? ratingScore,  String? status,  int? queueOrder,  String? applyMessage,  String? offerExpiresAt)  $default,) {final _that = this;
switch (_that) {
case _MatchParticipantDto():
return $default(_that.participationId,_that.userId,_that.nickname,_that.profileImg,_that.ratingScore,_that.status,_that.queueOrder,_that.applyMessage,_that.offerExpiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? participationId,  int? userId,  String? nickname,  String? profileImg,  double? ratingScore,  String? status,  int? queueOrder,  String? applyMessage,  String? offerExpiresAt)?  $default,) {final _that = this;
switch (_that) {
case _MatchParticipantDto() when $default != null:
return $default(_that.participationId,_that.userId,_that.nickname,_that.profileImg,_that.ratingScore,_that.status,_that.queueOrder,_that.applyMessage,_that.offerExpiresAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchParticipantDto implements MatchParticipantDto {
  const _MatchParticipantDto({this.participationId, this.userId, this.nickname, this.profileImg, this.ratingScore, this.status, this.queueOrder, this.applyMessage, this.offerExpiresAt});
  factory _MatchParticipantDto.fromJson(Map<String, dynamic> json) => _$MatchParticipantDtoFromJson(json);

@override final  int? participationId;
@override final  int? userId;
@override final  String? nickname;
@override final  String? profileImg;
@override final  double? ratingScore;
@override final  String? status;
@override final  int? queueOrder;
@override final  String? applyMessage;
@override final  String? offerExpiresAt;

/// Create a copy of MatchParticipantDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchParticipantDtoCopyWith<_MatchParticipantDto> get copyWith => __$MatchParticipantDtoCopyWithImpl<_MatchParticipantDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchParticipantDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchParticipantDto&&(identical(other.participationId, participationId) || other.participationId == participationId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImg, profileImg) || other.profileImg == profileImg)&&(identical(other.ratingScore, ratingScore) || other.ratingScore == ratingScore)&&(identical(other.status, status) || other.status == status)&&(identical(other.queueOrder, queueOrder) || other.queueOrder == queueOrder)&&(identical(other.applyMessage, applyMessage) || other.applyMessage == applyMessage)&&(identical(other.offerExpiresAt, offerExpiresAt) || other.offerExpiresAt == offerExpiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,participationId,userId,nickname,profileImg,ratingScore,status,queueOrder,applyMessage,offerExpiresAt);

@override
String toString() {
  return 'MatchParticipantDto(participationId: $participationId, userId: $userId, nickname: $nickname, profileImg: $profileImg, ratingScore: $ratingScore, status: $status, queueOrder: $queueOrder, applyMessage: $applyMessage, offerExpiresAt: $offerExpiresAt)';
}


}

/// @nodoc
abstract mixin class _$MatchParticipantDtoCopyWith<$Res> implements $MatchParticipantDtoCopyWith<$Res> {
  factory _$MatchParticipantDtoCopyWith(_MatchParticipantDto value, $Res Function(_MatchParticipantDto) _then) = __$MatchParticipantDtoCopyWithImpl;
@override @useResult
$Res call({
 int? participationId, int? userId, String? nickname, String? profileImg, double? ratingScore, String? status, int? queueOrder, String? applyMessage, String? offerExpiresAt
});




}
/// @nodoc
class __$MatchParticipantDtoCopyWithImpl<$Res>
    implements _$MatchParticipantDtoCopyWith<$Res> {
  __$MatchParticipantDtoCopyWithImpl(this._self, this._then);

  final _MatchParticipantDto _self;
  final $Res Function(_MatchParticipantDto) _then;

/// Create a copy of MatchParticipantDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? participationId = freezed,Object? userId = freezed,Object? nickname = freezed,Object? profileImg = freezed,Object? ratingScore = freezed,Object? status = freezed,Object? queueOrder = freezed,Object? applyMessage = freezed,Object? offerExpiresAt = freezed,}) {
  return _then(_MatchParticipantDto(
participationId: freezed == participationId ? _self.participationId : participationId // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,profileImg: freezed == profileImg ? _self.profileImg : profileImg // ignore: cast_nullable_to_non_nullable
as String?,ratingScore: freezed == ratingScore ? _self.ratingScore : ratingScore // ignore: cast_nullable_to_non_nullable
as double?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,queueOrder: freezed == queueOrder ? _self.queueOrder : queueOrder // ignore: cast_nullable_to_non_nullable
as int?,applyMessage: freezed == applyMessage ? _self.applyMessage : applyMessage // ignore: cast_nullable_to_non_nullable
as String?,offerExpiresAt: freezed == offerExpiresAt ? _self.offerExpiresAt : offerExpiresAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MatchDetailDto {

 int get matchId; int get hostId; String get title; String get description; String get matchDate; String get startTime; int get durationMin; String? get locationName; String get regionCode; int get maxPeople; int get currentPeople; String? get targetLevels; CostPolicy get costPolicy; String get status; String? get imageUrl; double? get latitude; double? get longitude; MatchHostDto? get host; List<MatchParticipantDto> get confirmedParticipants; List<MatchParticipantDto> get waitingList; int get waitingCount; String? get serverTime; bool? get isEmergencyMode; MyParticipationSummaryDto? get myParticipation; bool? get canApply; bool? get canCancel; bool? get hasWaitingOffer; bool get canFinishMatch; List<int> get reviewPendingUserIds;
/// Create a copy of MatchDetailDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchDetailDtoCopyWith<MatchDetailDto> get copyWith => _$MatchDetailDtoCopyWithImpl<MatchDetailDto>(this as MatchDetailDto, _$identity);

  /// Serializes this MatchDetailDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchDetailDto&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.hostId, hostId) || other.hostId == hostId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.matchDate, matchDate) || other.matchDate == matchDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.durationMin, durationMin) || other.durationMin == durationMin)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.regionCode, regionCode) || other.regionCode == regionCode)&&(identical(other.maxPeople, maxPeople) || other.maxPeople == maxPeople)&&(identical(other.currentPeople, currentPeople) || other.currentPeople == currentPeople)&&(identical(other.targetLevels, targetLevels) || other.targetLevels == targetLevels)&&(identical(other.costPolicy, costPolicy) || other.costPolicy == costPolicy)&&(identical(other.status, status) || other.status == status)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.host, host) || other.host == host)&&const DeepCollectionEquality().equals(other.confirmedParticipants, confirmedParticipants)&&const DeepCollectionEquality().equals(other.waitingList, waitingList)&&(identical(other.waitingCount, waitingCount) || other.waitingCount == waitingCount)&&(identical(other.serverTime, serverTime) || other.serverTime == serverTime)&&(identical(other.isEmergencyMode, isEmergencyMode) || other.isEmergencyMode == isEmergencyMode)&&(identical(other.myParticipation, myParticipation) || other.myParticipation == myParticipation)&&(identical(other.canApply, canApply) || other.canApply == canApply)&&(identical(other.canCancel, canCancel) || other.canCancel == canCancel)&&(identical(other.hasWaitingOffer, hasWaitingOffer) || other.hasWaitingOffer == hasWaitingOffer)&&(identical(other.canFinishMatch, canFinishMatch) || other.canFinishMatch == canFinishMatch)&&const DeepCollectionEquality().equals(other.reviewPendingUserIds, reviewPendingUserIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,matchId,hostId,title,description,matchDate,startTime,durationMin,locationName,regionCode,maxPeople,currentPeople,targetLevels,costPolicy,status,imageUrl,latitude,longitude,host,const DeepCollectionEquality().hash(confirmedParticipants),const DeepCollectionEquality().hash(waitingList),waitingCount,serverTime,isEmergencyMode,myParticipation,canApply,canCancel,hasWaitingOffer,canFinishMatch,const DeepCollectionEquality().hash(reviewPendingUserIds)]);

@override
String toString() {
  return 'MatchDetailDto(matchId: $matchId, hostId: $hostId, title: $title, description: $description, matchDate: $matchDate, startTime: $startTime, durationMin: $durationMin, locationName: $locationName, regionCode: $regionCode, maxPeople: $maxPeople, currentPeople: $currentPeople, targetLevels: $targetLevels, costPolicy: $costPolicy, status: $status, imageUrl: $imageUrl, latitude: $latitude, longitude: $longitude, host: $host, confirmedParticipants: $confirmedParticipants, waitingList: $waitingList, waitingCount: $waitingCount, serverTime: $serverTime, isEmergencyMode: $isEmergencyMode, myParticipation: $myParticipation, canApply: $canApply, canCancel: $canCancel, hasWaitingOffer: $hasWaitingOffer, canFinishMatch: $canFinishMatch, reviewPendingUserIds: $reviewPendingUserIds)';
}


}

/// @nodoc
abstract mixin class $MatchDetailDtoCopyWith<$Res>  {
  factory $MatchDetailDtoCopyWith(MatchDetailDto value, $Res Function(MatchDetailDto) _then) = _$MatchDetailDtoCopyWithImpl;
@useResult
$Res call({
 int matchId, int hostId, String title, String description, String matchDate, String startTime, int durationMin, String? locationName, String regionCode, int maxPeople, int currentPeople, String? targetLevels, CostPolicy costPolicy, String status, String? imageUrl, double? latitude, double? longitude, MatchHostDto? host, List<MatchParticipantDto> confirmedParticipants, List<MatchParticipantDto> waitingList, int waitingCount, String? serverTime, bool? isEmergencyMode, MyParticipationSummaryDto? myParticipation, bool? canApply, bool? canCancel, bool? hasWaitingOffer, bool canFinishMatch, List<int> reviewPendingUserIds
});


$MatchHostDtoCopyWith<$Res>? get host;$MyParticipationSummaryDtoCopyWith<$Res>? get myParticipation;

}
/// @nodoc
class _$MatchDetailDtoCopyWithImpl<$Res>
    implements $MatchDetailDtoCopyWith<$Res> {
  _$MatchDetailDtoCopyWithImpl(this._self, this._then);

  final MatchDetailDto _self;
  final $Res Function(MatchDetailDto) _then;

/// Create a copy of MatchDetailDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? matchId = null,Object? hostId = null,Object? title = null,Object? description = null,Object? matchDate = null,Object? startTime = null,Object? durationMin = null,Object? locationName = freezed,Object? regionCode = null,Object? maxPeople = null,Object? currentPeople = null,Object? targetLevels = freezed,Object? costPolicy = null,Object? status = null,Object? imageUrl = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? host = freezed,Object? confirmedParticipants = null,Object? waitingList = null,Object? waitingCount = null,Object? serverTime = freezed,Object? isEmergencyMode = freezed,Object? myParticipation = freezed,Object? canApply = freezed,Object? canCancel = freezed,Object? hasWaitingOffer = freezed,Object? canFinishMatch = null,Object? reviewPendingUserIds = null,}) {
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
as int,currentPeople: null == currentPeople ? _self.currentPeople : currentPeople // ignore: cast_nullable_to_non_nullable
as int,targetLevels: freezed == targetLevels ? _self.targetLevels : targetLevels // ignore: cast_nullable_to_non_nullable
as String?,costPolicy: null == costPolicy ? _self.costPolicy : costPolicy // ignore: cast_nullable_to_non_nullable
as CostPolicy,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,host: freezed == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as MatchHostDto?,confirmedParticipants: null == confirmedParticipants ? _self.confirmedParticipants : confirmedParticipants // ignore: cast_nullable_to_non_nullable
as List<MatchParticipantDto>,waitingList: null == waitingList ? _self.waitingList : waitingList // ignore: cast_nullable_to_non_nullable
as List<MatchParticipantDto>,waitingCount: null == waitingCount ? _self.waitingCount : waitingCount // ignore: cast_nullable_to_non_nullable
as int,serverTime: freezed == serverTime ? _self.serverTime : serverTime // ignore: cast_nullable_to_non_nullable
as String?,isEmergencyMode: freezed == isEmergencyMode ? _self.isEmergencyMode : isEmergencyMode // ignore: cast_nullable_to_non_nullable
as bool?,myParticipation: freezed == myParticipation ? _self.myParticipation : myParticipation // ignore: cast_nullable_to_non_nullable
as MyParticipationSummaryDto?,canApply: freezed == canApply ? _self.canApply : canApply // ignore: cast_nullable_to_non_nullable
as bool?,canCancel: freezed == canCancel ? _self.canCancel : canCancel // ignore: cast_nullable_to_non_nullable
as bool?,hasWaitingOffer: freezed == hasWaitingOffer ? _self.hasWaitingOffer : hasWaitingOffer // ignore: cast_nullable_to_non_nullable
as bool?,canFinishMatch: null == canFinishMatch ? _self.canFinishMatch : canFinishMatch // ignore: cast_nullable_to_non_nullable
as bool,reviewPendingUserIds: null == reviewPendingUserIds ? _self.reviewPendingUserIds : reviewPendingUserIds // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}
/// Create a copy of MatchDetailDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchHostDtoCopyWith<$Res>? get host {
    if (_self.host == null) {
    return null;
  }

  return $MatchHostDtoCopyWith<$Res>(_self.host!, (value) {
    return _then(_self.copyWith(host: value));
  });
}/// Create a copy of MatchDetailDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyParticipationSummaryDtoCopyWith<$Res>? get myParticipation {
    if (_self.myParticipation == null) {
    return null;
  }

  return $MyParticipationSummaryDtoCopyWith<$Res>(_self.myParticipation!, (value) {
    return _then(_self.copyWith(myParticipation: value));
  });
}
}


/// Adds pattern-matching-related methods to [MatchDetailDto].
extension MatchDetailDtoPatterns on MatchDetailDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchDetailDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchDetailDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchDetailDto value)  $default,){
final _that = this;
switch (_that) {
case _MatchDetailDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchDetailDto value)?  $default,){
final _that = this;
switch (_that) {
case _MatchDetailDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int matchId,  int hostId,  String title,  String description,  String matchDate,  String startTime,  int durationMin,  String? locationName,  String regionCode,  int maxPeople,  int currentPeople,  String? targetLevels,  CostPolicy costPolicy,  String status,  String? imageUrl,  double? latitude,  double? longitude,  MatchHostDto? host,  List<MatchParticipantDto> confirmedParticipants,  List<MatchParticipantDto> waitingList,  int waitingCount,  String? serverTime,  bool? isEmergencyMode,  MyParticipationSummaryDto? myParticipation,  bool? canApply,  bool? canCancel,  bool? hasWaitingOffer,  bool canFinishMatch,  List<int> reviewPendingUserIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchDetailDto() when $default != null:
return $default(_that.matchId,_that.hostId,_that.title,_that.description,_that.matchDate,_that.startTime,_that.durationMin,_that.locationName,_that.regionCode,_that.maxPeople,_that.currentPeople,_that.targetLevels,_that.costPolicy,_that.status,_that.imageUrl,_that.latitude,_that.longitude,_that.host,_that.confirmedParticipants,_that.waitingList,_that.waitingCount,_that.serverTime,_that.isEmergencyMode,_that.myParticipation,_that.canApply,_that.canCancel,_that.hasWaitingOffer,_that.canFinishMatch,_that.reviewPendingUserIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int matchId,  int hostId,  String title,  String description,  String matchDate,  String startTime,  int durationMin,  String? locationName,  String regionCode,  int maxPeople,  int currentPeople,  String? targetLevels,  CostPolicy costPolicy,  String status,  String? imageUrl,  double? latitude,  double? longitude,  MatchHostDto? host,  List<MatchParticipantDto> confirmedParticipants,  List<MatchParticipantDto> waitingList,  int waitingCount,  String? serverTime,  bool? isEmergencyMode,  MyParticipationSummaryDto? myParticipation,  bool? canApply,  bool? canCancel,  bool? hasWaitingOffer,  bool canFinishMatch,  List<int> reviewPendingUserIds)  $default,) {final _that = this;
switch (_that) {
case _MatchDetailDto():
return $default(_that.matchId,_that.hostId,_that.title,_that.description,_that.matchDate,_that.startTime,_that.durationMin,_that.locationName,_that.regionCode,_that.maxPeople,_that.currentPeople,_that.targetLevels,_that.costPolicy,_that.status,_that.imageUrl,_that.latitude,_that.longitude,_that.host,_that.confirmedParticipants,_that.waitingList,_that.waitingCount,_that.serverTime,_that.isEmergencyMode,_that.myParticipation,_that.canApply,_that.canCancel,_that.hasWaitingOffer,_that.canFinishMatch,_that.reviewPendingUserIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int matchId,  int hostId,  String title,  String description,  String matchDate,  String startTime,  int durationMin,  String? locationName,  String regionCode,  int maxPeople,  int currentPeople,  String? targetLevels,  CostPolicy costPolicy,  String status,  String? imageUrl,  double? latitude,  double? longitude,  MatchHostDto? host,  List<MatchParticipantDto> confirmedParticipants,  List<MatchParticipantDto> waitingList,  int waitingCount,  String? serverTime,  bool? isEmergencyMode,  MyParticipationSummaryDto? myParticipation,  bool? canApply,  bool? canCancel,  bool? hasWaitingOffer,  bool canFinishMatch,  List<int> reviewPendingUserIds)?  $default,) {final _that = this;
switch (_that) {
case _MatchDetailDto() when $default != null:
return $default(_that.matchId,_that.hostId,_that.title,_that.description,_that.matchDate,_that.startTime,_that.durationMin,_that.locationName,_that.regionCode,_that.maxPeople,_that.currentPeople,_that.targetLevels,_that.costPolicy,_that.status,_that.imageUrl,_that.latitude,_that.longitude,_that.host,_that.confirmedParticipants,_that.waitingList,_that.waitingCount,_that.serverTime,_that.isEmergencyMode,_that.myParticipation,_that.canApply,_that.canCancel,_that.hasWaitingOffer,_that.canFinishMatch,_that.reviewPendingUserIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchDetailDto implements MatchDetailDto {
  const _MatchDetailDto({required this.matchId, required this.hostId, required this.title, required this.description, required this.matchDate, required this.startTime, required this.durationMin, this.locationName, required this.regionCode, required this.maxPeople, required this.currentPeople, this.targetLevels, required this.costPolicy, required this.status, this.imageUrl, this.latitude, this.longitude, this.host, final  List<MatchParticipantDto> confirmedParticipants = const <MatchParticipantDto>[], final  List<MatchParticipantDto> waitingList = const <MatchParticipantDto>[], this.waitingCount = 0, this.serverTime, this.isEmergencyMode, this.myParticipation, this.canApply, this.canCancel, this.hasWaitingOffer, this.canFinishMatch = false, final  List<int> reviewPendingUserIds = const <int>[]}): _confirmedParticipants = confirmedParticipants,_waitingList = waitingList,_reviewPendingUserIds = reviewPendingUserIds;
  factory _MatchDetailDto.fromJson(Map<String, dynamic> json) => _$MatchDetailDtoFromJson(json);

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
@override final  int currentPeople;
@override final  String? targetLevels;
@override final  CostPolicy costPolicy;
@override final  String status;
@override final  String? imageUrl;
@override final  double? latitude;
@override final  double? longitude;
@override final  MatchHostDto? host;
 final  List<MatchParticipantDto> _confirmedParticipants;
@override@JsonKey() List<MatchParticipantDto> get confirmedParticipants {
  if (_confirmedParticipants is EqualUnmodifiableListView) return _confirmedParticipants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_confirmedParticipants);
}

 final  List<MatchParticipantDto> _waitingList;
@override@JsonKey() List<MatchParticipantDto> get waitingList {
  if (_waitingList is EqualUnmodifiableListView) return _waitingList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_waitingList);
}

@override@JsonKey() final  int waitingCount;
@override final  String? serverTime;
@override final  bool? isEmergencyMode;
@override final  MyParticipationSummaryDto? myParticipation;
@override final  bool? canApply;
@override final  bool? canCancel;
@override final  bool? hasWaitingOffer;
@override@JsonKey() final  bool canFinishMatch;
 final  List<int> _reviewPendingUserIds;
@override@JsonKey() List<int> get reviewPendingUserIds {
  if (_reviewPendingUserIds is EqualUnmodifiableListView) return _reviewPendingUserIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviewPendingUserIds);
}


/// Create a copy of MatchDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchDetailDtoCopyWith<_MatchDetailDto> get copyWith => __$MatchDetailDtoCopyWithImpl<_MatchDetailDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchDetailDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchDetailDto&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.hostId, hostId) || other.hostId == hostId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.matchDate, matchDate) || other.matchDate == matchDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.durationMin, durationMin) || other.durationMin == durationMin)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.regionCode, regionCode) || other.regionCode == regionCode)&&(identical(other.maxPeople, maxPeople) || other.maxPeople == maxPeople)&&(identical(other.currentPeople, currentPeople) || other.currentPeople == currentPeople)&&(identical(other.targetLevels, targetLevels) || other.targetLevels == targetLevels)&&(identical(other.costPolicy, costPolicy) || other.costPolicy == costPolicy)&&(identical(other.status, status) || other.status == status)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.host, host) || other.host == host)&&const DeepCollectionEquality().equals(other._confirmedParticipants, _confirmedParticipants)&&const DeepCollectionEquality().equals(other._waitingList, _waitingList)&&(identical(other.waitingCount, waitingCount) || other.waitingCount == waitingCount)&&(identical(other.serverTime, serverTime) || other.serverTime == serverTime)&&(identical(other.isEmergencyMode, isEmergencyMode) || other.isEmergencyMode == isEmergencyMode)&&(identical(other.myParticipation, myParticipation) || other.myParticipation == myParticipation)&&(identical(other.canApply, canApply) || other.canApply == canApply)&&(identical(other.canCancel, canCancel) || other.canCancel == canCancel)&&(identical(other.hasWaitingOffer, hasWaitingOffer) || other.hasWaitingOffer == hasWaitingOffer)&&(identical(other.canFinishMatch, canFinishMatch) || other.canFinishMatch == canFinishMatch)&&const DeepCollectionEquality().equals(other._reviewPendingUserIds, _reviewPendingUserIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,matchId,hostId,title,description,matchDate,startTime,durationMin,locationName,regionCode,maxPeople,currentPeople,targetLevels,costPolicy,status,imageUrl,latitude,longitude,host,const DeepCollectionEquality().hash(_confirmedParticipants),const DeepCollectionEquality().hash(_waitingList),waitingCount,serverTime,isEmergencyMode,myParticipation,canApply,canCancel,hasWaitingOffer,canFinishMatch,const DeepCollectionEquality().hash(_reviewPendingUserIds)]);

@override
String toString() {
  return 'MatchDetailDto(matchId: $matchId, hostId: $hostId, title: $title, description: $description, matchDate: $matchDate, startTime: $startTime, durationMin: $durationMin, locationName: $locationName, regionCode: $regionCode, maxPeople: $maxPeople, currentPeople: $currentPeople, targetLevels: $targetLevels, costPolicy: $costPolicy, status: $status, imageUrl: $imageUrl, latitude: $latitude, longitude: $longitude, host: $host, confirmedParticipants: $confirmedParticipants, waitingList: $waitingList, waitingCount: $waitingCount, serverTime: $serverTime, isEmergencyMode: $isEmergencyMode, myParticipation: $myParticipation, canApply: $canApply, canCancel: $canCancel, hasWaitingOffer: $hasWaitingOffer, canFinishMatch: $canFinishMatch, reviewPendingUserIds: $reviewPendingUserIds)';
}


}

/// @nodoc
abstract mixin class _$MatchDetailDtoCopyWith<$Res> implements $MatchDetailDtoCopyWith<$Res> {
  factory _$MatchDetailDtoCopyWith(_MatchDetailDto value, $Res Function(_MatchDetailDto) _then) = __$MatchDetailDtoCopyWithImpl;
@override @useResult
$Res call({
 int matchId, int hostId, String title, String description, String matchDate, String startTime, int durationMin, String? locationName, String regionCode, int maxPeople, int currentPeople, String? targetLevels, CostPolicy costPolicy, String status, String? imageUrl, double? latitude, double? longitude, MatchHostDto? host, List<MatchParticipantDto> confirmedParticipants, List<MatchParticipantDto> waitingList, int waitingCount, String? serverTime, bool? isEmergencyMode, MyParticipationSummaryDto? myParticipation, bool? canApply, bool? canCancel, bool? hasWaitingOffer, bool canFinishMatch, List<int> reviewPendingUserIds
});


@override $MatchHostDtoCopyWith<$Res>? get host;@override $MyParticipationSummaryDtoCopyWith<$Res>? get myParticipation;

}
/// @nodoc
class __$MatchDetailDtoCopyWithImpl<$Res>
    implements _$MatchDetailDtoCopyWith<$Res> {
  __$MatchDetailDtoCopyWithImpl(this._self, this._then);

  final _MatchDetailDto _self;
  final $Res Function(_MatchDetailDto) _then;

/// Create a copy of MatchDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? matchId = null,Object? hostId = null,Object? title = null,Object? description = null,Object? matchDate = null,Object? startTime = null,Object? durationMin = null,Object? locationName = freezed,Object? regionCode = null,Object? maxPeople = null,Object? currentPeople = null,Object? targetLevels = freezed,Object? costPolicy = null,Object? status = null,Object? imageUrl = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? host = freezed,Object? confirmedParticipants = null,Object? waitingList = null,Object? waitingCount = null,Object? serverTime = freezed,Object? isEmergencyMode = freezed,Object? myParticipation = freezed,Object? canApply = freezed,Object? canCancel = freezed,Object? hasWaitingOffer = freezed,Object? canFinishMatch = null,Object? reviewPendingUserIds = null,}) {
  return _then(_MatchDetailDto(
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
as int,currentPeople: null == currentPeople ? _self.currentPeople : currentPeople // ignore: cast_nullable_to_non_nullable
as int,targetLevels: freezed == targetLevels ? _self.targetLevels : targetLevels // ignore: cast_nullable_to_non_nullable
as String?,costPolicy: null == costPolicy ? _self.costPolicy : costPolicy // ignore: cast_nullable_to_non_nullable
as CostPolicy,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,host: freezed == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as MatchHostDto?,confirmedParticipants: null == confirmedParticipants ? _self._confirmedParticipants : confirmedParticipants // ignore: cast_nullable_to_non_nullable
as List<MatchParticipantDto>,waitingList: null == waitingList ? _self._waitingList : waitingList // ignore: cast_nullable_to_non_nullable
as List<MatchParticipantDto>,waitingCount: null == waitingCount ? _self.waitingCount : waitingCount // ignore: cast_nullable_to_non_nullable
as int,serverTime: freezed == serverTime ? _self.serverTime : serverTime // ignore: cast_nullable_to_non_nullable
as String?,isEmergencyMode: freezed == isEmergencyMode ? _self.isEmergencyMode : isEmergencyMode // ignore: cast_nullable_to_non_nullable
as bool?,myParticipation: freezed == myParticipation ? _self.myParticipation : myParticipation // ignore: cast_nullable_to_non_nullable
as MyParticipationSummaryDto?,canApply: freezed == canApply ? _self.canApply : canApply // ignore: cast_nullable_to_non_nullable
as bool?,canCancel: freezed == canCancel ? _self.canCancel : canCancel // ignore: cast_nullable_to_non_nullable
as bool?,hasWaitingOffer: freezed == hasWaitingOffer ? _self.hasWaitingOffer : hasWaitingOffer // ignore: cast_nullable_to_non_nullable
as bool?,canFinishMatch: null == canFinishMatch ? _self.canFinishMatch : canFinishMatch // ignore: cast_nullable_to_non_nullable
as bool,reviewPendingUserIds: null == reviewPendingUserIds ? _self._reviewPendingUserIds : reviewPendingUserIds // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

/// Create a copy of MatchDetailDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchHostDtoCopyWith<$Res>? get host {
    if (_self.host == null) {
    return null;
  }

  return $MatchHostDtoCopyWith<$Res>(_self.host!, (value) {
    return _then(_self.copyWith(host: value));
  });
}/// Create a copy of MatchDetailDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyParticipationSummaryDtoCopyWith<$Res>? get myParticipation {
    if (_self.myParticipation == null) {
    return null;
  }

  return $MyParticipationSummaryDtoCopyWith<$Res>(_self.myParticipation!, (value) {
    return _then(_self.copyWith(myParticipation: value));
  });
}
}


/// @nodoc
mixin _$MyParticipationSummaryDto {

 int get participationId; String get status; int get queueOrder; String? get applyMessage; String? get offerExpiresAt;
/// Create a copy of MyParticipationSummaryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyParticipationSummaryDtoCopyWith<MyParticipationSummaryDto> get copyWith => _$MyParticipationSummaryDtoCopyWithImpl<MyParticipationSummaryDto>(this as MyParticipationSummaryDto, _$identity);

  /// Serializes this MyParticipationSummaryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyParticipationSummaryDto&&(identical(other.participationId, participationId) || other.participationId == participationId)&&(identical(other.status, status) || other.status == status)&&(identical(other.queueOrder, queueOrder) || other.queueOrder == queueOrder)&&(identical(other.applyMessage, applyMessage) || other.applyMessage == applyMessage)&&(identical(other.offerExpiresAt, offerExpiresAt) || other.offerExpiresAt == offerExpiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,participationId,status,queueOrder,applyMessage,offerExpiresAt);

@override
String toString() {
  return 'MyParticipationSummaryDto(participationId: $participationId, status: $status, queueOrder: $queueOrder, applyMessage: $applyMessage, offerExpiresAt: $offerExpiresAt)';
}


}

/// @nodoc
abstract mixin class $MyParticipationSummaryDtoCopyWith<$Res>  {
  factory $MyParticipationSummaryDtoCopyWith(MyParticipationSummaryDto value, $Res Function(MyParticipationSummaryDto) _then) = _$MyParticipationSummaryDtoCopyWithImpl;
@useResult
$Res call({
 int participationId, String status, int queueOrder, String? applyMessage, String? offerExpiresAt
});




}
/// @nodoc
class _$MyParticipationSummaryDtoCopyWithImpl<$Res>
    implements $MyParticipationSummaryDtoCopyWith<$Res> {
  _$MyParticipationSummaryDtoCopyWithImpl(this._self, this._then);

  final MyParticipationSummaryDto _self;
  final $Res Function(MyParticipationSummaryDto) _then;

/// Create a copy of MyParticipationSummaryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? participationId = null,Object? status = null,Object? queueOrder = null,Object? applyMessage = freezed,Object? offerExpiresAt = freezed,}) {
  return _then(_self.copyWith(
participationId: null == participationId ? _self.participationId : participationId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,queueOrder: null == queueOrder ? _self.queueOrder : queueOrder // ignore: cast_nullable_to_non_nullable
as int,applyMessage: freezed == applyMessage ? _self.applyMessage : applyMessage // ignore: cast_nullable_to_non_nullable
as String?,offerExpiresAt: freezed == offerExpiresAt ? _self.offerExpiresAt : offerExpiresAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MyParticipationSummaryDto].
extension MyParticipationSummaryDtoPatterns on MyParticipationSummaryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyParticipationSummaryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyParticipationSummaryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyParticipationSummaryDto value)  $default,){
final _that = this;
switch (_that) {
case _MyParticipationSummaryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyParticipationSummaryDto value)?  $default,){
final _that = this;
switch (_that) {
case _MyParticipationSummaryDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int participationId,  String status,  int queueOrder,  String? applyMessage,  String? offerExpiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyParticipationSummaryDto() when $default != null:
return $default(_that.participationId,_that.status,_that.queueOrder,_that.applyMessage,_that.offerExpiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int participationId,  String status,  int queueOrder,  String? applyMessage,  String? offerExpiresAt)  $default,) {final _that = this;
switch (_that) {
case _MyParticipationSummaryDto():
return $default(_that.participationId,_that.status,_that.queueOrder,_that.applyMessage,_that.offerExpiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int participationId,  String status,  int queueOrder,  String? applyMessage,  String? offerExpiresAt)?  $default,) {final _that = this;
switch (_that) {
case _MyParticipationSummaryDto() when $default != null:
return $default(_that.participationId,_that.status,_that.queueOrder,_that.applyMessage,_that.offerExpiresAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyParticipationSummaryDto implements MyParticipationSummaryDto {
  const _MyParticipationSummaryDto({required this.participationId, required this.status, this.queueOrder = 0, this.applyMessage, this.offerExpiresAt});
  factory _MyParticipationSummaryDto.fromJson(Map<String, dynamic> json) => _$MyParticipationSummaryDtoFromJson(json);

@override final  int participationId;
@override final  String status;
@override@JsonKey() final  int queueOrder;
@override final  String? applyMessage;
@override final  String? offerExpiresAt;

/// Create a copy of MyParticipationSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyParticipationSummaryDtoCopyWith<_MyParticipationSummaryDto> get copyWith => __$MyParticipationSummaryDtoCopyWithImpl<_MyParticipationSummaryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyParticipationSummaryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyParticipationSummaryDto&&(identical(other.participationId, participationId) || other.participationId == participationId)&&(identical(other.status, status) || other.status == status)&&(identical(other.queueOrder, queueOrder) || other.queueOrder == queueOrder)&&(identical(other.applyMessage, applyMessage) || other.applyMessage == applyMessage)&&(identical(other.offerExpiresAt, offerExpiresAt) || other.offerExpiresAt == offerExpiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,participationId,status,queueOrder,applyMessage,offerExpiresAt);

@override
String toString() {
  return 'MyParticipationSummaryDto(participationId: $participationId, status: $status, queueOrder: $queueOrder, applyMessage: $applyMessage, offerExpiresAt: $offerExpiresAt)';
}


}

/// @nodoc
abstract mixin class _$MyParticipationSummaryDtoCopyWith<$Res> implements $MyParticipationSummaryDtoCopyWith<$Res> {
  factory _$MyParticipationSummaryDtoCopyWith(_MyParticipationSummaryDto value, $Res Function(_MyParticipationSummaryDto) _then) = __$MyParticipationSummaryDtoCopyWithImpl;
@override @useResult
$Res call({
 int participationId, String status, int queueOrder, String? applyMessage, String? offerExpiresAt
});




}
/// @nodoc
class __$MyParticipationSummaryDtoCopyWithImpl<$Res>
    implements _$MyParticipationSummaryDtoCopyWith<$Res> {
  __$MyParticipationSummaryDtoCopyWithImpl(this._self, this._then);

  final _MyParticipationSummaryDto _self;
  final $Res Function(_MyParticipationSummaryDto) _then;

/// Create a copy of MyParticipationSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? participationId = null,Object? status = null,Object? queueOrder = null,Object? applyMessage = freezed,Object? offerExpiresAt = freezed,}) {
  return _then(_MyParticipationSummaryDto(
participationId: null == participationId ? _self.participationId : participationId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,queueOrder: null == queueOrder ? _self.queueOrder : queueOrder // ignore: cast_nullable_to_non_nullable
as int,applyMessage: freezed == applyMessage ? _self.applyMessage : applyMessage // ignore: cast_nullable_to_non_nullable
as String?,offerExpiresAt: freezed == offerExpiresAt ? _self.offerExpiresAt : offerExpiresAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ParticipationActionResponseDto {

 int get participationId; String get status; int get queueOrder; String? get applyMessage; String? get offerExpiresAt;
/// Create a copy of ParticipationActionResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParticipationActionResponseDtoCopyWith<ParticipationActionResponseDto> get copyWith => _$ParticipationActionResponseDtoCopyWithImpl<ParticipationActionResponseDto>(this as ParticipationActionResponseDto, _$identity);

  /// Serializes this ParticipationActionResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParticipationActionResponseDto&&(identical(other.participationId, participationId) || other.participationId == participationId)&&(identical(other.status, status) || other.status == status)&&(identical(other.queueOrder, queueOrder) || other.queueOrder == queueOrder)&&(identical(other.applyMessage, applyMessage) || other.applyMessage == applyMessage)&&(identical(other.offerExpiresAt, offerExpiresAt) || other.offerExpiresAt == offerExpiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,participationId,status,queueOrder,applyMessage,offerExpiresAt);

@override
String toString() {
  return 'ParticipationActionResponseDto(participationId: $participationId, status: $status, queueOrder: $queueOrder, applyMessage: $applyMessage, offerExpiresAt: $offerExpiresAt)';
}


}

/// @nodoc
abstract mixin class $ParticipationActionResponseDtoCopyWith<$Res>  {
  factory $ParticipationActionResponseDtoCopyWith(ParticipationActionResponseDto value, $Res Function(ParticipationActionResponseDto) _then) = _$ParticipationActionResponseDtoCopyWithImpl;
@useResult
$Res call({
 int participationId, String status, int queueOrder, String? applyMessage, String? offerExpiresAt
});




}
/// @nodoc
class _$ParticipationActionResponseDtoCopyWithImpl<$Res>
    implements $ParticipationActionResponseDtoCopyWith<$Res> {
  _$ParticipationActionResponseDtoCopyWithImpl(this._self, this._then);

  final ParticipationActionResponseDto _self;
  final $Res Function(ParticipationActionResponseDto) _then;

/// Create a copy of ParticipationActionResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? participationId = null,Object? status = null,Object? queueOrder = null,Object? applyMessage = freezed,Object? offerExpiresAt = freezed,}) {
  return _then(_self.copyWith(
participationId: null == participationId ? _self.participationId : participationId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,queueOrder: null == queueOrder ? _self.queueOrder : queueOrder // ignore: cast_nullable_to_non_nullable
as int,applyMessage: freezed == applyMessage ? _self.applyMessage : applyMessage // ignore: cast_nullable_to_non_nullable
as String?,offerExpiresAt: freezed == offerExpiresAt ? _self.offerExpiresAt : offerExpiresAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ParticipationActionResponseDto].
extension ParticipationActionResponseDtoPatterns on ParticipationActionResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParticipationActionResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParticipationActionResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParticipationActionResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _ParticipationActionResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParticipationActionResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _ParticipationActionResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int participationId,  String status,  int queueOrder,  String? applyMessage,  String? offerExpiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParticipationActionResponseDto() when $default != null:
return $default(_that.participationId,_that.status,_that.queueOrder,_that.applyMessage,_that.offerExpiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int participationId,  String status,  int queueOrder,  String? applyMessage,  String? offerExpiresAt)  $default,) {final _that = this;
switch (_that) {
case _ParticipationActionResponseDto():
return $default(_that.participationId,_that.status,_that.queueOrder,_that.applyMessage,_that.offerExpiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int participationId,  String status,  int queueOrder,  String? applyMessage,  String? offerExpiresAt)?  $default,) {final _that = this;
switch (_that) {
case _ParticipationActionResponseDto() when $default != null:
return $default(_that.participationId,_that.status,_that.queueOrder,_that.applyMessage,_that.offerExpiresAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParticipationActionResponseDto implements ParticipationActionResponseDto {
  const _ParticipationActionResponseDto({required this.participationId, required this.status, this.queueOrder = 0, this.applyMessage, this.offerExpiresAt});
  factory _ParticipationActionResponseDto.fromJson(Map<String, dynamic> json) => _$ParticipationActionResponseDtoFromJson(json);

@override final  int participationId;
@override final  String status;
@override@JsonKey() final  int queueOrder;
@override final  String? applyMessage;
@override final  String? offerExpiresAt;

/// Create a copy of ParticipationActionResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParticipationActionResponseDtoCopyWith<_ParticipationActionResponseDto> get copyWith => __$ParticipationActionResponseDtoCopyWithImpl<_ParticipationActionResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParticipationActionResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParticipationActionResponseDto&&(identical(other.participationId, participationId) || other.participationId == participationId)&&(identical(other.status, status) || other.status == status)&&(identical(other.queueOrder, queueOrder) || other.queueOrder == queueOrder)&&(identical(other.applyMessage, applyMessage) || other.applyMessage == applyMessage)&&(identical(other.offerExpiresAt, offerExpiresAt) || other.offerExpiresAt == offerExpiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,participationId,status,queueOrder,applyMessage,offerExpiresAt);

@override
String toString() {
  return 'ParticipationActionResponseDto(participationId: $participationId, status: $status, queueOrder: $queueOrder, applyMessage: $applyMessage, offerExpiresAt: $offerExpiresAt)';
}


}

/// @nodoc
abstract mixin class _$ParticipationActionResponseDtoCopyWith<$Res> implements $ParticipationActionResponseDtoCopyWith<$Res> {
  factory _$ParticipationActionResponseDtoCopyWith(_ParticipationActionResponseDto value, $Res Function(_ParticipationActionResponseDto) _then) = __$ParticipationActionResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 int participationId, String status, int queueOrder, String? applyMessage, String? offerExpiresAt
});




}
/// @nodoc
class __$ParticipationActionResponseDtoCopyWithImpl<$Res>
    implements _$ParticipationActionResponseDtoCopyWith<$Res> {
  __$ParticipationActionResponseDtoCopyWithImpl(this._self, this._then);

  final _ParticipationActionResponseDto _self;
  final $Res Function(_ParticipationActionResponseDto) _then;

/// Create a copy of ParticipationActionResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? participationId = null,Object? status = null,Object? queueOrder = null,Object? applyMessage = freezed,Object? offerExpiresAt = freezed,}) {
  return _then(_ParticipationActionResponseDto(
participationId: null == participationId ? _self.participationId : participationId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,queueOrder: null == queueOrder ? _self.queueOrder : queueOrder // ignore: cast_nullable_to_non_nullable
as int,applyMessage: freezed == applyMessage ? _self.applyMessage : applyMessage // ignore: cast_nullable_to_non_nullable
as String?,offerExpiresAt: freezed == offerExpiresAt ? _self.offerExpiresAt : offerExpiresAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ParticipationActionEnvelope {

 bool get success; ParticipationActionResponseDto? get data; String? get message; String? get code;
/// Create a copy of ParticipationActionEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParticipationActionEnvelopeCopyWith<ParticipationActionEnvelope> get copyWith => _$ParticipationActionEnvelopeCopyWithImpl<ParticipationActionEnvelope>(this as ParticipationActionEnvelope, _$identity);

  /// Serializes this ParticipationActionEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParticipationActionEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'ParticipationActionEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $ParticipationActionEnvelopeCopyWith<$Res>  {
  factory $ParticipationActionEnvelopeCopyWith(ParticipationActionEnvelope value, $Res Function(ParticipationActionEnvelope) _then) = _$ParticipationActionEnvelopeCopyWithImpl;
@useResult
$Res call({
 bool success, ParticipationActionResponseDto? data, String? message, String? code
});


$ParticipationActionResponseDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$ParticipationActionEnvelopeCopyWithImpl<$Res>
    implements $ParticipationActionEnvelopeCopyWith<$Res> {
  _$ParticipationActionEnvelopeCopyWithImpl(this._self, this._then);

  final ParticipationActionEnvelope _self;
  final $Res Function(ParticipationActionEnvelope) _then;

/// Create a copy of ParticipationActionEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ParticipationActionResponseDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ParticipationActionEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParticipationActionResponseDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ParticipationActionResponseDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ParticipationActionEnvelope].
extension ParticipationActionEnvelopePatterns on ParticipationActionEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParticipationActionEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParticipationActionEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParticipationActionEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _ParticipationActionEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParticipationActionEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _ParticipationActionEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  ParticipationActionResponseDto? data,  String? message,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParticipationActionEnvelope() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  ParticipationActionResponseDto? data,  String? message,  String? code)  $default,) {final _that = this;
switch (_that) {
case _ParticipationActionEnvelope():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  ParticipationActionResponseDto? data,  String? message,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _ParticipationActionEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParticipationActionEnvelope implements ParticipationActionEnvelope {
  const _ParticipationActionEnvelope({required this.success, this.data, this.message, this.code});
  factory _ParticipationActionEnvelope.fromJson(Map<String, dynamic> json) => _$ParticipationActionEnvelopeFromJson(json);

@override final  bool success;
@override final  ParticipationActionResponseDto? data;
@override final  String? message;
@override final  String? code;

/// Create a copy of ParticipationActionEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParticipationActionEnvelopeCopyWith<_ParticipationActionEnvelope> get copyWith => __$ParticipationActionEnvelopeCopyWithImpl<_ParticipationActionEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParticipationActionEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParticipationActionEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'ParticipationActionEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$ParticipationActionEnvelopeCopyWith<$Res> implements $ParticipationActionEnvelopeCopyWith<$Res> {
  factory _$ParticipationActionEnvelopeCopyWith(_ParticipationActionEnvelope value, $Res Function(_ParticipationActionEnvelope) _then) = __$ParticipationActionEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 bool success, ParticipationActionResponseDto? data, String? message, String? code
});


@override $ParticipationActionResponseDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$ParticipationActionEnvelopeCopyWithImpl<$Res>
    implements _$ParticipationActionEnvelopeCopyWith<$Res> {
  __$ParticipationActionEnvelopeCopyWithImpl(this._self, this._then);

  final _ParticipationActionEnvelope _self;
  final $Res Function(_ParticipationActionEnvelope) _then;

/// Create a copy of ParticipationActionEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_ParticipationActionEnvelope(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ParticipationActionResponseDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ParticipationActionEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParticipationActionResponseDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ParticipationActionResponseDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$EmptyEnvelope {

 bool get success; Object? get data; String? get message; String? get code;
/// Create a copy of EmptyEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmptyEnvelopeCopyWith<EmptyEnvelope> get copyWith => _$EmptyEnvelopeCopyWithImpl<EmptyEnvelope>(this as EmptyEnvelope, _$identity);

  /// Serializes this EmptyEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmptyEnvelope&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data),message,code);

@override
String toString() {
  return 'EmptyEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $EmptyEnvelopeCopyWith<$Res>  {
  factory $EmptyEnvelopeCopyWith(EmptyEnvelope value, $Res Function(EmptyEnvelope) _then) = _$EmptyEnvelopeCopyWithImpl;
@useResult
$Res call({
 bool success, Object? data, String? message, String? code
});




}
/// @nodoc
class _$EmptyEnvelopeCopyWithImpl<$Res>
    implements $EmptyEnvelopeCopyWith<$Res> {
  _$EmptyEnvelopeCopyWithImpl(this._self, this._then);

  final EmptyEnvelope _self;
  final $Res Function(EmptyEnvelope) _then;

/// Create a copy of EmptyEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data ,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EmptyEnvelope].
extension EmptyEnvelopePatterns on EmptyEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmptyEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmptyEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmptyEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _EmptyEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmptyEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _EmptyEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  Object? data,  String? message,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmptyEnvelope() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  Object? data,  String? message,  String? code)  $default,) {final _that = this;
switch (_that) {
case _EmptyEnvelope():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  Object? data,  String? message,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _EmptyEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmptyEnvelope implements EmptyEnvelope {
  const _EmptyEnvelope({required this.success, this.data, this.message, this.code});
  factory _EmptyEnvelope.fromJson(Map<String, dynamic> json) => _$EmptyEnvelopeFromJson(json);

@override final  bool success;
@override final  Object? data;
@override final  String? message;
@override final  String? code;

/// Create a copy of EmptyEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmptyEnvelopeCopyWith<_EmptyEnvelope> get copyWith => __$EmptyEnvelopeCopyWithImpl<_EmptyEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmptyEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmptyEnvelope&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data),message,code);

@override
String toString() {
  return 'EmptyEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$EmptyEnvelopeCopyWith<$Res> implements $EmptyEnvelopeCopyWith<$Res> {
  factory _$EmptyEnvelopeCopyWith(_EmptyEnvelope value, $Res Function(_EmptyEnvelope) _then) = __$EmptyEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 bool success, Object? data, String? message, String? code
});




}
/// @nodoc
class __$EmptyEnvelopeCopyWithImpl<$Res>
    implements _$EmptyEnvelopeCopyWith<$Res> {
  __$EmptyEnvelopeCopyWithImpl(this._self, this._then);

  final _EmptyEnvelope _self;
  final $Res Function(_EmptyEnvelope) _then;

/// Create a copy of EmptyEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_EmptyEnvelope(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data ,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MatchApplicationDto {

 int get participationId; int get userId; String get nickname; String? get profileImg; double? get ratingScore; String? get level; List<String> get interestRegions; String get status; int get queueOrder; String? get applyMessage; String? get appliedAt; String? get offerExpiresAt;
/// Create a copy of MatchApplicationDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchApplicationDtoCopyWith<MatchApplicationDto> get copyWith => _$MatchApplicationDtoCopyWithImpl<MatchApplicationDto>(this as MatchApplicationDto, _$identity);

  /// Serializes this MatchApplicationDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchApplicationDto&&(identical(other.participationId, participationId) || other.participationId == participationId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImg, profileImg) || other.profileImg == profileImg)&&(identical(other.ratingScore, ratingScore) || other.ratingScore == ratingScore)&&(identical(other.level, level) || other.level == level)&&const DeepCollectionEquality().equals(other.interestRegions, interestRegions)&&(identical(other.status, status) || other.status == status)&&(identical(other.queueOrder, queueOrder) || other.queueOrder == queueOrder)&&(identical(other.applyMessage, applyMessage) || other.applyMessage == applyMessage)&&(identical(other.appliedAt, appliedAt) || other.appliedAt == appliedAt)&&(identical(other.offerExpiresAt, offerExpiresAt) || other.offerExpiresAt == offerExpiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,participationId,userId,nickname,profileImg,ratingScore,level,const DeepCollectionEquality().hash(interestRegions),status,queueOrder,applyMessage,appliedAt,offerExpiresAt);

@override
String toString() {
  return 'MatchApplicationDto(participationId: $participationId, userId: $userId, nickname: $nickname, profileImg: $profileImg, ratingScore: $ratingScore, level: $level, interestRegions: $interestRegions, status: $status, queueOrder: $queueOrder, applyMessage: $applyMessage, appliedAt: $appliedAt, offerExpiresAt: $offerExpiresAt)';
}


}

/// @nodoc
abstract mixin class $MatchApplicationDtoCopyWith<$Res>  {
  factory $MatchApplicationDtoCopyWith(MatchApplicationDto value, $Res Function(MatchApplicationDto) _then) = _$MatchApplicationDtoCopyWithImpl;
@useResult
$Res call({
 int participationId, int userId, String nickname, String? profileImg, double? ratingScore, String? level, List<String> interestRegions, String status, int queueOrder, String? applyMessage, String? appliedAt, String? offerExpiresAt
});




}
/// @nodoc
class _$MatchApplicationDtoCopyWithImpl<$Res>
    implements $MatchApplicationDtoCopyWith<$Res> {
  _$MatchApplicationDtoCopyWithImpl(this._self, this._then);

  final MatchApplicationDto _self;
  final $Res Function(MatchApplicationDto) _then;

/// Create a copy of MatchApplicationDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? participationId = null,Object? userId = null,Object? nickname = null,Object? profileImg = freezed,Object? ratingScore = freezed,Object? level = freezed,Object? interestRegions = null,Object? status = null,Object? queueOrder = null,Object? applyMessage = freezed,Object? appliedAt = freezed,Object? offerExpiresAt = freezed,}) {
  return _then(_self.copyWith(
participationId: null == participationId ? _self.participationId : participationId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImg: freezed == profileImg ? _self.profileImg : profileImg // ignore: cast_nullable_to_non_nullable
as String?,ratingScore: freezed == ratingScore ? _self.ratingScore : ratingScore // ignore: cast_nullable_to_non_nullable
as double?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String?,interestRegions: null == interestRegions ? _self.interestRegions : interestRegions // ignore: cast_nullable_to_non_nullable
as List<String>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,queueOrder: null == queueOrder ? _self.queueOrder : queueOrder // ignore: cast_nullable_to_non_nullable
as int,applyMessage: freezed == applyMessage ? _self.applyMessage : applyMessage // ignore: cast_nullable_to_non_nullable
as String?,appliedAt: freezed == appliedAt ? _self.appliedAt : appliedAt // ignore: cast_nullable_to_non_nullable
as String?,offerExpiresAt: freezed == offerExpiresAt ? _self.offerExpiresAt : offerExpiresAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchApplicationDto].
extension MatchApplicationDtoPatterns on MatchApplicationDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchApplicationDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchApplicationDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchApplicationDto value)  $default,){
final _that = this;
switch (_that) {
case _MatchApplicationDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchApplicationDto value)?  $default,){
final _that = this;
switch (_that) {
case _MatchApplicationDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int participationId,  int userId,  String nickname,  String? profileImg,  double? ratingScore,  String? level,  List<String> interestRegions,  String status,  int queueOrder,  String? applyMessage,  String? appliedAt,  String? offerExpiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchApplicationDto() when $default != null:
return $default(_that.participationId,_that.userId,_that.nickname,_that.profileImg,_that.ratingScore,_that.level,_that.interestRegions,_that.status,_that.queueOrder,_that.applyMessage,_that.appliedAt,_that.offerExpiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int participationId,  int userId,  String nickname,  String? profileImg,  double? ratingScore,  String? level,  List<String> interestRegions,  String status,  int queueOrder,  String? applyMessage,  String? appliedAt,  String? offerExpiresAt)  $default,) {final _that = this;
switch (_that) {
case _MatchApplicationDto():
return $default(_that.participationId,_that.userId,_that.nickname,_that.profileImg,_that.ratingScore,_that.level,_that.interestRegions,_that.status,_that.queueOrder,_that.applyMessage,_that.appliedAt,_that.offerExpiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int participationId,  int userId,  String nickname,  String? profileImg,  double? ratingScore,  String? level,  List<String> interestRegions,  String status,  int queueOrder,  String? applyMessage,  String? appliedAt,  String? offerExpiresAt)?  $default,) {final _that = this;
switch (_that) {
case _MatchApplicationDto() when $default != null:
return $default(_that.participationId,_that.userId,_that.nickname,_that.profileImg,_that.ratingScore,_that.level,_that.interestRegions,_that.status,_that.queueOrder,_that.applyMessage,_that.appliedAt,_that.offerExpiresAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchApplicationDto implements MatchApplicationDto {
  const _MatchApplicationDto({required this.participationId, required this.userId, required this.nickname, this.profileImg, this.ratingScore, this.level, final  List<String> interestRegions = const <String>[], required this.status, this.queueOrder = 0, this.applyMessage, this.appliedAt, this.offerExpiresAt}): _interestRegions = interestRegions;
  factory _MatchApplicationDto.fromJson(Map<String, dynamic> json) => _$MatchApplicationDtoFromJson(json);

@override final  int participationId;
@override final  int userId;
@override final  String nickname;
@override final  String? profileImg;
@override final  double? ratingScore;
@override final  String? level;
 final  List<String> _interestRegions;
@override@JsonKey() List<String> get interestRegions {
  if (_interestRegions is EqualUnmodifiableListView) return _interestRegions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_interestRegions);
}

@override final  String status;
@override@JsonKey() final  int queueOrder;
@override final  String? applyMessage;
@override final  String? appliedAt;
@override final  String? offerExpiresAt;

/// Create a copy of MatchApplicationDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchApplicationDtoCopyWith<_MatchApplicationDto> get copyWith => __$MatchApplicationDtoCopyWithImpl<_MatchApplicationDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchApplicationDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchApplicationDto&&(identical(other.participationId, participationId) || other.participationId == participationId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImg, profileImg) || other.profileImg == profileImg)&&(identical(other.ratingScore, ratingScore) || other.ratingScore == ratingScore)&&(identical(other.level, level) || other.level == level)&&const DeepCollectionEquality().equals(other._interestRegions, _interestRegions)&&(identical(other.status, status) || other.status == status)&&(identical(other.queueOrder, queueOrder) || other.queueOrder == queueOrder)&&(identical(other.applyMessage, applyMessage) || other.applyMessage == applyMessage)&&(identical(other.appliedAt, appliedAt) || other.appliedAt == appliedAt)&&(identical(other.offerExpiresAt, offerExpiresAt) || other.offerExpiresAt == offerExpiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,participationId,userId,nickname,profileImg,ratingScore,level,const DeepCollectionEquality().hash(_interestRegions),status,queueOrder,applyMessage,appliedAt,offerExpiresAt);

@override
String toString() {
  return 'MatchApplicationDto(participationId: $participationId, userId: $userId, nickname: $nickname, profileImg: $profileImg, ratingScore: $ratingScore, level: $level, interestRegions: $interestRegions, status: $status, queueOrder: $queueOrder, applyMessage: $applyMessage, appliedAt: $appliedAt, offerExpiresAt: $offerExpiresAt)';
}


}

/// @nodoc
abstract mixin class _$MatchApplicationDtoCopyWith<$Res> implements $MatchApplicationDtoCopyWith<$Res> {
  factory _$MatchApplicationDtoCopyWith(_MatchApplicationDto value, $Res Function(_MatchApplicationDto) _then) = __$MatchApplicationDtoCopyWithImpl;
@override @useResult
$Res call({
 int participationId, int userId, String nickname, String? profileImg, double? ratingScore, String? level, List<String> interestRegions, String status, int queueOrder, String? applyMessage, String? appliedAt, String? offerExpiresAt
});




}
/// @nodoc
class __$MatchApplicationDtoCopyWithImpl<$Res>
    implements _$MatchApplicationDtoCopyWith<$Res> {
  __$MatchApplicationDtoCopyWithImpl(this._self, this._then);

  final _MatchApplicationDto _self;
  final $Res Function(_MatchApplicationDto) _then;

/// Create a copy of MatchApplicationDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? participationId = null,Object? userId = null,Object? nickname = null,Object? profileImg = freezed,Object? ratingScore = freezed,Object? level = freezed,Object? interestRegions = null,Object? status = null,Object? queueOrder = null,Object? applyMessage = freezed,Object? appliedAt = freezed,Object? offerExpiresAt = freezed,}) {
  return _then(_MatchApplicationDto(
participationId: null == participationId ? _self.participationId : participationId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImg: freezed == profileImg ? _self.profileImg : profileImg // ignore: cast_nullable_to_non_nullable
as String?,ratingScore: freezed == ratingScore ? _self.ratingScore : ratingScore // ignore: cast_nullable_to_non_nullable
as double?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String?,interestRegions: null == interestRegions ? _self._interestRegions : interestRegions // ignore: cast_nullable_to_non_nullable
as List<String>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,queueOrder: null == queueOrder ? _self.queueOrder : queueOrder // ignore: cast_nullable_to_non_nullable
as int,applyMessage: freezed == applyMessage ? _self.applyMessage : applyMessage // ignore: cast_nullable_to_non_nullable
as String?,appliedAt: freezed == appliedAt ? _self.appliedAt : appliedAt // ignore: cast_nullable_to_non_nullable
as String?,offerExpiresAt: freezed == offerExpiresAt ? _self.offerExpiresAt : offerExpiresAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MatchApplicationsEnvelope {

 bool get success; List<MatchApplicationDto> get data; String? get message; String? get code;
/// Create a copy of MatchApplicationsEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchApplicationsEnvelopeCopyWith<MatchApplicationsEnvelope> get copyWith => _$MatchApplicationsEnvelopeCopyWithImpl<MatchApplicationsEnvelope>(this as MatchApplicationsEnvelope, _$identity);

  /// Serializes this MatchApplicationsEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchApplicationsEnvelope&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data),message,code);

@override
String toString() {
  return 'MatchApplicationsEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $MatchApplicationsEnvelopeCopyWith<$Res>  {
  factory $MatchApplicationsEnvelopeCopyWith(MatchApplicationsEnvelope value, $Res Function(MatchApplicationsEnvelope) _then) = _$MatchApplicationsEnvelopeCopyWithImpl;
@useResult
$Res call({
 bool success, List<MatchApplicationDto> data, String? message, String? code
});




}
/// @nodoc
class _$MatchApplicationsEnvelopeCopyWithImpl<$Res>
    implements $MatchApplicationsEnvelopeCopyWith<$Res> {
  _$MatchApplicationsEnvelopeCopyWithImpl(this._self, this._then);

  final MatchApplicationsEnvelope _self;
  final $Res Function(MatchApplicationsEnvelope) _then;

/// Create a copy of MatchApplicationsEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? message = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<MatchApplicationDto>,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchApplicationsEnvelope].
extension MatchApplicationsEnvelopePatterns on MatchApplicationsEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchApplicationsEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchApplicationsEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchApplicationsEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _MatchApplicationsEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchApplicationsEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _MatchApplicationsEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<MatchApplicationDto> data,  String? message,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchApplicationsEnvelope() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<MatchApplicationDto> data,  String? message,  String? code)  $default,) {final _that = this;
switch (_that) {
case _MatchApplicationsEnvelope():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<MatchApplicationDto> data,  String? message,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _MatchApplicationsEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchApplicationsEnvelope implements MatchApplicationsEnvelope {
  const _MatchApplicationsEnvelope({required this.success, final  List<MatchApplicationDto> data = const <MatchApplicationDto>[], this.message, this.code}): _data = data;
  factory _MatchApplicationsEnvelope.fromJson(Map<String, dynamic> json) => _$MatchApplicationsEnvelopeFromJson(json);

@override final  bool success;
 final  List<MatchApplicationDto> _data;
@override@JsonKey() List<MatchApplicationDto> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  String? message;
@override final  String? code;

/// Create a copy of MatchApplicationsEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchApplicationsEnvelopeCopyWith<_MatchApplicationsEnvelope> get copyWith => __$MatchApplicationsEnvelopeCopyWithImpl<_MatchApplicationsEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchApplicationsEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchApplicationsEnvelope&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data),message,code);

@override
String toString() {
  return 'MatchApplicationsEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$MatchApplicationsEnvelopeCopyWith<$Res> implements $MatchApplicationsEnvelopeCopyWith<$Res> {
  factory _$MatchApplicationsEnvelopeCopyWith(_MatchApplicationsEnvelope value, $Res Function(_MatchApplicationsEnvelope) _then) = __$MatchApplicationsEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<MatchApplicationDto> data, String? message, String? code
});




}
/// @nodoc
class __$MatchApplicationsEnvelopeCopyWithImpl<$Res>
    implements _$MatchApplicationsEnvelopeCopyWith<$Res> {
  __$MatchApplicationsEnvelopeCopyWithImpl(this._self, this._then);

  final _MatchApplicationsEnvelope _self;
  final $Res Function(_MatchApplicationsEnvelope) _then;

/// Create a copy of MatchApplicationsEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? message = freezed,Object? code = freezed,}) {
  return _then(_MatchApplicationsEnvelope(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<MatchApplicationDto>,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MatchDetailEnvelope {

 bool get success; MatchDetailDto? get data; String? get message; String? get code;
/// Create a copy of MatchDetailEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchDetailEnvelopeCopyWith<MatchDetailEnvelope> get copyWith => _$MatchDetailEnvelopeCopyWithImpl<MatchDetailEnvelope>(this as MatchDetailEnvelope, _$identity);

  /// Serializes this MatchDetailEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchDetailEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'MatchDetailEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $MatchDetailEnvelopeCopyWith<$Res>  {
  factory $MatchDetailEnvelopeCopyWith(MatchDetailEnvelope value, $Res Function(MatchDetailEnvelope) _then) = _$MatchDetailEnvelopeCopyWithImpl;
@useResult
$Res call({
 bool success, MatchDetailDto? data, String? message, String? code
});


$MatchDetailDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$MatchDetailEnvelopeCopyWithImpl<$Res>
    implements $MatchDetailEnvelopeCopyWith<$Res> {
  _$MatchDetailEnvelopeCopyWithImpl(this._self, this._then);

  final MatchDetailEnvelope _self;
  final $Res Function(MatchDetailEnvelope) _then;

/// Create a copy of MatchDetailEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MatchDetailDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of MatchDetailEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchDetailDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $MatchDetailDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [MatchDetailEnvelope].
extension MatchDetailEnvelopePatterns on MatchDetailEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchDetailEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchDetailEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchDetailEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _MatchDetailEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchDetailEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _MatchDetailEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  MatchDetailDto? data,  String? message,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchDetailEnvelope() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  MatchDetailDto? data,  String? message,  String? code)  $default,) {final _that = this;
switch (_that) {
case _MatchDetailEnvelope():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  MatchDetailDto? data,  String? message,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _MatchDetailEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchDetailEnvelope implements MatchDetailEnvelope {
  const _MatchDetailEnvelope({required this.success, this.data, this.message, this.code});
  factory _MatchDetailEnvelope.fromJson(Map<String, dynamic> json) => _$MatchDetailEnvelopeFromJson(json);

@override final  bool success;
@override final  MatchDetailDto? data;
@override final  String? message;
@override final  String? code;

/// Create a copy of MatchDetailEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchDetailEnvelopeCopyWith<_MatchDetailEnvelope> get copyWith => __$MatchDetailEnvelopeCopyWithImpl<_MatchDetailEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchDetailEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchDetailEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'MatchDetailEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$MatchDetailEnvelopeCopyWith<$Res> implements $MatchDetailEnvelopeCopyWith<$Res> {
  factory _$MatchDetailEnvelopeCopyWith(_MatchDetailEnvelope value, $Res Function(_MatchDetailEnvelope) _then) = __$MatchDetailEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 bool success, MatchDetailDto? data, String? message, String? code
});


@override $MatchDetailDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$MatchDetailEnvelopeCopyWithImpl<$Res>
    implements _$MatchDetailEnvelopeCopyWith<$Res> {
  __$MatchDetailEnvelopeCopyWithImpl(this._self, this._then);

  final _MatchDetailEnvelope _self;
  final $Res Function(_MatchDetailEnvelope) _then;

/// Create a copy of MatchDetailEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_MatchDetailEnvelope(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MatchDetailDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of MatchDetailEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchDetailDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $MatchDetailDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$MatchUpdateRequestDto {

 String get title; String get description; String get matchDate; String get startTime; int get durationMin; String? get locationName; String get regionCode; int get maxPeople; String? get targetLevels; CostPolicy get costPolicy; String? get imageUrl; double? get latitude; double? get longitude;
/// Create a copy of MatchUpdateRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchUpdateRequestDtoCopyWith<MatchUpdateRequestDto> get copyWith => _$MatchUpdateRequestDtoCopyWithImpl<MatchUpdateRequestDto>(this as MatchUpdateRequestDto, _$identity);

  /// Serializes this MatchUpdateRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchUpdateRequestDto&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.matchDate, matchDate) || other.matchDate == matchDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.durationMin, durationMin) || other.durationMin == durationMin)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.regionCode, regionCode) || other.regionCode == regionCode)&&(identical(other.maxPeople, maxPeople) || other.maxPeople == maxPeople)&&(identical(other.targetLevels, targetLevels) || other.targetLevels == targetLevels)&&(identical(other.costPolicy, costPolicy) || other.costPolicy == costPolicy)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,matchDate,startTime,durationMin,locationName,regionCode,maxPeople,targetLevels,costPolicy,imageUrl,latitude,longitude);

@override
String toString() {
  return 'MatchUpdateRequestDto(title: $title, description: $description, matchDate: $matchDate, startTime: $startTime, durationMin: $durationMin, locationName: $locationName, regionCode: $regionCode, maxPeople: $maxPeople, targetLevels: $targetLevels, costPolicy: $costPolicy, imageUrl: $imageUrl, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $MatchUpdateRequestDtoCopyWith<$Res>  {
  factory $MatchUpdateRequestDtoCopyWith(MatchUpdateRequestDto value, $Res Function(MatchUpdateRequestDto) _then) = _$MatchUpdateRequestDtoCopyWithImpl;
@useResult
$Res call({
 String title, String description, String matchDate, String startTime, int durationMin, String? locationName, String regionCode, int maxPeople, String? targetLevels, CostPolicy costPolicy, String? imageUrl, double? latitude, double? longitude
});




}
/// @nodoc
class _$MatchUpdateRequestDtoCopyWithImpl<$Res>
    implements $MatchUpdateRequestDtoCopyWith<$Res> {
  _$MatchUpdateRequestDtoCopyWithImpl(this._self, this._then);

  final MatchUpdateRequestDto _self;
  final $Res Function(MatchUpdateRequestDto) _then;

/// Create a copy of MatchUpdateRequestDto
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


/// Adds pattern-matching-related methods to [MatchUpdateRequestDto].
extension MatchUpdateRequestDtoPatterns on MatchUpdateRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchUpdateRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchUpdateRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchUpdateRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _MatchUpdateRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchUpdateRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _MatchUpdateRequestDto() when $default != null:
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
case _MatchUpdateRequestDto() when $default != null:
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
case _MatchUpdateRequestDto():
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
case _MatchUpdateRequestDto() when $default != null:
return $default(_that.title,_that.description,_that.matchDate,_that.startTime,_that.durationMin,_that.locationName,_that.regionCode,_that.maxPeople,_that.targetLevels,_that.costPolicy,_that.imageUrl,_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchUpdateRequestDto implements MatchUpdateRequestDto {
  const _MatchUpdateRequestDto({required this.title, required this.description, required this.matchDate, required this.startTime, required this.durationMin, this.locationName, required this.regionCode, required this.maxPeople, this.targetLevels, required this.costPolicy, this.imageUrl, this.latitude, this.longitude});
  factory _MatchUpdateRequestDto.fromJson(Map<String, dynamic> json) => _$MatchUpdateRequestDtoFromJson(json);

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

/// Create a copy of MatchUpdateRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchUpdateRequestDtoCopyWith<_MatchUpdateRequestDto> get copyWith => __$MatchUpdateRequestDtoCopyWithImpl<_MatchUpdateRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchUpdateRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchUpdateRequestDto&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.matchDate, matchDate) || other.matchDate == matchDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.durationMin, durationMin) || other.durationMin == durationMin)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.regionCode, regionCode) || other.regionCode == regionCode)&&(identical(other.maxPeople, maxPeople) || other.maxPeople == maxPeople)&&(identical(other.targetLevels, targetLevels) || other.targetLevels == targetLevels)&&(identical(other.costPolicy, costPolicy) || other.costPolicy == costPolicy)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,matchDate,startTime,durationMin,locationName,regionCode,maxPeople,targetLevels,costPolicy,imageUrl,latitude,longitude);

@override
String toString() {
  return 'MatchUpdateRequestDto(title: $title, description: $description, matchDate: $matchDate, startTime: $startTime, durationMin: $durationMin, locationName: $locationName, regionCode: $regionCode, maxPeople: $maxPeople, targetLevels: $targetLevels, costPolicy: $costPolicy, imageUrl: $imageUrl, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$MatchUpdateRequestDtoCopyWith<$Res> implements $MatchUpdateRequestDtoCopyWith<$Res> {
  factory _$MatchUpdateRequestDtoCopyWith(_MatchUpdateRequestDto value, $Res Function(_MatchUpdateRequestDto) _then) = __$MatchUpdateRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String title, String description, String matchDate, String startTime, int durationMin, String? locationName, String regionCode, int maxPeople, String? targetLevels, CostPolicy costPolicy, String? imageUrl, double? latitude, double? longitude
});




}
/// @nodoc
class __$MatchUpdateRequestDtoCopyWithImpl<$Res>
    implements _$MatchUpdateRequestDtoCopyWith<$Res> {
  __$MatchUpdateRequestDtoCopyWithImpl(this._self, this._then);

  final _MatchUpdateRequestDto _self;
  final $Res Function(_MatchUpdateRequestDto) _then;

/// Create a copy of MatchUpdateRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,Object? matchDate = null,Object? startTime = null,Object? durationMin = null,Object? locationName = freezed,Object? regionCode = null,Object? maxPeople = null,Object? targetLevels = freezed,Object? costPolicy = null,Object? imageUrl = freezed,Object? latitude = freezed,Object? longitude = freezed,}) {
  return _then(_MatchUpdateRequestDto(
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

// dart format on
