import 'package:get/get.dart';
import 'package:social_event/view/screen/artical/create_article_screen.dart';
import 'package:social_event/view/screen/artical/review_post_screen.dart';
import 'package:social_event/view/screen/common_screen/auth/sign%20up/complete_profile.dart';
import 'package:social_event/view/screen/event/my_favorite_event/my_favorite_event_screen.dart';
import 'package:social_event/view/screen/message/chant_info_screen.dart';
import 'package:social_event/view/screen/message/clear_chat_history.dart';
import 'package:social_event/view/screen/message/group/group_qr_code.dart';
import 'package:social_event/view/screen/message/group/group_remark_screen.dart';
import 'package:social_event/view/screen/message/group/my_alias_group_screen.dart';
import 'package:social_event/view/screen/message/report_screen.dart';
import 'package:social_event/view/screen/message/set_background.dart';
import 'package:social_event/view/screen/my_group/create_new_group.dart';
import 'package:social_event/view/screen/my_group/my_group_screen.dart';
import 'package:social_event/view/screen/event/create_event_screen.dart';
import 'package:social_event/view/screen/event/event_details.dart';
import 'package:social_event/view/screen/event/event_page.dart';
import 'package:social_event/view/screen/event/select_organizer.dart';
import 'package:social_event/view/screen/home/home_screen.dart';
import 'package:social_event/view/screen/location/location_access_screen.dart';
import 'package:social_event/view/screen/payment/buy_ticket_screen.dart';
import 'package:social_event/view/screen/points_and_offers/event_contribution.dart';
import 'package:social_event/view/screen/points_and_offers/group_contribution.dart';
import 'package:social_event/view/screen/points_and_offers/point_and_offers.dart';
import 'package:social_event/view/screen/points_and_offers/product_exchange_cart.dart';
import 'package:social_event/view/screen/points_and_offers/product_exchange_dettails.dart';
import 'package:social_event/view/screen/points_and_offers/product_exchange_screen.dart';
import 'package:social_event/view/screen/points_and_offers/ticket_offers_cart.dart';
import 'package:social_event/view/screen/points_and_offers/ticket_offers_detttails_screen.dart';
import 'package:social_event/view/screen/points_and_offers/ticket_offers_screen.dart';
import 'package:social_event/view/screen/search/event_near_screen.dart';
import 'package:social_event/view/screen/search/featured_activities_screen.dart';
import 'package:social_event/view/screen/search/filters.dart';
import 'package:social_event/view/screen/search/search_screen.dart';
import 'package:social_event/view/screen/settings/account_security/account_security_screen.dart';
import 'package:social_event/view/screen/settings/account_security/display_name.dart';
import 'package:social_event/view/screen/settings/account_security/emargency_contact.dart';
import 'package:social_event/view/screen/settings/account_security/id_screen.dart';
import 'package:social_event/view/screen/settings/account_security/login_devices_screen.dart';
import 'package:social_event/view/screen/settings/account_security/password_screen.dart';
import 'package:social_event/view/screen/settings/account_security/phone_number.dart';
import 'package:social_event/view/screen/settings/account_security/verify_my_voice.dart';
import 'package:social_event/view/screen/settings/account_security/voice_print.dart';
import 'package:social_event/view/screen/settings/char_%20setting/chat_background.dart';
import 'package:social_event/view/screen/settings/char_%20setting/chat_setting_screen.dart';
import 'package:social_event/view/screen/settings/char_%20setting/wallpaper_screen.dart';
import 'package:social_event/view/screen/settings/collected_personal_infomation_screen.dart';
import 'package:social_event/view/screen/settings/easy_mode_screen.dart';
import 'package:social_event/view/screen/settings/friend_permission/block_list_screen.dart';
import 'package:social_event/view/screen/settings/friend_permission/comment_screen.dart';
import 'package:social_event/view/screen/settings/friend_permission/friend_permission_screen.dart';
import 'package:social_event/view/screen/settings/friend_permission/method_making_screen.dart';
import 'package:social_event/view/screen/settings/general/automatic_update_screen.dart';
import 'package:social_event/view/screen/settings/general/general_setting_screen.dart';
import 'package:social_event/view/screen/settings/general/language_screen.dart';
import 'package:social_event/view/screen/settings/general/photos_and_call_screen.dart';
import 'package:social_event/view/screen/settings/general/text_size_screen.dart';
import 'package:social_event/view/screen/settings/message_notification/alert_sound_screen.dart';
import 'package:social_event/view/screen/settings/message_notification/message_notification_screen.dart';
import 'package:social_event/view/screen/settings/my_information_screen.dart';
import 'package:social_event/view/screen/settings/parental_control_mode.dart';
import 'package:social_event/view/screen/settings/setting_screen.dart';

