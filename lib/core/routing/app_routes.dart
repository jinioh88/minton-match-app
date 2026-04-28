abstract final class AppRoutes {
  static const splash = '/splash';
  static const login = '/login';
  static const profileSetup = '/profile-setup';
  static const home = '/home';
  static const chat = '/chat';
  static const profile = '/profile';
  static const myHostedMatches = '/profile/matches/hosted';
  static const myParticipatedMatches = '/profile/matches/participated';
  static const myReviewHub = '/profile/reviews';
  static const myFriendships = '/profile/friendships';
  static const notices = '/notices';
  static const supportCenter = '/support';
  static const accountManagement = '/account';
  static const notifications = '/notifications';
  static const createMatch = '/matches/create';

  static String userProfile(int userId) => '/users/$userId';
  static String matchDetail(int matchId) => '/matches/$matchId';
  static String matchChat(int matchId) => '/matches/$matchId/chat';
  static String matchEdit(int matchId) => '/matches/$matchId/edit';
  static String chatRoom(int roomId) => '/chat/rooms/$roomId';
  static String noticeDetail(int noticeId) => '/notices/$noticeId';
  static String matchReviewWrite(int matchId, int revieweeId) =>
      '/matches/$matchId/reviews/write/$revieweeId';
}
