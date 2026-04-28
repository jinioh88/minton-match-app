// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationItemDto {

 int get notificationId; String get type; String get title; String? get body; String? get payload; int? get relatedMatchId; int? get relatedParticipantId; String? get readAt; String get createdAt;
/// Create a copy of NotificationItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationItemDtoCopyWith<NotificationItemDto> get copyWith => _$NotificationItemDtoCopyWithImpl<NotificationItemDto>(this as NotificationItemDto, _$identity);

  /// Serializes this NotificationItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationItemDto&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.relatedMatchId, relatedMatchId) || other.relatedMatchId == relatedMatchId)&&(identical(other.relatedParticipantId, relatedParticipantId) || other.relatedParticipantId == relatedParticipantId)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,notificationId,type,title,body,payload,relatedMatchId,relatedParticipantId,readAt,createdAt);

@override
String toString() {
  return 'NotificationItemDto(notificationId: $notificationId, type: $type, title: $title, body: $body, payload: $payload, relatedMatchId: $relatedMatchId, relatedParticipantId: $relatedParticipantId, readAt: $readAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $NotificationItemDtoCopyWith<$Res>  {
  factory $NotificationItemDtoCopyWith(NotificationItemDto value, $Res Function(NotificationItemDto) _then) = _$NotificationItemDtoCopyWithImpl;
@useResult
$Res call({
 int notificationId, String type, String title, String? body, String? payload, int? relatedMatchId, int? relatedParticipantId, String? readAt, String createdAt
});




}
/// @nodoc
class _$NotificationItemDtoCopyWithImpl<$Res>
    implements $NotificationItemDtoCopyWith<$Res> {
  _$NotificationItemDtoCopyWithImpl(this._self, this._then);

  final NotificationItemDto _self;
  final $Res Function(NotificationItemDto) _then;

/// Create a copy of NotificationItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notificationId = null,Object? type = null,Object? title = null,Object? body = freezed,Object? payload = freezed,Object? relatedMatchId = freezed,Object? relatedParticipantId = freezed,Object? readAt = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
notificationId: null == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String?,relatedMatchId: freezed == relatedMatchId ? _self.relatedMatchId : relatedMatchId // ignore: cast_nullable_to_non_nullable
as int?,relatedParticipantId: freezed == relatedParticipantId ? _self.relatedParticipantId : relatedParticipantId // ignore: cast_nullable_to_non_nullable
as int?,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationItemDto].
extension NotificationItemDtoPatterns on NotificationItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationItemDto value)  $default,){
final _that = this;
switch (_that) {
case _NotificationItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int notificationId,  String type,  String title,  String? body,  String? payload,  int? relatedMatchId,  int? relatedParticipantId,  String? readAt,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationItemDto() when $default != null:
return $default(_that.notificationId,_that.type,_that.title,_that.body,_that.payload,_that.relatedMatchId,_that.relatedParticipantId,_that.readAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int notificationId,  String type,  String title,  String? body,  String? payload,  int? relatedMatchId,  int? relatedParticipantId,  String? readAt,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _NotificationItemDto():
return $default(_that.notificationId,_that.type,_that.title,_that.body,_that.payload,_that.relatedMatchId,_that.relatedParticipantId,_that.readAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int notificationId,  String type,  String title,  String? body,  String? payload,  int? relatedMatchId,  int? relatedParticipantId,  String? readAt,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _NotificationItemDto() when $default != null:
return $default(_that.notificationId,_that.type,_that.title,_that.body,_that.payload,_that.relatedMatchId,_that.relatedParticipantId,_that.readAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationItemDto implements NotificationItemDto {
  const _NotificationItemDto({required this.notificationId, required this.type, required this.title, this.body, this.payload, this.relatedMatchId, this.relatedParticipantId, this.readAt, required this.createdAt});
  factory _NotificationItemDto.fromJson(Map<String, dynamic> json) => _$NotificationItemDtoFromJson(json);

@override final  int notificationId;
@override final  String type;
@override final  String title;
@override final  String? body;
@override final  String? payload;
@override final  int? relatedMatchId;
@override final  int? relatedParticipantId;
@override final  String? readAt;
@override final  String createdAt;

/// Create a copy of NotificationItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationItemDtoCopyWith<_NotificationItemDto> get copyWith => __$NotificationItemDtoCopyWithImpl<_NotificationItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationItemDto&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.relatedMatchId, relatedMatchId) || other.relatedMatchId == relatedMatchId)&&(identical(other.relatedParticipantId, relatedParticipantId) || other.relatedParticipantId == relatedParticipantId)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,notificationId,type,title,body,payload,relatedMatchId,relatedParticipantId,readAt,createdAt);

@override
String toString() {
  return 'NotificationItemDto(notificationId: $notificationId, type: $type, title: $title, body: $body, payload: $payload, relatedMatchId: $relatedMatchId, relatedParticipantId: $relatedParticipantId, readAt: $readAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$NotificationItemDtoCopyWith<$Res> implements $NotificationItemDtoCopyWith<$Res> {
  factory _$NotificationItemDtoCopyWith(_NotificationItemDto value, $Res Function(_NotificationItemDto) _then) = __$NotificationItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int notificationId, String type, String title, String? body, String? payload, int? relatedMatchId, int? relatedParticipantId, String? readAt, String createdAt
});




}
/// @nodoc
class __$NotificationItemDtoCopyWithImpl<$Res>
    implements _$NotificationItemDtoCopyWith<$Res> {
  __$NotificationItemDtoCopyWithImpl(this._self, this._then);

  final _NotificationItemDto _self;
  final $Res Function(_NotificationItemDto) _then;

/// Create a copy of NotificationItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? notificationId = null,Object? type = null,Object? title = null,Object? body = freezed,Object? payload = freezed,Object? relatedMatchId = freezed,Object? relatedParticipantId = freezed,Object? readAt = freezed,Object? createdAt = null,}) {
  return _then(_NotificationItemDto(
notificationId: null == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String?,relatedMatchId: freezed == relatedMatchId ? _self.relatedMatchId : relatedMatchId // ignore: cast_nullable_to_non_nullable
as int?,relatedParticipantId: freezed == relatedParticipantId ? _self.relatedParticipantId : relatedParticipantId // ignore: cast_nullable_to_non_nullable
as int?,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$NotificationPageDto {

 List<NotificationItemDto> get content; int? get totalElements; int? get totalPages; int? get size; int? get number;
/// Create a copy of NotificationPageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationPageDtoCopyWith<NotificationPageDto> get copyWith => _$NotificationPageDtoCopyWithImpl<NotificationPageDto>(this as NotificationPageDto, _$identity);

  /// Serializes this NotificationPageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPageDto&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.size, size) || other.size == size)&&(identical(other.number, number) || other.number == number));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(content),totalElements,totalPages,size,number);

@override
String toString() {
  return 'NotificationPageDto(content: $content, totalElements: $totalElements, totalPages: $totalPages, size: $size, number: $number)';
}


}

/// @nodoc
abstract mixin class $NotificationPageDtoCopyWith<$Res>  {
  factory $NotificationPageDtoCopyWith(NotificationPageDto value, $Res Function(NotificationPageDto) _then) = _$NotificationPageDtoCopyWithImpl;
@useResult
$Res call({
 List<NotificationItemDto> content, int? totalElements, int? totalPages, int? size, int? number
});




}
/// @nodoc
class _$NotificationPageDtoCopyWithImpl<$Res>
    implements $NotificationPageDtoCopyWith<$Res> {
  _$NotificationPageDtoCopyWithImpl(this._self, this._then);

  final NotificationPageDto _self;
  final $Res Function(NotificationPageDto) _then;

/// Create a copy of NotificationPageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? totalElements = freezed,Object? totalPages = freezed,Object? size = freezed,Object? number = freezed,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as List<NotificationItemDto>,totalElements: freezed == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationPageDto].
extension NotificationPageDtoPatterns on NotificationPageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationPageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationPageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationPageDto value)  $default,){
final _that = this;
switch (_that) {
case _NotificationPageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationPageDto value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationPageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<NotificationItemDto> content,  int? totalElements,  int? totalPages,  int? size,  int? number)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationPageDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<NotificationItemDto> content,  int? totalElements,  int? totalPages,  int? size,  int? number)  $default,) {final _that = this;
switch (_that) {
case _NotificationPageDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<NotificationItemDto> content,  int? totalElements,  int? totalPages,  int? size,  int? number)?  $default,) {final _that = this;
switch (_that) {
case _NotificationPageDto() when $default != null:
return $default(_that.content,_that.totalElements,_that.totalPages,_that.size,_that.number);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationPageDto implements NotificationPageDto {
  const _NotificationPageDto({final  List<NotificationItemDto> content = const <NotificationItemDto>[], this.totalElements, this.totalPages, this.size, this.number}): _content = content;
  factory _NotificationPageDto.fromJson(Map<String, dynamic> json) => _$NotificationPageDtoFromJson(json);

 final  List<NotificationItemDto> _content;
@override@JsonKey() List<NotificationItemDto> get content {
  if (_content is EqualUnmodifiableListView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_content);
}

@override final  int? totalElements;
@override final  int? totalPages;
@override final  int? size;
@override final  int? number;

/// Create a copy of NotificationPageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationPageDtoCopyWith<_NotificationPageDto> get copyWith => __$NotificationPageDtoCopyWithImpl<_NotificationPageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationPageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationPageDto&&const DeepCollectionEquality().equals(other._content, _content)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.size, size) || other.size == size)&&(identical(other.number, number) || other.number == number));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_content),totalElements,totalPages,size,number);

@override
String toString() {
  return 'NotificationPageDto(content: $content, totalElements: $totalElements, totalPages: $totalPages, size: $size, number: $number)';
}


}

/// @nodoc
abstract mixin class _$NotificationPageDtoCopyWith<$Res> implements $NotificationPageDtoCopyWith<$Res> {
  factory _$NotificationPageDtoCopyWith(_NotificationPageDto value, $Res Function(_NotificationPageDto) _then) = __$NotificationPageDtoCopyWithImpl;
@override @useResult
$Res call({
 List<NotificationItemDto> content, int? totalElements, int? totalPages, int? size, int? number
});




}
/// @nodoc
class __$NotificationPageDtoCopyWithImpl<$Res>
    implements _$NotificationPageDtoCopyWith<$Res> {
  __$NotificationPageDtoCopyWithImpl(this._self, this._then);

  final _NotificationPageDto _self;
  final $Res Function(_NotificationPageDto) _then;

/// Create a copy of NotificationPageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? totalElements = freezed,Object? totalPages = freezed,Object? size = freezed,Object? number = freezed,}) {
  return _then(_NotificationPageDto(
content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<NotificationItemDto>,totalElements: freezed == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$NotificationPageEnvelope {

 bool get success; NotificationPageDto? get data; String? get message; String? get code;
/// Create a copy of NotificationPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationPageEnvelopeCopyWith<NotificationPageEnvelope> get copyWith => _$NotificationPageEnvelopeCopyWithImpl<NotificationPageEnvelope>(this as NotificationPageEnvelope, _$identity);

  /// Serializes this NotificationPageEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPageEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'NotificationPageEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $NotificationPageEnvelopeCopyWith<$Res>  {
  factory $NotificationPageEnvelopeCopyWith(NotificationPageEnvelope value, $Res Function(NotificationPageEnvelope) _then) = _$NotificationPageEnvelopeCopyWithImpl;
@useResult
$Res call({
 bool success, NotificationPageDto? data, String? message, String? code
});


$NotificationPageDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$NotificationPageEnvelopeCopyWithImpl<$Res>
    implements $NotificationPageEnvelopeCopyWith<$Res> {
  _$NotificationPageEnvelopeCopyWithImpl(this._self, this._then);

  final NotificationPageEnvelope _self;
  final $Res Function(NotificationPageEnvelope) _then;

/// Create a copy of NotificationPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NotificationPageDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of NotificationPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationPageDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $NotificationPageDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [NotificationPageEnvelope].
extension NotificationPageEnvelopePatterns on NotificationPageEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationPageEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationPageEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationPageEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _NotificationPageEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationPageEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationPageEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  NotificationPageDto? data,  String? message,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationPageEnvelope() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  NotificationPageDto? data,  String? message,  String? code)  $default,) {final _that = this;
switch (_that) {
case _NotificationPageEnvelope():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  NotificationPageDto? data,  String? message,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _NotificationPageEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationPageEnvelope implements NotificationPageEnvelope {
  const _NotificationPageEnvelope({required this.success, this.data, this.message, this.code});
  factory _NotificationPageEnvelope.fromJson(Map<String, dynamic> json) => _$NotificationPageEnvelopeFromJson(json);

@override final  bool success;
@override final  NotificationPageDto? data;
@override final  String? message;
@override final  String? code;

/// Create a copy of NotificationPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationPageEnvelopeCopyWith<_NotificationPageEnvelope> get copyWith => __$NotificationPageEnvelopeCopyWithImpl<_NotificationPageEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationPageEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationPageEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'NotificationPageEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$NotificationPageEnvelopeCopyWith<$Res> implements $NotificationPageEnvelopeCopyWith<$Res> {
  factory _$NotificationPageEnvelopeCopyWith(_NotificationPageEnvelope value, $Res Function(_NotificationPageEnvelope) _then) = __$NotificationPageEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 bool success, NotificationPageDto? data, String? message, String? code
});


@override $NotificationPageDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$NotificationPageEnvelopeCopyWithImpl<$Res>
    implements _$NotificationPageEnvelopeCopyWith<$Res> {
  __$NotificationPageEnvelopeCopyWithImpl(this._self, this._then);

  final _NotificationPageEnvelope _self;
  final $Res Function(_NotificationPageEnvelope) _then;

/// Create a copy of NotificationPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_NotificationPageEnvelope(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NotificationPageDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of NotificationPageEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationPageDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $NotificationPageDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$UnreadCountEnvelope {

 bool get success; int? get data; String? get message; String? get code;
/// Create a copy of UnreadCountEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnreadCountEnvelopeCopyWith<UnreadCountEnvelope> get copyWith => _$UnreadCountEnvelopeCopyWithImpl<UnreadCountEnvelope>(this as UnreadCountEnvelope, _$identity);

  /// Serializes this UnreadCountEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnreadCountEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'UnreadCountEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $UnreadCountEnvelopeCopyWith<$Res>  {
  factory $UnreadCountEnvelopeCopyWith(UnreadCountEnvelope value, $Res Function(UnreadCountEnvelope) _then) = _$UnreadCountEnvelopeCopyWithImpl;
@useResult
$Res call({
 bool success, int? data, String? message, String? code
});




}
/// @nodoc
class _$UnreadCountEnvelopeCopyWithImpl<$Res>
    implements $UnreadCountEnvelopeCopyWith<$Res> {
  _$UnreadCountEnvelopeCopyWithImpl(this._self, this._then);

  final UnreadCountEnvelope _self;
  final $Res Function(UnreadCountEnvelope) _then;

/// Create a copy of UnreadCountEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UnreadCountEnvelope].
extension UnreadCountEnvelopePatterns on UnreadCountEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UnreadCountEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnreadCountEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UnreadCountEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _UnreadCountEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UnreadCountEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _UnreadCountEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  int? data,  String? message,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnreadCountEnvelope() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  int? data,  String? message,  String? code)  $default,) {final _that = this;
switch (_that) {
case _UnreadCountEnvelope():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  int? data,  String? message,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _UnreadCountEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UnreadCountEnvelope implements UnreadCountEnvelope {
  const _UnreadCountEnvelope({required this.success, this.data, this.message, this.code});
  factory _UnreadCountEnvelope.fromJson(Map<String, dynamic> json) => _$UnreadCountEnvelopeFromJson(json);

@override final  bool success;
@override final  int? data;
@override final  String? message;
@override final  String? code;

/// Create a copy of UnreadCountEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnreadCountEnvelopeCopyWith<_UnreadCountEnvelope> get copyWith => __$UnreadCountEnvelopeCopyWithImpl<_UnreadCountEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnreadCountEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnreadCountEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'UnreadCountEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$UnreadCountEnvelopeCopyWith<$Res> implements $UnreadCountEnvelopeCopyWith<$Res> {
  factory _$UnreadCountEnvelopeCopyWith(_UnreadCountEnvelope value, $Res Function(_UnreadCountEnvelope) _then) = __$UnreadCountEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 bool success, int? data, String? message, String? code
});




}
/// @nodoc
class __$UnreadCountEnvelopeCopyWithImpl<$Res>
    implements _$UnreadCountEnvelopeCopyWith<$Res> {
  __$UnreadCountEnvelopeCopyWithImpl(this._self, this._then);

  final _UnreadCountEnvelope _self;
  final $Res Function(_UnreadCountEnvelope) _then;

/// Create a copy of UnreadCountEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_UnreadCountEnvelope(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReadAllEnvelope {

 bool get success; int? get data; String? get message; String? get code;
/// Create a copy of ReadAllEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReadAllEnvelopeCopyWith<ReadAllEnvelope> get copyWith => _$ReadAllEnvelopeCopyWithImpl<ReadAllEnvelope>(this as ReadAllEnvelope, _$identity);

  /// Serializes this ReadAllEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReadAllEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'ReadAllEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $ReadAllEnvelopeCopyWith<$Res>  {
  factory $ReadAllEnvelopeCopyWith(ReadAllEnvelope value, $Res Function(ReadAllEnvelope) _then) = _$ReadAllEnvelopeCopyWithImpl;
@useResult
$Res call({
 bool success, int? data, String? message, String? code
});




}
/// @nodoc
class _$ReadAllEnvelopeCopyWithImpl<$Res>
    implements $ReadAllEnvelopeCopyWith<$Res> {
  _$ReadAllEnvelopeCopyWithImpl(this._self, this._then);

  final ReadAllEnvelope _self;
  final $Res Function(ReadAllEnvelope) _then;

/// Create a copy of ReadAllEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReadAllEnvelope].
extension ReadAllEnvelopePatterns on ReadAllEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReadAllEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReadAllEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReadAllEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _ReadAllEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReadAllEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _ReadAllEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  int? data,  String? message,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReadAllEnvelope() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  int? data,  String? message,  String? code)  $default,) {final _that = this;
switch (_that) {
case _ReadAllEnvelope():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  int? data,  String? message,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _ReadAllEnvelope() when $default != null:
return $default(_that.success,_that.data,_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReadAllEnvelope implements ReadAllEnvelope {
  const _ReadAllEnvelope({required this.success, this.data, this.message, this.code});
  factory _ReadAllEnvelope.fromJson(Map<String, dynamic> json) => _$ReadAllEnvelopeFromJson(json);

@override final  bool success;
@override final  int? data;
@override final  String? message;
@override final  String? code;

/// Create a copy of ReadAllEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReadAllEnvelopeCopyWith<_ReadAllEnvelope> get copyWith => __$ReadAllEnvelopeCopyWithImpl<_ReadAllEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReadAllEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReadAllEnvelope&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message,code);

@override
String toString() {
  return 'ReadAllEnvelope(success: $success, data: $data, message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class _$ReadAllEnvelopeCopyWith<$Res> implements $ReadAllEnvelopeCopyWith<$Res> {
  factory _$ReadAllEnvelopeCopyWith(_ReadAllEnvelope value, $Res Function(_ReadAllEnvelope) _then) = __$ReadAllEnvelopeCopyWithImpl;
@override @useResult
$Res call({
 bool success, int? data, String? message, String? code
});




}
/// @nodoc
class __$ReadAllEnvelopeCopyWithImpl<$Res>
    implements _$ReadAllEnvelopeCopyWith<$Res> {
  __$ReadAllEnvelopeCopyWithImpl(this._self, this._then);

  final _ReadAllEnvelope _self;
  final $Res Function(_ReadAllEnvelope) _then;

/// Create a copy of ReadAllEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,Object? code = freezed,}) {
  return _then(_ReadAllEnvelope(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$NotificationRealtimePayload {

 int get notificationId; int get recipientUserId; String get type; String get title; String get summary; int? get relatedMatchId; int? get relatedParticipantId;
/// Create a copy of NotificationRealtimePayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationRealtimePayloadCopyWith<NotificationRealtimePayload> get copyWith => _$NotificationRealtimePayloadCopyWithImpl<NotificationRealtimePayload>(this as NotificationRealtimePayload, _$identity);

  /// Serializes this NotificationRealtimePayload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationRealtimePayload&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId)&&(identical(other.recipientUserId, recipientUserId) || other.recipientUserId == recipientUserId)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.relatedMatchId, relatedMatchId) || other.relatedMatchId == relatedMatchId)&&(identical(other.relatedParticipantId, relatedParticipantId) || other.relatedParticipantId == relatedParticipantId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,notificationId,recipientUserId,type,title,summary,relatedMatchId,relatedParticipantId);

@override
String toString() {
  return 'NotificationRealtimePayload(notificationId: $notificationId, recipientUserId: $recipientUserId, type: $type, title: $title, summary: $summary, relatedMatchId: $relatedMatchId, relatedParticipantId: $relatedParticipantId)';
}


}

/// @nodoc
abstract mixin class $NotificationRealtimePayloadCopyWith<$Res>  {
  factory $NotificationRealtimePayloadCopyWith(NotificationRealtimePayload value, $Res Function(NotificationRealtimePayload) _then) = _$NotificationRealtimePayloadCopyWithImpl;
@useResult
$Res call({
 int notificationId, int recipientUserId, String type, String title, String summary, int? relatedMatchId, int? relatedParticipantId
});




}
/// @nodoc
class _$NotificationRealtimePayloadCopyWithImpl<$Res>
    implements $NotificationRealtimePayloadCopyWith<$Res> {
  _$NotificationRealtimePayloadCopyWithImpl(this._self, this._then);

  final NotificationRealtimePayload _self;
  final $Res Function(NotificationRealtimePayload) _then;

/// Create a copy of NotificationRealtimePayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notificationId = null,Object? recipientUserId = null,Object? type = null,Object? title = null,Object? summary = null,Object? relatedMatchId = freezed,Object? relatedParticipantId = freezed,}) {
  return _then(_self.copyWith(
notificationId: null == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as int,recipientUserId: null == recipientUserId ? _self.recipientUserId : recipientUserId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,relatedMatchId: freezed == relatedMatchId ? _self.relatedMatchId : relatedMatchId // ignore: cast_nullable_to_non_nullable
as int?,relatedParticipantId: freezed == relatedParticipantId ? _self.relatedParticipantId : relatedParticipantId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationRealtimePayload].
extension NotificationRealtimePayloadPatterns on NotificationRealtimePayload {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationRealtimePayload value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationRealtimePayload() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationRealtimePayload value)  $default,){
final _that = this;
switch (_that) {
case _NotificationRealtimePayload():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationRealtimePayload value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationRealtimePayload() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int notificationId,  int recipientUserId,  String type,  String title,  String summary,  int? relatedMatchId,  int? relatedParticipantId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationRealtimePayload() when $default != null:
return $default(_that.notificationId,_that.recipientUserId,_that.type,_that.title,_that.summary,_that.relatedMatchId,_that.relatedParticipantId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int notificationId,  int recipientUserId,  String type,  String title,  String summary,  int? relatedMatchId,  int? relatedParticipantId)  $default,) {final _that = this;
switch (_that) {
case _NotificationRealtimePayload():
return $default(_that.notificationId,_that.recipientUserId,_that.type,_that.title,_that.summary,_that.relatedMatchId,_that.relatedParticipantId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int notificationId,  int recipientUserId,  String type,  String title,  String summary,  int? relatedMatchId,  int? relatedParticipantId)?  $default,) {final _that = this;
switch (_that) {
case _NotificationRealtimePayload() when $default != null:
return $default(_that.notificationId,_that.recipientUserId,_that.type,_that.title,_that.summary,_that.relatedMatchId,_that.relatedParticipantId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationRealtimePayload implements NotificationRealtimePayload {
  const _NotificationRealtimePayload({required this.notificationId, required this.recipientUserId, required this.type, required this.title, required this.summary, this.relatedMatchId, this.relatedParticipantId});
  factory _NotificationRealtimePayload.fromJson(Map<String, dynamic> json) => _$NotificationRealtimePayloadFromJson(json);

@override final  int notificationId;
@override final  int recipientUserId;
@override final  String type;
@override final  String title;
@override final  String summary;
@override final  int? relatedMatchId;
@override final  int? relatedParticipantId;

/// Create a copy of NotificationRealtimePayload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationRealtimePayloadCopyWith<_NotificationRealtimePayload> get copyWith => __$NotificationRealtimePayloadCopyWithImpl<_NotificationRealtimePayload>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationRealtimePayloadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationRealtimePayload&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId)&&(identical(other.recipientUserId, recipientUserId) || other.recipientUserId == recipientUserId)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.relatedMatchId, relatedMatchId) || other.relatedMatchId == relatedMatchId)&&(identical(other.relatedParticipantId, relatedParticipantId) || other.relatedParticipantId == relatedParticipantId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,notificationId,recipientUserId,type,title,summary,relatedMatchId,relatedParticipantId);

@override
String toString() {
  return 'NotificationRealtimePayload(notificationId: $notificationId, recipientUserId: $recipientUserId, type: $type, title: $title, summary: $summary, relatedMatchId: $relatedMatchId, relatedParticipantId: $relatedParticipantId)';
}


}

/// @nodoc
abstract mixin class _$NotificationRealtimePayloadCopyWith<$Res> implements $NotificationRealtimePayloadCopyWith<$Res> {
  factory _$NotificationRealtimePayloadCopyWith(_NotificationRealtimePayload value, $Res Function(_NotificationRealtimePayload) _then) = __$NotificationRealtimePayloadCopyWithImpl;
@override @useResult
$Res call({
 int notificationId, int recipientUserId, String type, String title, String summary, int? relatedMatchId, int? relatedParticipantId
});




}
/// @nodoc
class __$NotificationRealtimePayloadCopyWithImpl<$Res>
    implements _$NotificationRealtimePayloadCopyWith<$Res> {
  __$NotificationRealtimePayloadCopyWithImpl(this._self, this._then);

  final _NotificationRealtimePayload _self;
  final $Res Function(_NotificationRealtimePayload) _then;

/// Create a copy of NotificationRealtimePayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? notificationId = null,Object? recipientUserId = null,Object? type = null,Object? title = null,Object? summary = null,Object? relatedMatchId = freezed,Object? relatedParticipantId = freezed,}) {
  return _then(_NotificationRealtimePayload(
notificationId: null == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as int,recipientUserId: null == recipientUserId ? _self.recipientUserId : recipientUserId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,relatedMatchId: freezed == relatedMatchId ? _self.relatedMatchId : relatedMatchId // ignore: cast_nullable_to_non_nullable
as int?,relatedParticipantId: freezed == relatedParticipantId ? _self.relatedParticipantId : relatedParticipantId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$PushTokenRegisterRequestDto {

 String get fcmToken; String get platform;
/// Create a copy of PushTokenRegisterRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PushTokenRegisterRequestDtoCopyWith<PushTokenRegisterRequestDto> get copyWith => _$PushTokenRegisterRequestDtoCopyWithImpl<PushTokenRegisterRequestDto>(this as PushTokenRegisterRequestDto, _$identity);

  /// Serializes this PushTokenRegisterRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PushTokenRegisterRequestDto&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken)&&(identical(other.platform, platform) || other.platform == platform));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fcmToken,platform);

@override
String toString() {
  return 'PushTokenRegisterRequestDto(fcmToken: $fcmToken, platform: $platform)';
}


}

/// @nodoc
abstract mixin class $PushTokenRegisterRequestDtoCopyWith<$Res>  {
  factory $PushTokenRegisterRequestDtoCopyWith(PushTokenRegisterRequestDto value, $Res Function(PushTokenRegisterRequestDto) _then) = _$PushTokenRegisterRequestDtoCopyWithImpl;
@useResult
$Res call({
 String fcmToken, String platform
});




}
/// @nodoc
class _$PushTokenRegisterRequestDtoCopyWithImpl<$Res>
    implements $PushTokenRegisterRequestDtoCopyWith<$Res> {
  _$PushTokenRegisterRequestDtoCopyWithImpl(this._self, this._then);

  final PushTokenRegisterRequestDto _self;
  final $Res Function(PushTokenRegisterRequestDto) _then;

/// Create a copy of PushTokenRegisterRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fcmToken = null,Object? platform = null,}) {
  return _then(_self.copyWith(
fcmToken: null == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PushTokenRegisterRequestDto].
extension PushTokenRegisterRequestDtoPatterns on PushTokenRegisterRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PushTokenRegisterRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PushTokenRegisterRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PushTokenRegisterRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _PushTokenRegisterRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PushTokenRegisterRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _PushTokenRegisterRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String fcmToken,  String platform)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PushTokenRegisterRequestDto() when $default != null:
return $default(_that.fcmToken,_that.platform);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String fcmToken,  String platform)  $default,) {final _that = this;
switch (_that) {
case _PushTokenRegisterRequestDto():
return $default(_that.fcmToken,_that.platform);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String fcmToken,  String platform)?  $default,) {final _that = this;
switch (_that) {
case _PushTokenRegisterRequestDto() when $default != null:
return $default(_that.fcmToken,_that.platform);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PushTokenRegisterRequestDto implements PushTokenRegisterRequestDto {
  const _PushTokenRegisterRequestDto({required this.fcmToken, required this.platform});
  factory _PushTokenRegisterRequestDto.fromJson(Map<String, dynamic> json) => _$PushTokenRegisterRequestDtoFromJson(json);

@override final  String fcmToken;
@override final  String platform;

/// Create a copy of PushTokenRegisterRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PushTokenRegisterRequestDtoCopyWith<_PushTokenRegisterRequestDto> get copyWith => __$PushTokenRegisterRequestDtoCopyWithImpl<_PushTokenRegisterRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PushTokenRegisterRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PushTokenRegisterRequestDto&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken)&&(identical(other.platform, platform) || other.platform == platform));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fcmToken,platform);

@override
String toString() {
  return 'PushTokenRegisterRequestDto(fcmToken: $fcmToken, platform: $platform)';
}


}

/// @nodoc
abstract mixin class _$PushTokenRegisterRequestDtoCopyWith<$Res> implements $PushTokenRegisterRequestDtoCopyWith<$Res> {
  factory _$PushTokenRegisterRequestDtoCopyWith(_PushTokenRegisterRequestDto value, $Res Function(_PushTokenRegisterRequestDto) _then) = __$PushTokenRegisterRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String fcmToken, String platform
});




}
/// @nodoc
class __$PushTokenRegisterRequestDtoCopyWithImpl<$Res>
    implements _$PushTokenRegisterRequestDtoCopyWith<$Res> {
  __$PushTokenRegisterRequestDtoCopyWithImpl(this._self, this._then);

  final _PushTokenRegisterRequestDto _self;
  final $Res Function(_PushTokenRegisterRequestDto) _then;

/// Create a copy of PushTokenRegisterRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fcmToken = null,Object? platform = null,}) {
  return _then(_PushTokenRegisterRequestDto(
fcmToken: null == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PushTokenRevokeRequestDto {

 String get token;
/// Create a copy of PushTokenRevokeRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PushTokenRevokeRequestDtoCopyWith<PushTokenRevokeRequestDto> get copyWith => _$PushTokenRevokeRequestDtoCopyWithImpl<PushTokenRevokeRequestDto>(this as PushTokenRevokeRequestDto, _$identity);

  /// Serializes this PushTokenRevokeRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PushTokenRevokeRequestDto&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'PushTokenRevokeRequestDto(token: $token)';
}


}

/// @nodoc
abstract mixin class $PushTokenRevokeRequestDtoCopyWith<$Res>  {
  factory $PushTokenRevokeRequestDtoCopyWith(PushTokenRevokeRequestDto value, $Res Function(PushTokenRevokeRequestDto) _then) = _$PushTokenRevokeRequestDtoCopyWithImpl;
@useResult
$Res call({
 String token
});




}
/// @nodoc
class _$PushTokenRevokeRequestDtoCopyWithImpl<$Res>
    implements $PushTokenRevokeRequestDtoCopyWith<$Res> {
  _$PushTokenRevokeRequestDtoCopyWithImpl(this._self, this._then);

  final PushTokenRevokeRequestDto _self;
  final $Res Function(PushTokenRevokeRequestDto) _then;

/// Create a copy of PushTokenRevokeRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PushTokenRevokeRequestDto].
extension PushTokenRevokeRequestDtoPatterns on PushTokenRevokeRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PushTokenRevokeRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PushTokenRevokeRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PushTokenRevokeRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _PushTokenRevokeRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PushTokenRevokeRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _PushTokenRevokeRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PushTokenRevokeRequestDto() when $default != null:
return $default(_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String token)  $default,) {final _that = this;
switch (_that) {
case _PushTokenRevokeRequestDto():
return $default(_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String token)?  $default,) {final _that = this;
switch (_that) {
case _PushTokenRevokeRequestDto() when $default != null:
return $default(_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PushTokenRevokeRequestDto implements PushTokenRevokeRequestDto {
  const _PushTokenRevokeRequestDto({required this.token});
  factory _PushTokenRevokeRequestDto.fromJson(Map<String, dynamic> json) => _$PushTokenRevokeRequestDtoFromJson(json);

@override final  String token;

/// Create a copy of PushTokenRevokeRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PushTokenRevokeRequestDtoCopyWith<_PushTokenRevokeRequestDto> get copyWith => __$PushTokenRevokeRequestDtoCopyWithImpl<_PushTokenRevokeRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PushTokenRevokeRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PushTokenRevokeRequestDto&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'PushTokenRevokeRequestDto(token: $token)';
}


}

/// @nodoc
abstract mixin class _$PushTokenRevokeRequestDtoCopyWith<$Res> implements $PushTokenRevokeRequestDtoCopyWith<$Res> {
  factory _$PushTokenRevokeRequestDtoCopyWith(_PushTokenRevokeRequestDto value, $Res Function(_PushTokenRevokeRequestDto) _then) = __$PushTokenRevokeRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String token
});




}
/// @nodoc
class __$PushTokenRevokeRequestDtoCopyWithImpl<$Res>
    implements _$PushTokenRevokeRequestDtoCopyWith<$Res> {
  __$PushTokenRevokeRequestDtoCopyWithImpl(this._self, this._then);

  final _PushTokenRevokeRequestDto _self;
  final $Res Function(_PushTokenRevokeRequestDto) _then;

/// Create a copy of PushTokenRevokeRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,}) {
  return _then(_PushTokenRevokeRequestDto(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
