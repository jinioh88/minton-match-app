import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'dto/create_match_dto.dart';
import 'dto/match_view_dto.dart';

part 'matches_api_service.g.dart';

@RestApi()
abstract class MatchesApiService {
  factory MatchesApiService(Dio dio, {String baseUrl}) = _MatchesApiService;

  @MultiPart()
  @POST('/api/files/upload')
  Future<FileUploadEnvelope> uploadFile(
    @Part(name: 'file') File file,
    @Part(name: 'type') String type,
  );

  @POST('/api/matches')
  Future<CreateMatchEnvelope> createMatch(@Body() Map<String, dynamic> body);

  @GET('/api/matches')
  Future<MatchListEnvelope> getMatches({
    @Query('regionCode') String? regionCode,
    @Query('dateFrom') String? dateFrom,
    @Query('dateTo') String? dateTo,
    @Query('level') String? level,
    @Query('page') int? page,
    @Query('size') int? size,
  });

  @GET('/api/matches/{matchId}')
  Future<MatchDetailEnvelope> getMatchDetail(@Path('matchId') int matchId);

  @PATCH('/api/matches/{matchId}')
  Future<MatchDetailEnvelope> updateMatch(
    @Path('matchId') int matchId,
    @Body() Map<String, dynamic> body,
  );

  @POST('/api/matches/{matchId}/participants')
  Future<ParticipationActionEnvelope> applyParticipation(
    @Path('matchId') int matchId,
    @Body() Map<String, dynamic> body,
  );

  @PATCH('/api/matches/{matchId}/participants/{participationId}')
  Future<ParticipationActionEnvelope> updateParticipation(
    @Path('matchId') int matchId,
    @Path('participationId') int participationId,
    @Body() Map<String, dynamic> body,
  );

  @DELETE('/api/matches/{matchId}/participants/me')
  Future<EmptyEnvelope> cancelMyParticipation(@Path('matchId') int matchId);

  @POST('/api/matches/{matchId}/participants/me/accept-offer')
  Future<ParticipationActionEnvelope> acceptOffer(@Path('matchId') int matchId);

  @POST('/api/matches/{matchId}/participants/me/reject-offer')
  Future<ParticipationActionEnvelope> rejectOffer(@Path('matchId') int matchId);

  @GET('/api/matches/{matchId}/participants/applications')
  Future<MatchApplicationsEnvelope> getApplications(@Path('matchId') int matchId);
}
