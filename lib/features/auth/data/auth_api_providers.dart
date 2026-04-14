import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/dio_provider.dart';
import 'auth_api_service.dart';
import 'oauth_authorization_service.dart';

final authApiServiceProvider = Provider<AuthApiService>((ref) {
  return AuthApiService(ref.watch(dioProvider));
});

final oauthAuthorizationServiceProvider = Provider<OAuthAuthorizationService>((ref) {
  return OAuthAuthorizationService();
});