import '../view/screen/artical/artical_screen.dart';
import '../view/screen/common_screen/auth/change_password/change_password_screen.dart';
import '../view/screen/common_screen/auth/forgot password/create_password.dart';
import '../view/screen/common_screen/auth/forgot password/forgot_password.dart';
import '../view/screen/common_screen/auth/forgot password/verify_screen.dart';
import '../view/screen/common_screen/auth/sign in/otp_verification.dart';
import '../view/screen/common_screen/auth/sign in/sign_in_screen.dart';
import '../view/screen/common_screen/auth/sign up/sign_up_screen.dart';
import '../view/screen/common_screen/auth/sign up/verify_user.dart';
import '../view/screen/common_screen/notifications/notifications_screen.dart';
import '../view/screen/common_screen/onboarding_screen/marketing_screen.dart';
import '../view/screen/common_screen/onboarding_screen/onboarding_screen.dart';
import '../view/screen/common_screen/profile/edit_profile.dart';
import '../view/screen/common_screen/profile/profile_screen.dart';
import '../view/screen/common_screen/setting/privacy_policy_screen.dart';
import '../view/screen/common_screen/setting/terms_of_services_screen.dart';
import '../view/screen/common_screen/splash/splash_screen.dart';
import '../view/screen/message/call/audio_call/audio_call.dart';
import '../view/screen/message/call/video_call/video_call.dart';
import '../view/screen/message/chat_screen.dart';
import '../view/screen/message/group/group_chat_info.dart';
import '../view/screen/message/message_screen.dart';
import '../view/screen/qr_code/Genater_qr_code.dart';
import '../view/screen/search/scarch_notification.dart';

