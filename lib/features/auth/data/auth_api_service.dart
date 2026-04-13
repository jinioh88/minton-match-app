import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'dto/oauth_login_dto.dart';
import 'dto/oauth_state_dto.dart';

part 'auth_api_service.g.dart';

@RestApi()
abstract class AuthApiService {
  factory AuthApiService(Dio dio, {String baseUrl}) = _AuthApiService;

  @GET('/api/auth/oauth/naver/state')
  Future<OAuthStateResponseEnvelope> fetchNaverOAuthState(
    @Query('provider') String provider,
  );

  @GET('/api/auth/oauth/google/state')
  Future<OAuthStateResponseEnvelope> fetchGoogleOAuthState(
    @Query('provider') String provider,
  );

  @POST('/api/auth/oauth/login')
  Future<OAuthLoginResponseEnvelope> oauthLogin(
    @Body() Map<String, dynamic> body,
  );
}
