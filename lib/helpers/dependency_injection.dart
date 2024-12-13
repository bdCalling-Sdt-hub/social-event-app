import 'package:get/get.dart';
import 'package:social_event/controllers/language/lanuage_controller.dart';
import 'package:social_event/controllers/my_group/my_group_controller.dart';
import 'package:social_event/controllers/points_and_offer_controller/points_and_offers_controller.dart';

import '../controllers/article/create_article_controller.dart';
import '../controllers/common_controller/auth/change_password_controller.dart';
import '../controllers/common_controller/auth/forget_password_controller.dart';
import '../controllers/common_controller/auth/sign_in_controller.dart';
import '../controllers/common_controller/auth/sign_up_controller.dart';
import '../controllers/common_controller/notifications/notifications_controller.dart';
import '../controllers/common_controller/profile/profile_controller.dart';
import '../controllers/common_controller/setting/privacy_policy_controller.dart';
import '../controllers/common_controller/setting/setting_controller.dart';
import '../controllers/common_controller/setting/terms_of_services_controller.dart';
import '../controllers/event/create_event_controller.dart';
import '../controllers/event/event_page_controller.dart';
import '../controllers/home/home_controller.dart';
import '../controllers/message/call/audio_call_controller.dart';
import '../controllers/message/call/video_call_controller.dart';
import '../controllers/message/chat_controller.dart';
import '../controllers/message/chat_info_controller.dart';
import '../controllers/message/group_chat_info_controller.dart';
import '../controllers/message/message_controller.dart';
import '../controllers/payment/buy_ticket_controller.dart';
import '../controllers/setting/chat_setting_controller.dart';
import '../controllers/setting/friend_permission_controller.dart';
import '../controllers/setting/general_setting_controller.dart';
import '../controllers/setting/message_notification_controller.dart';

class DependencyInjection extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController(), fenix: true);
    Get.lazyPut(() => SignInController(), fenix: true);
    Get.lazyPut(() => ForgetPasswordController(), fenix: true);
    Get.lazyPut(() => ChangePasswordController(), fenix: true);
    Get.lazyPut(() => NotificationsController(), fenix: true);
    Get.lazyPut(() => ChatController(), fenix: true);
    Get.lazyPut(() => MessageController(), fenix: true);
    Get.lazyPut(() => ProfileController(), fenix: true);
    Get.lazyPut(() => SettingController(), fenix: true);
    Get.lazyPut(() => PrivacyPolicyController(), fenix: true);
    Get.lazyPut(() => TermsOfServicesController(), fenix: true);
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => EventPageController(), fenix: true);
    Get.lazyPut(() => CreateEventController(), fenix: true);
    Get.lazyPut(() => MyGroupController(), fenix: true);
    Get.lazyPut(() => PointAndOffersController(), fenix: true);
    Get.lazyPut(() => BuyTicketController(), fenix: true);
    Get.lazyPut(() => AudioCallController(), fenix: true);
    Get.lazyPut(() => VideoCallController(), fenix: true);
    Get.lazyPut(() => ChatInfoController(), fenix: true);
    Get.lazyPut(() => GroupChatInfoController(), fenix: true);
    Get.lazyPut(() => MessageNotificationController(), fenix: true);
    Get.lazyPut(() => ChatSettingController(), fenix: true);
    Get.lazyPut(() => GeneralSettingController(), fenix: true);
    Get.lazyPut(() => FriendPermissionController(), fenix: true);
    Get.lazyPut(() => CreateArticleController(), fenix: true);
    Get.lazyPut(() => LanguageController(), fenix: true);
  }
}