class AppRoutes {
  // static const String test = "/test_screen.dart";
  static const String splash = "/splash_screen.dart";
  static const String onboarding = "/onboarding_screen.dart";
  static const String signUp = "/sign_up_screen.dart";
  static const String verifyUser = "/verify_user.dart";
  static const String signIn = "/sign_in_screen.dart";
  static const String forgotPassword = "/forgot_password.dart";
  static const String verifyEmail = "/verify_screen.dart";
  static const String createPassword = "/create_password.dart";
  static const String changePassword = "/change_password_screen.dart";
  static const String notifications = "/notifications_screen.dart";
  static const String chat = "/chat_screen.dart";
  static const String message = "/message_screen.dart";
  static const String profile = "/profile_screen.dart";
  static const String editProfile = "/edit_profile.dart";
  static const String privacyPolicy = "/privacy_policy_screen.dart";
  static const String termsOfServices = "/terms_of_services_screen.dart";
  static const String setting = "/setting_screen.dart";
  static const String otpVerification = "/otp_verification.dart";
  static const String marketingScreen = "/marketing_screen.dart";
  static const String completeProfile = "/complete_profile.dart";
  static const String locationAccess = "/location_access_screen.dart";
  static const String home = "/home_screen.dart";
  static const String eventDetails = "/event_details.dart";
  static const String eventPage = "/event_page.dart";
  static const String createEvent = "/create_event_screen.dart";
  static const String selectOrganizer = "/select_organizer.dart";
  static const String search = "/search_screen.dart";
  static const String featuredActivities = "/featured_activities_screen.dart";
  static const String eventNear = "/event_near_screen.dart";
  static const String scarchNotification = "/scarch_notification.dart";
  static const String filters = "/filters.dart";
  static const String genaratQrCode = "/Genater_qr_code.dart";
  static const String buyTicket = "/buy_ticket_screen.dart";
  static const String audioCallIncoming = "/audio_call_incoming.dart";
  static const String audioCall = "/audio_call.dart";
  static const String videoCall = "/video_call.dart";
  static const String myGroup = "/My_group.dart";
  static const String createNewGroup = "/create_new_group.dart";
  static const String myFavoriteEvent = "/my_favorite_event.dart";
  static const String pointAndOffers = "/pointsAndOffers.dart";
  static const String groupContribution = "/groupContribution.dart";
  static const String eventContribution = "/eventContribution.dart";
  static const String ticket_offers = "/ticket_offers.dart";
  static const String ticket_offers_dettails = "/ticket_offers_dettails.dart";
  static const String ticket_offers_cart = "/ticket_offers_cart.dart";
  static const String product_exchange_screen = "/product_exchange_screen.dart";
  static const String product_exchange_dettails =
      "/product_exchange_dettails.dart";
  static const String product_exchange_cart = "/product_exchange_cart.dart";
  static const String setting_screen = "/setting_screen.dart";
  static const String account_security = "/account_security.dart";
  static const String display_name = "/display_name.dart";
  static const String id_screen = "/id_screen.dart";
  static const String phone_number = "/phone_number.dart";
  static const String passwordScreen = "/passwordScreen.dart";
  static const String voice_print = "/voice_print.dart";
  static const String chatInfo = "/chant_info_screen.dart";
  static const String setBackground = "/set_background.dart";
  static const String clearChatHistory = "/clear_chat_history.dart";
  static const String report = "/report_screen.dart";
  static const String groupChatInfo = "/group_chat_info.dart";
  static const String groupQrCode = "/group_qr_code.dart";
  static const String groupRemark = "/group_remark_screen.dart";
  static const String myAliasGroup = "/my_alias_group_screen.dart";
  static const String verify_my_voice = "/verify_my_voice.dart";
  static const String emergency_contact = "/emergency_contact.dart";
  static const String loginDevices = "/login_devices_screen.dart";
  static const String easyMode = "/easy_mode_screen.dart";
  static const String parentalMode = "/parental_control_mode.dart";
  static const String messageNotification = "/message_notification_screen.dart";
  static const String alertSound = "/alert_sound_screen.dart";
  static const String chatSetting = "/chat_setting_screen.dart";
  static const String chatBackground = "/chat_background.dart";
  static const String wallpaper = "/wallpaper_screen.dart";
  static const String general = "/general_setting_screen.dart";
  static const String automaticUpdate = "/automatic_update_screen.dart";
  static const String language = "/language_screen.dart";
  static const String textSize = "/text_size_screen.dart";
  static const String photoAndCall = "/photos_and_call_screen.dart";
  static const String friendPermission = "/friend_permission_screen.dart";
  static const String methodMaking = "/method_making_screen.dart";
  static const String comment = "/comment_screen.dart";
  static const String blockList = "/block_list_screen.dart";
  static const String collectedPersonalInfomation =
      "/collected_personal_infomation_screen.dart";
  static const String myInformation = "/my_information_screen.dart";
  static const String article = "/artical_screen.dart";
  static const String createArticle = "/create_article_screen.dart";
  static const String reviewPost = "/review_post_screen.dart";

