// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatRoomListItemDto {

 int get matchId; int get roomId; String get matchTitle; String? get lastMessagePreview; String? get lastMessageAt;
/// Create a copy of ChatRoomListItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatRoomListItemDtoCopyWith<ChatRoomListItemDto> get copyWith => _$ChatRoomListItemDtoCopyWithImpl<ChatRoomListItemDto>(this as ChatRoomListItemDto, _$identity);

  /// Serializes this ChatRoomListItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatRoomListItemDto&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.matchTitle, matchTitle) || other.matchTitle == matchTitle)&&(identical(other.lastMessagePreview, lastMessagePreview) || other.lastMessagePreview == lastMessagePreview)&&(identical(other.lastMessageAt, lastMessageAt) || other.lastMessageAt == lastMessageAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,matchId,roomId,matchTitle,lastMessagePreview,lastMessageAt);

@override
String toString() {
  return 'ChatRoomListItemDto(matchId: $matchId, roomId: $roomId, matchTitle: $matchTitle, lastMessagePreview: $lastMessagePreview, lastMessageAt: $lastMessageAt)';
}


}

/// @nodoc
abstract mixin class $ChatRoomListItemDtoCopyWith<$Res>  {
  factory $ChatRoomListItemDtoCopyWith(ChatRoomListItemDto value, $Res Function(ChatRoomListItemDto) _then) = _$ChatRoomListItemDtoCopyWithImpl;
@useResult
$Res call({
 int matchId, int roomId, String matchTitle, String? lastMessagePreview, String? lastMessageAt
});




}
/// @nodoc
class _$ChatRoomListItemDtoCopyWithImpl<$Res>
    implements $ChatRoomListItemDtoCopyWith<$Res> {
  _$ChatRoomListItemDtoCopyWithImpl(this._self, this._then);

  final ChatRoomListItemDto _self;
  final $Res Function(ChatRoomListItemDto) _then;

/// Create a copy of ChatRoomListItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? matchId = null,Object? roomId = null,Object? matchTitle = null,Object? lastMessagePreview = freezed,Object? lastMessageAt = freezed,}) {
  return _then(_self.copyWith(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,matchTitle: null == matchTitle ? _self.matchTitle : matchTitle // ignore: cast_nullable_to_non_nullable
as String,lastMessagePreview: freezed == lastMessagePreview ? _self.lastMessagePreview : lastMessagePreview // ignore: cast_nullable_to_non_nullable
as String?,lastMessageAt: freezed == lastMessageAt ? _self.lastMessageAt : lastMessageAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatRoomListItemDto].
extension ChatRoomListItemDtoPatterns on ChatRoomListItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatRoomListItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatRoomListItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatRoomListItemDto value)  $default,){
final _that = this;
switch (_that) {
case _ChatRoomListItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatRoomListItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChatRoomListItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int matchId,  int roomId,  String matchTitle,  String? lastMessagePreview,  String? lastMessageAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatRoomListItemDto() when $default != null:
return $default(_that.matchId,_that.roomId,_that.matchTitle,_that.lastMessagePreview,_that.lastMessageAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int matchId,  int roomId,  String matchTitle,  String? lastMessagePreview,  String? lastMessageAt)  $default,) {final _that = this;
switch (_that) {
case _ChatRoomListItemDto():
return $default(_that.matchId,_that.roomId,_that.matchTitle,_that.lastMessagePreview,_that.lastMessageAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int matchId,  int roomId,  String matchTitle,  String? lastMessagePreview,  String? lastMessageAt)?  $default,) {final _that = this;
switch (_that) {
case _ChatRoomListItemDto() when $default != null:
return $default(_that.matchId,_that.roomId,_that.matchTitle,_that.lastMessagePreview,_that.lastMessageAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatRoomListItemDto implements ChatRoomListItemDto {
  const _ChatRoomListItemDto({required this.matchId, required this.roomId, required this.matchTitle, this.lastMessagePreview, this.lastMessageAt});
  factory _ChatRoomListItemDto.fromJson(Map<String, dynamic> json) => _$ChatRoomListItemDtoFromJson(json);

@override final  int matchId;
@override final  int roomId;
@override final  String matchTitle;
@override final  String? lastMessagePreview;
@override final  String? lastMessageAt;

/// Create a copy of ChatRoomListItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatRoomListItemDtoCopyWith<_ChatRoomListItemDto> get copyWith => __$ChatRoomListItemDtoCopyWithImpl<_ChatRoomListItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatRoomListItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatRoomListItemDto&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.matchTitle, matchTitle) || other.matchTitle == matchTitle)&&(identical(other.lastMessagePreview, lastMessagePreview) || other.lastMessagePreview == lastMessagePreview)&&(identical(other.lastMessageAt, lastMessageAt) || other.lastMessageAt == lastMessageAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,matchId,roomId,matchTitle,lastMessagePreview,lastMessageAt);

@override
String toString() {
  return 'ChatRoomListItemDto(matchId: $matchId, roomId: $roomId, matchTitle: $matchTitle, lastMessagePreview: $lastMessagePreview, lastMessageAt: $lastMessageAt)';
}


}

/// @nodoc
abstract mixin class _$ChatRoomListItemDtoCopyWith<$Res> implements $ChatRoomListItemDtoCopyWith<$Res> {
  factory _$ChatRoomListItemDtoCopyWith(_ChatRoomListItemDto value, $Res Function(_ChatRoomListItemDto) _then) = __$ChatRoomListItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int matchId, int roomId, String matchTitle, String? lastMessagePreview, String? lastMessageAt
});




}
/// @nodoc
class __$ChatRoomListItemDtoCopyWithImpl<$Res>
    implements _$ChatRoomListItemDtoCopyWith<$Res> {
  __$ChatRoomListItemDtoCopyWithImpl(this._self, this._then);

  final _ChatRoomListItemDto _self;
  final $Res Function(_ChatRoomListItemDto) _then;

/// Create a copy of ChatRoomListItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? matchId = null,Object? roomId = null,Object? matchTitle = null,Object? lastMessagePreview = freezed,Object? lastMessageAt = freezed,}) {
  return _then(_ChatRoomListItemDto(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,matchTitle: null == matchTitle ? _self.matchTitle : matchTitle // ignore: cast_nullable_to_non_nullable
as String,lastMessagePreview: freezed == lastMessagePreview ? _self.lastMessagePreview : lastMessagePreview // ignore: cast_nullable_to_non_nullable
as String?,lastMessageAt: freezed == lastMessageAt ? _self.lastMessageAt : lastMessageAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ChatRoomPageDto {

 List<ChatRoomListItemDto> get content; int? get totalElements; int? get totalPages; int? get size; int? get number;
/// Create a copy of ChatRoomPageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatRoomPageDtoCopyWith<ChatRoomPageDto> get copyWith => _$ChatRoomPageDtoCopyWithImpl<ChatRoomPageDto>(this as ChatRoomPageDto, _$identity);

  /// Serializes this ChatRoomPageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatRoomPageDto&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.size, size) || other.size == size)&&(identical(other.number, number) || other.number == number));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(content),totalElements,totalPages,size,number);

@override
String toString() {
  return 'ChatRoomPageDto(content: $content, totalElements: $totalElements, totalPages: $totalPages, size: $size, number: $number)';
}


}

/// @nodoc
abstract mixin class $ChatRoomPageDtoCopyWith<$Res>  {
  factory $ChatRoomPageDtoCopyWith(ChatRoomPageDto value, $Res Function(ChatRoomPageDto) _then) = _$ChatRoomPageDtoCopyWithImpl;
@useResult
$Res call({
 List<ChatRoomListItemDto> content, int? totalElements, int? totalPages, int? size, int? number
});




}
/// @nodoc
class _$ChatRoomPageDtoCopyWithImpl<$Res>
    implements $ChatRoomPageDtoCopyWith<$Res> {
  _$ChatRoomPageDtoCopyWithImpl(this._self, this._then);

  final ChatRoomPageDto _self;
  final $Res Function(ChatRoomPageDto) _then;

/// Create a copy of ChatRoomPageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? totalElements = freezed,Object? totalPages = freezed,Object? size = freezed,Object? number = freezed,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as List<ChatRoomListItemDto>,totalElements: freezed == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatRoomPageDto].
extension ChatRoomPageDtoPatterns on ChatRoomPageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatRoomPageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatRoomPageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatRoomPageDto value)  $default,){
final _that = this;
switch (_that) {
case _ChatRoomPageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatRoomPageDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChatRoomPageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChatRoomListItemDto> content,  int? totalElements,  int? totalPages,  int? size,  int? number)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatRoomPageDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChatRoomListItemDto> content,  int? totalElements,  int? totalPages,  int? size,  int? number)  $default,) {final _that = this;
switch (_that) {
case _ChatRoomPageDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChatRoomListItemDto> content,  int? totalElements,  int? totalPages,  int? size,  int? number)?  $default,) {final _that = this;
switch (_that) {
case _ChatRoomPageDto() when $default != null:
return $default(_that.content,_that.totalElements,_that.totalPages,_that.size,_that.number);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatRoomPageDto implements ChatRoomPageDto {
  const _ChatRoomPageDto({final  List<ChatRoomListItemDto> content = const <ChatRoomListItemDto>[], this.totalElements, this.totalPages, this.size, this.number}): _content = content;
  factory _ChatRoomPageDto.fromJson(Map<String, dynamic> json) => _$ChatRoomPageDtoFromJson(json);

 final  List<ChatRoomListItemDto> _content;
@override@JsonKey() List<ChatRoomListItemDto> get content {
  if (_content is EqualUnmodifiableListView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_content);
}

@override final  int? totalElements;
@override final  int? totalPages;
@override final  int? size;
@override final  int? number;

/// Create a copy of ChatRoomPageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatRoomPageDtoCopyWith<_ChatRoomPageDto> get copyWith => __$ChatRoomPageDtoCopyWithImpl<_ChatRoomPageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatRoomPageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatRoomPageDto&&const DeepCollectionEquality().equals(other._content, _content)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.size, size) || other.size == size)&&(identical(other.number, number) || other.number == number));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_content),totalElements,totalPages,size,number);

@override
String toString() {
  return 'ChatRoomPageDto(content: $content, totalElements: $totalElements, totalPages: $totalPages, size: $size, number: $number)';
}


}

/// @nodoc
abstract mixin class _$ChatRoomPageDtoCopyWith<$Res> implements $ChatRoomPageDtoCopyWith<$Res> {
  factory _$ChatRoomPageDtoCopyWith(_ChatRoomPageDto value, $Res Function(_ChatRoomPageDto) _then) = __$ChatRoomPageDtoCopyWithImpl;
@override @useResult
$Res call({
 List<ChatRoomListItemDto> content, int? totalElements, int? totalPages, int? size, int? number
});




}
/// @nodoc
class __$ChatRoomPageDtoCopyWithImpl<$Res>
    implements _$ChatRoomPageDtoCopyWith<$Res> {
  __$ChatRoomPageDtoCopyWithImpl(this._self, this._then);

  final _ChatRoomPageDto _self;
  final $Res Function(_ChatRoomPageDto) _then;

/// Create a copy of ChatRoomPageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? totalElements = freezed,Object? totalPages = freezed,Object? size = freezed,Object? number = freezed,}) {
  return _then(_ChatRoomPageDto(
content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<ChatRoomListItemDto>,totalElements: freezed == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$MatchChatNoticeDto {

 int get matchId; String get title; String get matchDate; String get startTime; int? get durationMin; String? get locationName; String get costPolicy; String get status;
/// Create a copy of MatchChatNoticeDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchChatNoticeDtoCopyWith<MatchChatNoticeDto> get copyWith => _$MatchChatNoticeDtoCopyWithImpl<MatchChatNoticeDto>(this as MatchChatNoticeDto, _$identity);

  /// Serializes this MatchChatNoticeDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchChatNoticeDto&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.title, title) || other.title == title)&&(identical(other.matchDate, matchDate) || other.matchDate == matchDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.durationMin, durationMin) || other.durationMin == durationMin)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.costPolicy, costPolicy) || other.costPolicy == costPolicy)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,matchId,title,matchDate,startTime,durationMin,locationName,costPolicy,status);

@override
String toString() {
  return 'MatchChatNoticeDto(matchId: $matchId, title: $title, matchDate: $matchDate, startTime: $startTime, durationMin: $durationMin, locationName: $locationName, costPolicy: $costPolicy, status: $status)';
}


}

/// @nodoc
abstract mixin class $MatchChatNoticeDtoCopyWith<$Res>  {
  factory $MatchChatNoticeDtoCopyWith(MatchChatNoticeDto value, $Res Function(MatchChatNoticeDto) _then) = _$MatchChatNoticeDtoCopyWithImpl;
@useResult
$Res call({
 int matchId, String title, String matchDate, String startTime, int? durationMin, String? locationName, String costPolicy, String status
});




}
/// @nodoc
class _$MatchChatNoticeDtoCopyWithImpl<$Res>
    implements $MatchChatNoticeDtoCopyWith<$Res> {
  _$MatchChatNoticeDtoCopyWithImpl(this._self, this._then);

  final MatchChatNoticeDto _self;
  final $Res Function(MatchChatNoticeDto) _then;

/// Create a copy of MatchChatNoticeDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? matchId = null,Object? title = null,Object? matchDate = null,Object? startTime = null,Object? durationMin = freezed,Object? locationName = freezed,Object? costPolicy = null,Object? status = null,}) {
  return _then(_self.copyWith(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,matchDate: null == matchDate ? _self.matchDate : matchDate // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,durationMin: freezed == durationMin ? _self.durationMin : durationMin // ignore: cast_nullable_to_non_nullable
as int?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,costPolicy: null == costPolicy ? _self.costPolicy : costPolicy // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchChatNoticeDto].
extension MatchChatNoticeDtoPatterns on MatchChatNoticeDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchChatNoticeDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchChatNoticeDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchChatNoticeDto value)  $default,){
final _that = this;
switch (_that) {
case _MatchChatNoticeDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchChatNoticeDto value)?  $default,){
final _that = this;
switch (_that) {
case _MatchChatNoticeDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int matchId,  String title,  String matchDate,  String startTime,  int? durationMin,  String? locationName,  String costPolicy,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchChatNoticeDto() when $default != null:
return $default(_that.matchId,_that.title,_that.matchDate,_that.startTime,_that.durationMin,_that.locationName,_that.costPolicy,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int matchId,  String title,  String matchDate,  String startTime,  int? durationMin,  String? locationName,  String costPolicy,  String status)  $default,) {final _that = this;
switch (_that) {
case _MatchChatNoticeDto():
return $default(_that.matchId,_that.title,_that.matchDate,_that.startTime,_that.durationMin,_that.locationName,_that.costPolicy,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int matchId,  String title,  String matchDate,  String startTime,  int? durationMin,  String? locationName,  String costPolicy,  String status)?  $default,) {final _that = this;
switch (_that) {
case _MatchChatNoticeDto() when $default != null:
return $default(_that.matchId,_that.title,_that.matchDate,_that.startTime,_that.durationMin,_that.locationName,_that.costPolicy,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchChatNoticeDto implements MatchChatNoticeDto {
  const _MatchChatNoticeDto({required this.matchId, required this.title, required this.matchDate, required this.startTime, this.durationMin, this.locationName, required this.costPolicy, required this.status});
  factory _MatchChatNoticeDto.fromJson(Map<String, dynamic> json) => _$MatchChatNoticeDtoFromJson(json);

@override final  int matchId;
@override final  String title;
@override final  String matchDate;
@override final  String startTime;
@override final  int? durationMin;
@override final  String? locationName;
@override final  String costPolicy;
@override final  String status;

/// Create a copy of MatchChatNoticeDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchChatNoticeDtoCopyWith<_MatchChatNoticeDto> get copyWith => __$MatchChatNoticeDtoCopyWithImpl<_MatchChatNoticeDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchChatNoticeDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchChatNoticeDto&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.title, title) || other.title == title)&&(identical(other.matchDate, matchDate) || other.matchDate == matchDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.durationMin, durationMin) || other.durationMin == durationMin)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.costPolicy, costPolicy) || other.costPolicy == costPolicy)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,matchId,title,matchDate,startTime,durationMin,locationName,costPolicy,status);

@override
String toString() {
  return 'MatchChatNoticeDto(matchId: $matchId, title: $title, matchDate: $matchDate, startTime: $startTime, durationMin: $durationMin, locationName: $locationName, costPolicy: $costPolicy, status: $status)';
}


}

/// @nodoc
abstract mixin class _$MatchChatNoticeDtoCopyWith<$Res> implements $MatchChatNoticeDtoCopyWith<$Res> {
  factory _$MatchChatNoticeDtoCopyWith(_MatchChatNoticeDto value, $Res Function(_MatchChatNoticeDto) _then) = __$MatchChatNoticeDtoCopyWithImpl;
@override @useResult
$Res call({
 int matchId, String title, String matchDate, String startTime, int? durationMin, String? locationName, String costPolicy, String status
});




}
/// @nodoc
class __$MatchChatNoticeDtoCopyWithImpl<$Res>
    implements _$MatchChatNoticeDtoCopyWith<$Res> {
  __$MatchChatNoticeDtoCopyWithImpl(this._self, this._then);

  final _MatchChatNoticeDto _self;
  final $Res Function(_MatchChatNoticeDto) _then;

/// Create a copy of MatchChatNoticeDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? matchId = null,Object? title = null,Object? matchDate = null,Object? startTime = null,Object? durationMin = freezed,Object? locationName = freezed,Object? costPolicy = null,Object? status = null,}) {
  return _then(_MatchChatNoticeDto(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,matchDate: null == matchDate ? _self.matchDate : matchDate // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,durationMin: freezed == durationMin ? _self.durationMin : durationMin // ignore: cast_nullable_to_non_nullable
as int?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,costPolicy: null == costPolicy ? _self.costPolicy : costPolicy // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ChatMessageDto {

 int get messageId; int get roomId; int get senderId; String? get senderNickname; String? get content; String get messageType; String get createdAt; String? get editedAt;
/// Create a copy of ChatMessageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessageDtoCopyWith<ChatMessageDto> get copyWith => _$ChatMessageDtoCopyWithImpl<ChatMessageDto>(this as ChatMessageDto, _$identity);

  /// Serializes this ChatMessageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessageDto&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.senderNickname, senderNickname) || other.senderNickname == senderNickname)&&(identical(other.content, content) || other.content == content)&&(identical(other.messageType, messageType) || other.messageType == messageType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.editedAt, editedAt) || other.editedAt == editedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messageId,roomId,senderId,senderNickname,content,messageType,createdAt,editedAt);

@override
String toString() {
  return 'ChatMessageDto(messageId: $messageId, roomId: $roomId, senderId: $senderId, senderNickname: $senderNickname, content: $content, messageType: $messageType, createdAt: $createdAt, editedAt: $editedAt)';
}


}

/// @nodoc
abstract mixin class $ChatMessageDtoCopyWith<$Res>  {
  factory $ChatMessageDtoCopyWith(ChatMessageDto value, $Res Function(ChatMessageDto) _then) = _$ChatMessageDtoCopyWithImpl;
@useResult
$Res call({
 int messageId, int roomId, int senderId, String? senderNickname, String? content, String messageType, String createdAt, String? editedAt
});




}
/// @nodoc
class _$ChatMessageDtoCopyWithImpl<$Res>
    implements $ChatMessageDtoCopyWith<$Res> {
  _$ChatMessageDtoCopyWithImpl(this._self, this._then);

  final ChatMessageDto _self;
  final $Res Function(ChatMessageDto) _then;

/// Create a copy of ChatMessageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messageId = null,Object? roomId = null,Object? senderId = null,Object? senderNickname = freezed,Object? content = freezed,Object? messageType = null,Object? createdAt = null,Object? editedAt = freezed,}) {
  return _then(_self.copyWith(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as int,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as int,senderNickname: freezed == senderNickname ? _self.senderNickname : senderNickname // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,messageType: null == messageType ? _self.messageType : messageType // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,editedAt: freezed == editedAt ? _self.editedAt : editedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatMessageDto].
extension ChatMessageDtoPatterns on ChatMessageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessageDto value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessageDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int messageId,  int roomId,  int senderId,  String? senderNickname,  String? content,  String messageType,  String createdAt,  String? editedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessageDto() when $default != null:
return $default(_that.messageId,_that.roomId,_that.senderId,_that.senderNickname,_that.content,_that.messageType,_that.createdAt,_that.editedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int messageId,  int roomId,  int senderId,  String? senderNickname,  String? content,  String messageType,  String createdAt,  String? editedAt)  $default,) {final _that = this;
switch (_that) {
case _ChatMessageDto():
return $default(_that.messageId,_that.roomId,_that.senderId,_that.senderNickname,_that.content,_that.messageType,_that.createdAt,_that.editedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int messageId,  int roomId,  int senderId,  String? senderNickname,  String? content,  String messageType,  String createdAt,  String? editedAt)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessageDto() when $default != null:
return $default(_that.messageId,_that.roomId,_that.senderId,_that.senderNickname,_that.content,_that.messageType,_that.createdAt,_that.editedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatMessageDto implements ChatMessageDto {
  const _ChatMessageDto({required this.messageId, required this.roomId, required this.senderId, this.senderNickname, this.content, required this.messageType, required this.createdAt, this.editedAt});
  factory _ChatMessageDto.fromJson(Map<String, dynamic> json) => _$ChatMessageDtoFromJson(json);

@override final  int messageId;
@override final  int roomId;
@override final  int senderId;
@override final  String? senderNickname;
@override final  String? content;
@override final  String messageType;
@override final  String createdAt;
@override final  String? editedAt;

/// Create a copy of ChatMessageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessageDtoCopyWith<_ChatMessageDto> get copyWith => __$ChatMessageDtoCopyWithImpl<_ChatMessageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatMessageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessageDto&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.senderNickname, senderNickname) || other.senderNickname == senderNickname)&&(identical(other.content, content) || other.content == content)&&(identical(other.messageType, messageType) || other.messageType == messageType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.editedAt, editedAt) || other.editedAt == editedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messageId,roomId,senderId,senderNickname,content,messageType,createdAt,editedAt);

@override
String toString() {
  return 'ChatMessageDto(messageId: $messageId, roomId: $roomId, senderId: $senderId, senderNickname: $senderNickname, content: $content, messageType: $messageType, createdAt: $createdAt, editedAt: $editedAt)';
}


}

/// @nodoc
abstract mixin class _$ChatMessageDtoCopyWith<$Res> implements $ChatMessageDtoCopyWith<$Res> {
  factory _$ChatMessageDtoCopyWith(_ChatMessageDto value, $Res Function(_ChatMessageDto) _then) = __$ChatMessageDtoCopyWithImpl;
@override @useResult
$Res call({
 int messageId, int roomId, int senderId, String? senderNickname, String? content, String messageType, String createdAt, String? editedAt
});




}
/// @nodoc
class __$ChatMessageDtoCopyWithImpl<$Res>
    implements _$ChatMessageDtoCopyWith<$Res> {
  __$ChatMessageDtoCopyWithImpl(this._self, this._then);

  final _ChatMessageDto _self;
  final $Res Function(_ChatMessageDto) _then;

/// Create a copy of ChatMessageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messageId = null,Object? roomId = null,Object? senderId = null,Object? senderNickname = freezed,Object? content = freezed,Object? messageType = null,Object? createdAt = null,Object? editedAt = freezed,}) {
  return _then(_ChatMessageDto(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as int,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as int,senderNickname: freezed == senderNickname ? _self.senderNickname : senderNickname // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,messageType: null == messageType ? _self.messageType : messageType // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,editedAt: freezed == editedAt ? _self.editedAt : editedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ChatRoomDetailDto {

 int get roomId; int get matchId; MatchChatNoticeDto get matchNotice; ChatMessageDto? get lastMessage;
/// Create a copy of ChatRoomDetailDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatRoomDetailDtoCopyWith<ChatRoomDetailDto> get copyWith => _$ChatRoomDetailDtoCopyWithImpl<ChatRoomDetailDto>(this as ChatRoomDetailDto, _$identity);

  /// Serializes this ChatRoomDetailDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatRoomDetailDto&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.matchNotice, matchNotice) || other.matchNotice == matchNotice)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roomId,matchId,matchNotice,lastMessage);

@override
String toString() {
  return 'ChatRoomDetailDto(roomId: $roomId, matchId: $matchId, matchNotice: $matchNotice, lastMessage: $lastMessage)';
}


}

/// @nodoc
abstract mixin class $ChatRoomDetailDtoCopyWith<$Res>  {
  factory $ChatRoomDetailDtoCopyWith(ChatRoomDetailDto value, $Res Function(ChatRoomDetailDto) _then) = _$ChatRoomDetailDtoCopyWithImpl;
@useResult
$Res call({
 int roomId, int matchId, MatchChatNoticeDto matchNotice, ChatMessageDto? lastMessage
});


$MatchChatNoticeDtoCopyWith<$Res> get matchNotice;$ChatMessageDtoCopyWith<$Res>? get lastMessage;

}
/// @nodoc
class _$ChatRoomDetailDtoCopyWithImpl<$Res>
    implements $ChatRoomDetailDtoCopyWith<$Res> {
  _$ChatRoomDetailDtoCopyWithImpl(this._self, this._then);

  final ChatRoomDetailDto _self;
  final $Res Function(ChatRoomDetailDto) _then;

/// Create a copy of ChatRoomDetailDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roomId = null,Object? matchId = null,Object? matchNotice = null,Object? lastMessage = freezed,}) {
  return _then(_self.copyWith(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,matchNotice: null == matchNotice ? _self.matchNotice : matchNotice // ignore: cast_nullable_to_non_nullable
as MatchChatNoticeDto,lastMessage: freezed == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as ChatMessageDto?,
  ));
}
/// Create a copy of ChatRoomDetailDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchChatNoticeDtoCopyWith<$Res> get matchNotice {
  
  return $MatchChatNoticeDtoCopyWith<$Res>(_self.matchNotice, (value) {
    return _then(_self.copyWith(matchNotice: value));
  });
}/// Create a copy of ChatRoomDetailDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatMessageDtoCopyWith<$Res>? get lastMessage {
    if (_self.lastMessage == null) {
    return null;
  }

  return $ChatMessageDtoCopyWith<$Res>(_self.lastMessage!, (value) {
    return _then(_self.copyWith(lastMessage: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatRoomDetailDto].
extension ChatRoomDetailDtoPatterns on ChatRoomDetailDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatRoomDetailDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatRoomDetailDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatRoomDetailDto value)  $default,){
final _that = this;
switch (_that) {
case _ChatRoomDetailDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatRoomDetailDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChatRoomDetailDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int roomId,  int matchId,  MatchChatNoticeDto matchNotice,  ChatMessageDto? lastMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatRoomDetailDto() when $default != null:
return $default(_that.roomId,_that.matchId,_that.matchNotice,_that.lastMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int roomId,  int matchId,  MatchChatNoticeDto matchNotice,  ChatMessageDto? lastMessage)  $default,) {final _that = this;
switch (_that) {
case _ChatRoomDetailDto():
return $default(_that.roomId,_that.matchId,_that.matchNotice,_that.lastMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int roomId,  int matchId,  MatchChatNoticeDto matchNotice,  ChatMessageDto? lastMessage)?  $default,) {final _that = this;
switch (_that) {
case _ChatRoomDetailDto() when $default != null:
return $default(_that.roomId,_that.matchId,_that.matchNotice,_that.lastMessage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatRoomDetailDto implements ChatRoomDetailDto {
  const _ChatRoomDetailDto({required this.roomId, required this.matchId, required this.matchNotice, this.lastMessage});
  factory _ChatRoomDetailDto.fromJson(Map<String, dynamic> json) => _$ChatRoomDetailDtoFromJson(json);

@override final  int roomId;
@override final  int matchId;
@override final  MatchChatNoticeDto matchNotice;
@override final  ChatMessageDto? lastMessage;

/// Create a copy of ChatRoomDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatRoomDetailDtoCopyWith<_ChatRoomDetailDto> get copyWith => __$ChatRoomDetailDtoCopyWithImpl<_ChatRoomDetailDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatRoomDetailDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatRoomDetailDto&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.matchNotice, matchNotice) || other.matchNotice == matchNotice)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roomId,matchId,matchNotice,lastMessage);

@override
String toString() {
  return 'ChatRoomDetailDto(roomId: $roomId, matchId: $matchId, matchNotice: $matchNotice, lastMessage: $lastMessage)';
}


}

/// @nodoc
abstract mixin class _$ChatRoomDetailDtoCopyWith<$Res> implements $ChatRoomDetailDtoCopyWith<$Res> {
  factory _$ChatRoomDetailDtoCopyWith(_ChatRoomDetailDto value, $Res Function(_ChatRoomDetailDto) _then) = __$ChatRoomDetailDtoCopyWithImpl;
@override @useResult
$Res call({
 int roomId, int matchId, MatchChatNoticeDto matchNotice, ChatMessageDto? lastMessage
});


@override $MatchChatNoticeDtoCopyWith<$Res> get matchNotice;@override $ChatMessageDtoCopyWith<$Res>? get lastMessage;

}
/// @nodoc
class __$ChatRoomDetailDtoCopyWithImpl<$Res>
    implements _$ChatRoomDetailDtoCopyWith<$Res> {
  __$ChatRoomDetailDtoCopyWithImpl(this._self, this._then);

  final _ChatRoomDetailDto _self;
  final $Res Function(_ChatRoomDetailDto) _then;

/// Create a copy of ChatRoomDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomId = null,Object? matchId = null,Object? matchNotice = null,Object? lastMessage = freezed,}) {
  return _then(_ChatRoomDetailDto(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,matchNotice: null == matchNotice ? _self.matchNotice : matchNotice // ignore: cast_nullable_to_non_nullable
as MatchChatNoticeDto,lastMessage: freezed == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as ChatMessageDto?,
  ));
}

/// Create a copy of ChatRoomDetailDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchChatNoticeDtoCopyWith<$Res> get matchNotice {
  
  return $MatchChatNoticeDtoCopyWith<$Res>(_self.matchNotice, (value) {
    return _then(_self.copyWith(matchNotice: value));
  });
}/// Create a copy of ChatRoomDetailDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatMessageDtoCopyWith<$Res>? get lastMessage {
    if (_self.lastMessage == null) {
    return null;
  }

  return $ChatMessageDtoCopyWith<$Res>(_self.lastMessage!, (value) {
    return _then(_self.copyWith(lastMessage: value));
  });
}
}


/// @nodoc
mixin _$ChatMessagePageDto {

 List<ChatMessageDto> get messages; int? get nextCursor;
/// Create a copy of ChatMessagePageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessagePageDtoCopyWith<ChatMessagePageDto> get copyWith => _$ChatMessagePageDtoCopyWithImpl<ChatMessagePageDto>(this as ChatMessagePageDto, _$identity);

  /// Serializes this ChatMessagePageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessagePageDto&&const DeepCollectionEquality().equals(other.messages, messages)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(messages),nextCursor);

@override
String toString() {
  return 'ChatMessagePageDto(messages: $messages, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class $ChatMessagePageDtoCopyWith<$Res>  {
  factory $ChatMessagePageDtoCopyWith(ChatMessagePageDto value, $Res Function(ChatMessagePageDto) _then) = _$ChatMessagePageDtoCopyWithImpl;
@useResult
$Res call({
 List<ChatMessageDto> messages, int? nextCursor
});




}
/// @nodoc
class _$ChatMessagePageDtoCopyWithImpl<$Res>
    implements $ChatMessagePageDtoCopyWith<$Res> {
  _$ChatMessagePageDtoCopyWithImpl(this._self, this._then);

  final ChatMessagePageDto _self;
  final $Res Function(ChatMessagePageDto) _then;

/// Create a copy of ChatMessagePageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,Object? nextCursor = freezed,}) {
  return _then(_self.copyWith(
messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessageDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatMessagePageDto].
extension ChatMessagePageDtoPatterns on ChatMessagePageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessagePageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessagePageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessagePageDto value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessagePageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessagePageDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessagePageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChatMessageDto> messages,  int? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessagePageDto() when $default != null:
return $default(_that.messages,_that.nextCursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChatMessageDto> messages,  int? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _ChatMessagePageDto():
return $default(_that.messages,_that.nextCursor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChatMessageDto> messages,  int? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessagePageDto() when $default != null:
return $default(_that.messages,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatMessagePageDto implements ChatMessagePageDto {
  const _ChatMessagePageDto({final  List<ChatMessageDto> messages = const <ChatMessageDto>[], this.nextCursor}): _messages = messages;
  factory _ChatMessagePageDto.fromJson(Map<String, dynamic> json) => _$ChatMessagePageDtoFromJson(json);

 final  List<ChatMessageDto> _messages;
@override@JsonKey() List<ChatMessageDto> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@override final  int? nextCursor;

/// Create a copy of ChatMessagePageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessagePageDtoCopyWith<_ChatMessagePageDto> get copyWith => __$ChatMessagePageDtoCopyWithImpl<_ChatMessagePageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatMessagePageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessagePageDto&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages),nextCursor);

@override
String toString() {
  return 'ChatMessagePageDto(messages: $messages, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$ChatMessagePageDtoCopyWith<$Res> implements $ChatMessagePageDtoCopyWith<$Res> {
  factory _$ChatMessagePageDtoCopyWith(_ChatMessagePageDto value, $Res Function(_ChatMessagePageDto) _then) = __$ChatMessagePageDtoCopyWithImpl;
@override @useResult
$Res call({
 List<ChatMessageDto> messages, int? nextCursor
});




}
/// @nodoc
class __$ChatMessagePageDtoCopyWithImpl<$Res>
    implements _$ChatMessagePageDtoCopyWith<$Res> {
  __$ChatMessagePageDtoCopyWithImpl(this._self, this._then);

  final _ChatMessagePageDto _self;
  final $Res Function(_ChatMessagePageDto) _then;

/// Create a copy of ChatMessagePageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messages = null,Object? nextCursor = freezed,}) {
  return _then(_ChatMessagePageDto(
messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessageDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$ChatMessageSendRequestDto {

 String get content; String get messageType;
/// Create a copy of ChatMessageSendRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessageSendRequestDtoCopyWith<ChatMessageSendRequestDto> get copyWith => _$ChatMessageSendRequestDtoCopyWithImpl<ChatMessageSendRequestDto>(this as ChatMessageSendRequestDto, _$identity);

  /// Serializes this ChatMessageSendRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessageSendRequestDto&&(identical(other.content, content) || other.content == content)&&(identical(other.messageType, messageType) || other.messageType == messageType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,messageType);

@override
String toString() {
  return 'ChatMessageSendRequestDto(content: $content, messageType: $messageType)';
}


}

/// @nodoc
abstract mixin class $ChatMessageSendRequestDtoCopyWith<$Res>  {
  factory $ChatMessageSendRequestDtoCopyWith(ChatMessageSendRequestDto value, $Res Function(ChatMessageSendRequestDto) _then) = _$ChatMessageSendRequestDtoCopyWithImpl;
@useResult
$Res call({
 String content, String messageType
});




}
/// @nodoc
class _$ChatMessageSendRequestDtoCopyWithImpl<$Res>
    implements $ChatMessageSendRequestDtoCopyWith<$Res> {
  _$ChatMessageSendRequestDtoCopyWithImpl(this._self, this._then);

  final ChatMessageSendRequestDto _self;
  final $Res Function(ChatMessageSendRequestDto) _then;

/// Create a copy of ChatMessageSendRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? messageType = null,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,messageType: null == messageType ? _self.messageType : messageType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatMessageSendRequestDto].
extension ChatMessageSendRequestDtoPatterns on ChatMessageSendRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessageSendRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessageSendRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessageSendRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessageSendRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessageSendRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessageSendRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String content,  String messageType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessageSendRequestDto() when $default != null:
return $default(_that.content,_that.messageType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String content,  String messageType)  $default,) {final _that = this;
switch (_that) {
case _ChatMessageSendRequestDto():
return $default(_that.content,_that.messageType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String content,  String messageType)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessageSendRequestDto() when $default != null:
return $default(_that.content,_that.messageType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatMessageSendRequestDto implements ChatMessageSendRequestDto {
  const _ChatMessageSendRequestDto({required this.content, this.messageType = 'TEXT'});
  factory _ChatMessageSendRequestDto.fromJson(Map<String, dynamic> json) => _$ChatMessageSendRequestDtoFromJson(json);

@override final  String content;
@override@JsonKey() final  String messageType;

/// Create a copy of ChatMessageSendRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessageSendRequestDtoCopyWith<_ChatMessageSendRequestDto> get copyWith => __$ChatMessageSendRequestDtoCopyWithImpl<_ChatMessageSendRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatMessageSendRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessageSendRequestDto&&(identical(other.content, content) || other.content == content)&&(identical(other.messageType, messageType) || other.messageType == messageType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,messageType);

@override
String toString() {
  return 'ChatMessageSendRequestDto(content: $content, messageType: $messageType)';
}


}

/// @nodoc
abstract mixin class _$ChatMessageSendRequestDtoCopyWith<$Res> implements $ChatMessageSendRequestDtoCopyWith<$Res> {
  factory _$ChatMessageSendRequestDtoCopyWith(_ChatMessageSendRequestDto value, $Res Function(_ChatMessageSendRequestDto) _then) = __$ChatMessageSendRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String content, String messageType
});




}
/// @nodoc
class __$ChatMessageSendRequestDtoCopyWithImpl<$Res>
    implements _$ChatMessageSendRequestDtoCopyWith<$Res> {
  __$ChatMessageSendRequestDtoCopyWithImpl(this._self, this._then);

  final _ChatMessageSendRequestDto _self;
  final $Res Function(_ChatMessageSendRequestDto) _then;

/// Create a copy of ChatMessageSendRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? messageType = null,}) {
  return _then(_ChatMessageSendRequestDto(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,messageType: null == messageType ? _self.messageType : messageType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ChatMessagePatchRequestDto {

 String get content;
/// Create a copy of ChatMessagePatchRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessagePatchRequestDtoCopyWith<ChatMessagePatchRequestDto> get copyWith => _$ChatMessagePatchRequestDtoCopyWithImpl<ChatMessagePatchRequestDto>(this as ChatMessagePatchRequestDto, _$identity);

  /// Serializes this ChatMessagePatchRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessagePatchRequestDto&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content);

@override
String toString() {
  return 'ChatMessagePatchRequestDto(content: $content)';
}


}

/// @nodoc
abstract mixin class $ChatMessagePatchRequestDtoCopyWith<$Res>  {
  factory $ChatMessagePatchRequestDtoCopyWith(ChatMessagePatchRequestDto value, $Res Function(ChatMessagePatchRequestDto) _then) = _$ChatMessagePatchRequestDtoCopyWithImpl;
@useResult
$Res call({
 String content
});




}
/// @nodoc
class _$ChatMessagePatchRequestDtoCopyWithImpl<$Res>
    implements $ChatMessagePatchRequestDtoCopyWith<$Res> {
  _$ChatMessagePatchRequestDtoCopyWithImpl(this._self, this._then);

  final ChatMessagePatchRequestDto _self;
  final $Res Function(ChatMessagePatchRequestDto) _then;

/// Create a copy of ChatMessagePatchRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatMessagePatchRequestDto].
extension ChatMessagePatchRequestDtoPatterns on ChatMessagePatchRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessagePatchRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessagePatchRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessagePatchRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessagePatchRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessagePatchRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessagePatchRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessagePatchRequestDto() when $default != null:
return $default(_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String content)  $default,) {final _that = this;
switch (_that) {
case _ChatMessagePatchRequestDto():
return $default(_that.content);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String content)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessagePatchRequestDto() when $default != null:
return $default(_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatMessagePatchRequestDto implements ChatMessagePatchRequestDto {
  const _ChatMessagePatchRequestDto({required this.content});
  factory _ChatMessagePatchRequestDto.fromJson(Map<String, dynamic> json) => _$ChatMessagePatchRequestDtoFromJson(json);

@override final  String content;

/// Create a copy of ChatMessagePatchRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessagePatchRequestDtoCopyWith<_ChatMessagePatchRequestDto> get copyWith => __$ChatMessagePatchRequestDtoCopyWithImpl<_ChatMessagePatchRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatMessagePatchRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessagePatchRequestDto&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content);

@override
String toString() {
  return 'ChatMessagePatchRequestDto(content: $content)';
}


}

/// @nodoc
abstract mixin class _$ChatMessagePatchRequestDtoCopyWith<$Res> implements $ChatMessagePatchRequestDtoCopyWith<$Res> {
  factory _$ChatMessagePatchRequestDtoCopyWith(_ChatMessagePatchRequestDto value, $Res Function(_ChatMessagePatchRequestDto) _then) = __$ChatMessagePatchRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String content
});




}
/// @nodoc
class __$ChatMessagePatchRequestDtoCopyWithImpl<$Res>
    implements _$ChatMessagePatchRequestDtoCopyWith<$Res> {
  __$ChatMessagePatchRequestDtoCopyWithImpl(this._self, this._then);

  final _ChatMessagePatchRequestDto _self;
  final $Res Function(_ChatMessagePatchRequestDto) _then;

/// Create a copy of ChatMessagePatchRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,}) {
  return _then(_ChatMessagePatchRequestDto(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ChatRoomPageEnvelope {

 bool get success; ChatRoomPageDto? get data; String? get message; String? get code;
/// Create a copy of ChatRoomPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatRoomPageEnvelopeCopyWith<ChatRoomPageEnvelope> get copyWith => _$ChatRoomPageEnvelopeCopyWithImpl<ChatRoomPageEnvelope>(this as ChatRoomPageEnvelope, _$identity);

  /// Serializes this ChatRoomPageEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatRoomPageEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'ChatRoomPageEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $ChatRoomPageEnvelopeCopyWith<$Res>  {
  factory $ChatRoomPageEnvelopeCopyWith(ChatRoomPageEnvelope value, $Res Function(ChatRoomPageEnvelope) _then) = _$ChatRoomPageEnvelopeCopyWithImpl;
@useResult
$Res call({
 bool success, ChatRoomPageDto? data, String? message, String? code
});


$ChatRoomPageDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$ChatRoomPageEnvelopeCopyWithImpl<$Res>
    implements $ChatRoomPageEnvelopeCopyWith<$Res> {
  _$ChatRoomPageEnvelopeCopyWithImpl(this._self, this._then);

  final ChatRoomPageEnvelope _self;
  final $Res Function(ChatRoomPageEnvelope) _then;

/// Create a copy of ChatRoomPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ChatRoomPageDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ChatRoomPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatRoomPageDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ChatRoomPageDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatRoomPageEnvelope].
extension ChatRoomPageEnvelopePatterns on ChatRoomPageEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatRoomPageEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatRoomPageEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatRoomPageEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _ChatRoomPageEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatRoomPageEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _ChatRoomPageEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  ChatRoomPageDto? data,  String? message,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatRoomPageEnvelope() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  ChatRoomPageDto? data,  String? message,  String? code)  $default,) {final _that = this;
switch (_that) {
case _ChatRoomPageEnvelope():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  ChatRoomPageDto? data,  String? message,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _ChatRoomPageEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatRoomPageEnvelope implements ChatRoomPageEnvelope {
  const _ChatRoomPageEnvelope({required this.success, this.data, this.message, this.code});
  factory _ChatRoomPageEnvelope.fromJson(Map<String, dynamic> json) => _$ChatRoomPageEnvelopeFromJson(json);

@override final  bool success;
@override final  ChatRoomPageDto? data;
@override final  String? message;
@override final  String? code;

/// Create a copy of ChatRoomPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatRoomPageEnvelopeCopyWith<_ChatRoomPageEnvelope> get copyWith => __$ChatRoomPageEnvelopeCopyWithImpl<_ChatRoomPageEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatRoomPageEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatRoomPageEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'ChatRoomPageEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$ChatRoomPageEnvelopeCopyWith<$Res> implements $ChatRoomPageEnvelopeCopyWith<$Res> {
  factory _$ChatRoomPageEnvelopeCopyWith(_ChatRoomPageEnvelope value, $Res Function(_ChatRoomPageEnvelope) _then) = __$ChatRoomPageEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 bool success, ChatRoomPageDto? data, String? message, String? code
});


@override $ChatRoomPageDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$ChatRoomPageEnvelopeCopyWithImpl<$Res>
    implements _$ChatRoomPageEnvelopeCopyWith<$Res> {
  __$ChatRoomPageEnvelopeCopyWithImpl(this._self, this._then);

  final _ChatRoomPageEnvelope _self;
  final $Res Function(_ChatRoomPageEnvelope) _then;

/// Create a copy of ChatRoomPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_ChatRoomPageEnvelope(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ChatRoomPageDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ChatRoomPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatRoomPageDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ChatRoomPageDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ChatRoomDetailEnvelope {

 bool get success; ChatRoomDetailDto? get data; String? get message; String? get code;
/// Create a copy of ChatRoomDetailEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatRoomDetailEnvelopeCopyWith<ChatRoomDetailEnvelope> get copyWith => _$ChatRoomDetailEnvelopeCopyWithImpl<ChatRoomDetailEnvelope>(this as ChatRoomDetailEnvelope, _$identity);

  /// Serializes this ChatRoomDetailEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatRoomDetailEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'ChatRoomDetailEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $ChatRoomDetailEnvelopeCopyWith<$Res>  {
  factory $ChatRoomDetailEnvelopeCopyWith(ChatRoomDetailEnvelope value, $Res Function(ChatRoomDetailEnvelope) _then) = _$ChatRoomDetailEnvelopeCopyWithImpl;
@useResult
$Res call({
 bool success, ChatRoomDetailDto? data, String? message, String? code
});


$ChatRoomDetailDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$ChatRoomDetailEnvelopeCopyWithImpl<$Res>
    implements $ChatRoomDetailEnvelopeCopyWith<$Res> {
  _$ChatRoomDetailEnvelopeCopyWithImpl(this._self, this._then);

  final ChatRoomDetailEnvelope _self;
  final $Res Function(ChatRoomDetailEnvelope) _then;

/// Create a copy of ChatRoomDetailEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ChatRoomDetailDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ChatRoomDetailEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatRoomDetailDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ChatRoomDetailDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatRoomDetailEnvelope].
extension ChatRoomDetailEnvelopePatterns on ChatRoomDetailEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatRoomDetailEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatRoomDetailEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatRoomDetailEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _ChatRoomDetailEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatRoomDetailEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _ChatRoomDetailEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  ChatRoomDetailDto? data,  String? message,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatRoomDetailEnvelope() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  ChatRoomDetailDto? data,  String? message,  String? code)  $default,) {final _that = this;
switch (_that) {
case _ChatRoomDetailEnvelope():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  ChatRoomDetailDto? data,  String? message,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _ChatRoomDetailEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatRoomDetailEnvelope implements ChatRoomDetailEnvelope {
  const _ChatRoomDetailEnvelope({required this.success, this.data, this.message, this.code});
  factory _ChatRoomDetailEnvelope.fromJson(Map<String, dynamic> json) => _$ChatRoomDetailEnvelopeFromJson(json);

@override final  bool success;
@override final  ChatRoomDetailDto? data;
@override final  String? message;
@override final  String? code;

/// Create a copy of ChatRoomDetailEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatRoomDetailEnvelopeCopyWith<_ChatRoomDetailEnvelope> get copyWith => __$ChatRoomDetailEnvelopeCopyWithImpl<_ChatRoomDetailEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatRoomDetailEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatRoomDetailEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'ChatRoomDetailEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$ChatRoomDetailEnvelopeCopyWith<$Res> implements $ChatRoomDetailEnvelopeCopyWith<$Res> {
  factory _$ChatRoomDetailEnvelopeCopyWith(_ChatRoomDetailEnvelope value, $Res Function(_ChatRoomDetailEnvelope) _then) = __$ChatRoomDetailEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 bool success, ChatRoomDetailDto? data, String? message, String? code
});


@override $ChatRoomDetailDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$ChatRoomDetailEnvelopeCopyWithImpl<$Res>
    implements _$ChatRoomDetailEnvelopeCopyWith<$Res> {
  __$ChatRoomDetailEnvelopeCopyWithImpl(this._self, this._then);

  final _ChatRoomDetailEnvelope _self;
  final $Res Function(_ChatRoomDetailEnvelope) _then;

/// Create a copy of ChatRoomDetailEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_ChatRoomDetailEnvelope(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ChatRoomDetailDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ChatRoomDetailEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatRoomDetailDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ChatRoomDetailDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ChatMessagePageEnvelope {

 bool get success; ChatMessagePageDto? get data; String? get message; String? get code;
/// Create a copy of ChatMessagePageEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessagePageEnvelopeCopyWith<ChatMessagePageEnvelope> get copyWith => _$ChatMessagePageEnvelopeCopyWithImpl<ChatMessagePageEnvelope>(this as ChatMessagePageEnvelope, _$identity);

  /// Serializes this ChatMessagePageEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessagePageEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'ChatMessagePageEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $ChatMessagePageEnvelopeCopyWith<$Res>  {
  factory $ChatMessagePageEnvelopeCopyWith(ChatMessagePageEnvelope value, $Res Function(ChatMessagePageEnvelope) _then) = _$ChatMessagePageEnvelopeCopyWithImpl;
@useResult
$Res call({
 bool success, ChatMessagePageDto? data, String? message, String? code
});


$ChatMessagePageDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$ChatMessagePageEnvelopeCopyWithImpl<$Res>
    implements $ChatMessagePageEnvelopeCopyWith<$Res> {
  _$ChatMessagePageEnvelopeCopyWithImpl(this._self, this._then);

  final ChatMessagePageEnvelope _self;
  final $Res Function(ChatMessagePageEnvelope) _then;

/// Create a copy of ChatMessagePageEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ChatMessagePageDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ChatMessagePageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatMessagePageDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ChatMessagePageDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatMessagePageEnvelope].
extension ChatMessagePageEnvelopePatterns on ChatMessagePageEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessagePageEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessagePageEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessagePageEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessagePageEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessagePageEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessagePageEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  ChatMessagePageDto? data,  String? message,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessagePageEnvelope() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  ChatMessagePageDto? data,  String? message,  String? code)  $default,) {final _that = this;
switch (_that) {
case _ChatMessagePageEnvelope():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  ChatMessagePageDto? data,  String? message,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessagePageEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatMessagePageEnvelope implements ChatMessagePageEnvelope {
  const _ChatMessagePageEnvelope({required this.success, this.data, this.message, this.code});
  factory _ChatMessagePageEnvelope.fromJson(Map<String, dynamic> json) => _$ChatMessagePageEnvelopeFromJson(json);

@override final  bool success;
@override final  ChatMessagePageDto? data;
@override final  String? message;
@override final  String? code;

/// Create a copy of ChatMessagePageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessagePageEnvelopeCopyWith<_ChatMessagePageEnvelope> get copyWith => __$ChatMessagePageEnvelopeCopyWithImpl<_ChatMessagePageEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatMessagePageEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessagePageEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'ChatMessagePageEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$ChatMessagePageEnvelopeCopyWith<$Res> implements $ChatMessagePageEnvelopeCopyWith<$Res> {
  factory _$ChatMessagePageEnvelopeCopyWith(_ChatMessagePageEnvelope value, $Res Function(_ChatMessagePageEnvelope) _then) = __$ChatMessagePageEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 bool success, ChatMessagePageDto? data, String? message, String? code
});


@override $ChatMessagePageDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$ChatMessagePageEnvelopeCopyWithImpl<$Res>
    implements _$ChatMessagePageEnvelopeCopyWith<$Res> {
  __$ChatMessagePageEnvelopeCopyWithImpl(this._self, this._then);

  final _ChatMessagePageEnvelope _self;
  final $Res Function(_ChatMessagePageEnvelope) _then;

/// Create a copy of ChatMessagePageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_ChatMessagePageEnvelope(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ChatMessagePageDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ChatMessagePageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatMessagePageDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ChatMessagePageDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ChatMessageEnvelope {

 bool get success; ChatMessageDto? get data; String? get message; String? get code;
/// Create a copy of ChatMessageEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessageEnvelopeCopyWith<ChatMessageEnvelope> get copyWith => _$ChatMessageEnvelopeCopyWithImpl<ChatMessageEnvelope>(this as ChatMessageEnvelope, _$identity);

  /// Serializes this ChatMessageEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessageEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'ChatMessageEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $ChatMessageEnvelopeCopyWith<$Res>  {
  factory $ChatMessageEnvelopeCopyWith(ChatMessageEnvelope value, $Res Function(ChatMessageEnvelope) _then) = _$ChatMessageEnvelopeCopyWithImpl;
@useResult
$Res call({
 bool success, ChatMessageDto? data, String? message, String? code
});


$ChatMessageDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$ChatMessageEnvelopeCopyWithImpl<$Res>
    implements $ChatMessageEnvelopeCopyWith<$Res> {
  _$ChatMessageEnvelopeCopyWithImpl(this._self, this._then);

  final ChatMessageEnvelope _self;
  final $Res Function(ChatMessageEnvelope) _then;

/// Create a copy of ChatMessageEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ChatMessageDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ChatMessageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatMessageDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ChatMessageDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatMessageEnvelope].
extension ChatMessageEnvelopePatterns on ChatMessageEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessageEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessageEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessageEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessageEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessageEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessageEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  ChatMessageDto? data,  String? message,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessageEnvelope() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  ChatMessageDto? data,  String? message,  String? code)  $default,) {final _that = this;
switch (_that) {
case _ChatMessageEnvelope():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  ChatMessageDto? data,  String? message,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessageEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatMessageEnvelope implements ChatMessageEnvelope {
  const _ChatMessageEnvelope({required this.success, this.data, this.message, this.code});
  factory _ChatMessageEnvelope.fromJson(Map<String, dynamic> json) => _$ChatMessageEnvelopeFromJson(json);

@override final  bool success;
@override final  ChatMessageDto? data;
@override final  String? message;
@override final  String? code;

/// Create a copy of ChatMessageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessageEnvelopeCopyWith<_ChatMessageEnvelope> get copyWith => __$ChatMessageEnvelopeCopyWithImpl<_ChatMessageEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatMessageEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessageEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'ChatMessageEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$ChatMessageEnvelopeCopyWith<$Res> implements $ChatMessageEnvelopeCopyWith<$Res> {
  factory _$ChatMessageEnvelopeCopyWith(_ChatMessageEnvelope value, $Res Function(_ChatMessageEnvelope) _then) = __$ChatMessageEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 bool success, ChatMessageDto? data, String? message, String? code
});


@override $ChatMessageDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$ChatMessageEnvelopeCopyWithImpl<$Res>
    implements _$ChatMessageEnvelopeCopyWith<$Res> {
  __$ChatMessageEnvelopeCopyWithImpl(this._self, this._then);

  final _ChatMessageEnvelope _self;
  final $Res Function(_ChatMessageEnvelope) _then;

/// Create a copy of ChatMessageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_ChatMessageEnvelope(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ChatMessageDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ChatMessageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatMessageDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ChatMessageDtoCopyWith<$Res>(_self.data!, (value) {
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

// dart format on
