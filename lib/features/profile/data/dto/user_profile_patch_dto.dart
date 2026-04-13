import 'package:json_annotation/json_annotation.dart';

part 'user_profile_patch_dto.g.dart';

@JsonSerializable(includeIfNull: false, createFactory: false)
class UserProfilePatchDto {
  const UserProfilePatchDto({
    this.nickname,
    this.profileImg,
    this.level,
    this.interestLoc1,
    this.interestLoc2,
    this.racketInfo,
    this.playStyle,
  });

  final String? nickname;
  @JsonKey(name: 'profileImg')
  final String? profileImg;
  final String? level;
  @JsonKey(name: 'interestLoc1')
  final String? interestLoc1;
  @JsonKey(name: 'interestLoc2')
  final String? interestLoc2;
  @JsonKey(name: 'racketInfo')
  final String? racketInfo;
  @JsonKey(name: 'playStyle')
  final String? playStyle;

  Map<String, dynamic> toJson() => _$UserProfilePatchDtoToJson(this);
}
