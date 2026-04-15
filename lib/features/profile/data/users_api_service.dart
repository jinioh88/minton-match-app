import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'dto/user_profile_dto.dart';

part 'users_api_service.g.dart';

@RestApi()
abstract class UsersApiService {
  factory UsersApiService(Dio dio, {String baseUrl}) = _UsersApiService;

  @GET('/api/users/check-nickname')
  Future<NicknameCheckEnvelope> checkNickname(
    @Query('nickname') String nickname,
  );

  @GET('/api/users/me')
  Future<UserProfileEnvelope> getMe();

  @PATCH('/api/users/me')
  Future<UserProfileEnvelope> patchMe(@Body() Map<String, dynamic> body);

  @MultiPart()
  @POST('/api/users/me/profile-image')
  Future<UserProfileEnvelope> uploadProfileImage(
    @Part(name: 'image') File image,
  );

  @GET('/api/users/{userId}')
  Future<UserProfileEnvelope> getUser(@Path('userId') int userId);
}