  static List<GetPage> routes = [
    GetPage(
        name: splash,
        page: () => const SplashScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: onboarding,
        page: () => const OnboardingScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: signUp,
        page: () => SignUpScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: verifyUser,
        page: () => const VerifyUser(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: signIn,
        page: () => SignInScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: forgotPassword,
        page: () => ForgotPasswordScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: verifyEmail,
        page: () => const VerifyScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: createPassword,
        page: () => CreatePassword(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: changePassword,
        page: () => ChangePasswordScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: notifications,
        page: () => const NotificationScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: chat,
        page: () => const ChatListScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: message,
        page: () => const MessageScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: profile,
        page: () => const ProfileScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: editProfile,
        page: () => EditProfile(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: privacyPolicy,
        page: () => const PrivacyPolicyScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: termsOfServices,
        page: () => const TermsOfServicesScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: setting,
        page: () => const SettingScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: otpVerification,
        page: () => OtpVerification(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: marketingScreen,
        page: () => const MarketingScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: completeProfile,
        page: () => const CompleteProfile(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: locationAccess,
        page: () => const LocationAccessScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: home,
        page: () => const HomeScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: eventDetails,
        page: () => const EventDetails(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: eventPage,
        page: () => const EventPage(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: createEvent,
        page: () => const CreateEventScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: selectOrganizer,
        page: () => const SelectOrganizer(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: search,
        page: () => SearchScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: featuredActivities,
        page: () => const FeaturedActivitiesScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: eventNear,
        page: () => const EventNearScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: scarchNotification,
        page: () => const ScarchNotification(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: myGroup,
        page: () => const MyGroupScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: createNewGroup,
        page: () => const CreateNewGroup(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: myFavoriteEvent,
        page: () => const MyFavoriteEventScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: pointAndOffers,
        page: () => const PointAndOffers(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: groupContribution,
        page: () => const GroupContribution(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: eventContribution,
        page: () => const EventContribution(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: ticket_offers,
        page: () => const TicketOffersScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: ticket_offers_dettails,
        page: () => const TicketOffersDetttailsScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: ticket_offers_cart,
        page: () => const TicketOffersCart(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: product_exchange_screen,
        page: () => const ProductExchangeScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: product_exchange_dettails,
        page: () => const ProductExchangeDettails(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: product_exchange_cart,
        page: () => const ProductExchangeCart(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: setting_screen,
        page: () => const SettingScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: account_security,
        page: () => const AccountSecurityScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: display_name,
        page: () => const DisplayName(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: id_screen,
        page: () => const IdScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: phone_number,
        page: () => const PhoneNumber(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: passwordScreen,
        page: () => PasswordScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: voice_print,
        page: () => const VoicePrint(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: filters,
        page: () => const Filters(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: genaratQrCode,
        page: () => const GenarateQRCode(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: buyTicket,
        page: () => const BuyTicketScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: audioCall,
        page: () => const AudioCall(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: videoCall,
        page: () => const VideoCall(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: chatInfo,
        page: () => const ChantInfoScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: setBackground,
        page: () => const SetBackground(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: clearChatHistory,
        page: () => const ClearChatHistory(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: report,
        page: () => const ReportScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: groupChatInfo,
        page: () => const GroupChatInfo(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: groupQrCode,
        page: () => const GroupQrCode(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: groupRemark,
        page: () => const GroupRemarkScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: myAliasGroup,
        page: () => const MyAliasGroupScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: verify_my_voice,
        page: () => const VerifyMyVoice(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: emergency_contact,
        page: () => EmargencyContact(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: loginDevices,
        page: () => const LoginDevicesScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: easyMode,
        page: () => const EasyModeScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: parentalMode,
        page: () => const ParentalControlMode(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: messageNotification,
        page: () => const MessageNotificationScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: alertSound,
        page: () => const AlertSoundScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: chatSetting,
        page: () => const ChatSettingScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: chatBackground,
        page: () => const ChatBackground(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: wallpaper,
        page: () => const WallpaperScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: general,
        page: () => const GeneralSettingScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: automaticUpdate,
        page: () => const AutomaticUpdateScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: language,
        page: () => const LanguageScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: textSize,
        page: () => const TextSizeScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: photoAndCall,
        page: () => const PhotosAndCallScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: friendPermission,
        page: () => const FriendPermissionScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: methodMaking,
        page: () => const MethodMakingScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: blockList,
        page: () => const BlockListScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: comment,
        page: () => const CommentScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: myInformation,
        page: () => const MyInformationScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: collectedPersonalInfomation,
        page: () => const CollectedPersonalInfomationScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: article,
        page: () => const ArticleScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: createArticle,
        page: () => const CreateArticleScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: reviewPost,
        page: () => const ReviewPostScreen(),
        transition: Transition.rightToLeftWithFade),
  ];
}
