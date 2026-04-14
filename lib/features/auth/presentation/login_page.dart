import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../shared/widgets/oauth_login_brand_button.dart';
import '../data/auth_api_providers.dart';
import '../data/dto/oauth_login_dto.dart';
import '../data/oauth_authorization_service.dart';
import '../domain/oauth2_provider.dart';
import '../../../core/auth/auth_notifier.dart';
import '../../profile/presentation/my_profile_notifier.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  OAuth2Provider? _loadingProvider;

  Future<void> _signIn(OAuth2Provider provider) async {
    setState(() => _loadingProvider = provider);
    try {
      final oauth = ref.read(oauthAuthorizationServiceProvider);
      final api = ref.read(authApiServiceProvider);
      final socialAccessToken = await oauth.obtainSocialAccessToken(provider);
      final req = OAuthLoginRequestDto(
        provider: provider.apiName,
        socialAccessToken: socialAccessToken,
      );
      final envelope = await api.oauthLogin(req.toJson());
      final data = envelope.data;
      if (data == null || !envelope.success) {
        throw ApiException(message: envelope.message ?? '로그인에 실패했습니다.');
      }
      await ref.read(authNotifierProvider.notifier).onOAuthLoginSuccess(
            accessToken: data.accessToken,
            profileComplete: data.user.profileComplete,
          );
      ref.invalidate(myProfileNotifierProvider);
    } on OAuthConfigException catch (e) {
      _showSnack(e.message);
    } on OAuthUserCancelledException catch (e) {
      _showSnack(e.message);
    } catch (e) {
      _showSnack(_message(e));
    } finally {
      if (mounted) setState(() => _loadingProvider = null);
    }
  }

  String _message(Object e) {
    if (e is DioException && e.error is ApiException) {
      return (e.error! as ApiException).message ?? '요청에 실패했습니다.';
    }
    if (e is ApiException) return e.message ?? '요청에 실패했습니다.';
    return e.toString();
  }

  void _showSnack(String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('로그인')),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const Text(
            '소셜 계정으로 로그인하면 브라우저에서 인증 후 앱으로 돌아옵니다.',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          OauthLoginBrandButton(
            brand: OauthLoginBrand.kakao,
            isLoading: _loadingProvider == OAuth2Provider.kakao,
            onPressed: _loadingProvider != null
                ? null
                : () => _signIn(OAuth2Provider.kakao),
          ),
          const SizedBox(height: 12),
          OauthLoginBrandButton(
            brand: OauthLoginBrand.naver,
            isLoading: _loadingProvider == OAuth2Provider.naver,
            onPressed: _loadingProvider != null
                ? null
                : () => _signIn(OAuth2Provider.naver),
          ),
          const SizedBox(height: 12),
          OauthLoginBrandButton(
            brand: OauthLoginBrand.google,
            isLoading: _loadingProvider == OAuth2Provider.google,
            onPressed: _loadingProvider != null
                ? null
                : () => _signIn(OAuth2Provider.google),
          ),
          const SizedBox(height: 12),
          OauthLoginBrandButton(
            brand: OauthLoginBrand.apple,
            isLoading: _loadingProvider == OAuth2Provider.apple,
            onPressed: _loadingProvider != null
                ? null
                : () => _signIn(OAuth2Provider.apple),
          ),
        ],
      ),
    );
  }
}
