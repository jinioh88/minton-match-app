abstract final class AppRoutes {
  static const splash = '/splash';
  static const login = '/login';
  static const profileSetup = '/profile-setup';
  static const home = '/home';
  static const chat = '/chat';
  static const profile = '/profile';

  static String userProfile(int userId) => '/users/$userId';
}
