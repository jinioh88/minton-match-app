import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'dto/user_penalty_dto.dart';
import 'dto/user_profile_dto.dart';
import 'dto/user_review_dto.dart';
import '../../match/data/dto/match_view_dto.dart';
import 'dto/friendship_dto.dart';
import 'dto/my_review_hub_dto.dart';

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

  @GET('/api/users/{userId}/reviews')
  Future<UserReviewPageEnvelope> getUserReviews(
    @Path('userId') int userId, {
    @Query('page') int? page,
    @Query('size') int? size,
  });

  @GET('/api/users/{userId}/penalties')
  Future<UserPenaltyPageEnvelope> getUserPenalties(
    @Path('userId') int userId, {
    @Query('page') int? page,
    @Query('size') int? size,
  });

  @GET('/api/users/me/matches/hosted')
  Future<MatchListEnvelope> getMyHostedMatches({
    @Query('status') String? status,
    @Query('dateFrom') String? dateFrom,
    @Query('dateTo') String? dateTo,
    @Query('page') int? page,
    @Query('size') int? size,
  });

  @GET('/api/users/me/matches/participated')
  Future<MatchListEnvelope> getMyParticipatedMatches({
    @Query('status') String? status,
    @Query('dateFrom') String? dateFrom,
    @Query('dateTo') String? dateTo,
    @Query('page') int? page,
    @Query('size') int? size,
  });

  @GET('/api/users/me/reviews/written')
  Future<MyWrittenReviewPageEnvelope> getMyWrittenReviews({
    @Query('page') int? page,
    @Query('size') int? size,
  });

  @GET('/api/users/me/reviews/pending')
  Future<MyPendingReviewPageEnvelope> getMyPendingReviews({
    @Query('page') int? page,
    @Query('size') int? size,
  });

  @POST('/api/users/me/friendships')
  Future<FollowingUserEnvelope> followUser(@Body() Map<String, dynamic> body);

  @GET('/api/users/me/friendships')
  Future<FollowingUsersEnvelope> getMyFollowings();

  @DELETE('/api/users/me/friendships/{followingUserId}')
  Future<EmptyEnvelope> unfollowUser(
    @Path('followingUserId') int followingUserId,
  );
}
