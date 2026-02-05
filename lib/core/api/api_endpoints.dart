part of '../core.dart';

class ApiEndpoints {
  static const String baseURL = "https://xraceapi.zyberspace.in/";

  static const String sendOtp = "api/generate-otp/";
  static const String verifyOtp = "api/verify-otp/";
  static const String getAvatars = "api/all-avatars/";
  static const String login = "api/login/";
  static const String register = "api/register/";

  static const String getUserProfile = "api/user-profile/";

  static const String userTournaments = "api/user-tournaments/";
  static const String userTrophies = "api/user-trophies/";
  static const String getUserTotalStats = "api/user-total-stats/";

  static const String getLocations = "api/location-list/";

  static const String selectLocation = "api/update-user-location/";
  static const String updateLocation = "api/toggle-like/";

  //Tournaments
  static const String upcomingTournaments = "api/upcoming-tournaments/";
  static const String ongoingTournaments = "api/live-tournaments/";
  static const String finishedTournaments = "api/finished-tournaments/";

  static const String myUpcomingLiveTournaments =
      "api/my-upcoming-live-tournaments/";
  static const String myFinishedTournaments = "api/my-finished-tournaments/";

  static const String tournamentDetails = "api/tournament-details/";
  static const String appTournamentData = "api/app-tournament-data/";

  static const String tournamentBooking = "api/tournament-booking/";
  static const String createNotify = "api/create-notify/";
  static const String roundGroups = "api/round-groups/";
  static const String adminTournamentWinners = "api/admin-tournament-winners/";
  static const String userGroupLaps = "api/user-group-laps/";

  //Profile

  static const String getMyProfile = "api/my-profile/";
  static const String updateUserProfile = "api/update-profile/";

  static const String changePassword = "api/user/change-password/";
  static const String resetPassword = "api/user/reset-password/";
  static const String updatePassword = "api/update-password/";

  //Home
  static const String popularPlayer = "api/popular-players/";
  static const String likeProfile = "api/toggle-like/";

  static const String trackList = "api/track-list/";
  static const String trackDetails = "api/track-details/";
  static const String trackSlotDates = "api/track-slot-dates/";
  static const String trackDatewisePracticeSlots =
      "api/date-wise-practice-slots/";
  static const String createPracticeSlotBooking =
      "api/create-practice-booking/";
  static const String createPracticeSlotBookingMarkAsPaid =
      "api/mark-booking-paid/";

  static const String globalLeaderboard = "api/global-leaderboards/";

  //setting
  static const String siteSettings = "api/site-settings/";

  static const String userTransactions = "api/transaction-history/";
  static const String practiceBookings = "api/practice-booking-history/";
  static const String practiceBookingDetails = "api/practice-booking-detail/";

  static const String bookingAmountPreview = "api/booking-amount-preview/";
  static const String rescheduleBooking = "api/reschedule-practice-booking/";

  static const String walletTransactions = "api/wallet-transactions/";
}
