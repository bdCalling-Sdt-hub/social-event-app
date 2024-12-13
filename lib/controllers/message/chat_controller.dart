import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../helpers/prefs_helper.dart';
import '../../../models/active_user_model.dart';
import '../../../models/api_response_model.dart';
import '../../../models/chat_list_model.dart';
import '../../../services/api_service.dart';
import '../../../services/socket_service.dart';
import '../../../utils/app_url.dart';
import '../../../utils/app_utils.dart';

class ChatController extends GetxController {
  bool groupExpanded = false;

  changeGroupExpanded(bool value) {
    groupExpanded = value;
    update();
  }

  Status status = Status.completed;

  bool isMoreLoading = false;

  int page = 1;

  List chats = [
    ChatListModel(
        name: "Naimul",
        image: PrefsHelper.myImage,
        message: "Hello sir",
        time: "2h"),
    ChatListModel(
        name: "Naimul",
        image: PrefsHelper.myImage,
        message: "Hello sir",
        time: "2h"),
    ChatListModel(
        name: "Naimul",
        image: PrefsHelper.myImage,
        message: "Hello sir",
        time: "2h"),
    ChatListModel(
        name: "Naimul",
        image: PrefsHelper.myImage,
        message: "Hello sir",
        time: "2h"),
    ChatListModel(
        name: "Naimul",
        image: PrefsHelper.myImage,
        message: "Hello sir",
        time: "2h"),
    ChatListModel(
        name: "Naimul",
        image: PrefsHelper.myImage,
        message: "Hello sir",
        time: "2h"),
  ];
  List groupChats = [
    ChatListModel(
        name: "group name",
        image: PrefsHelper.myImage,
        message: "Hello sir",
        time: "2h"),
    ChatListModel(
        name: "group name",
        image: PrefsHelper.myImage,
        message: "Hello sir",
        time: "2h"),
    ChatListModel(
        name: "group name",
        image: PrefsHelper.myImage,
        message: "Hello sir",
        time: "2h"),
    ChatListModel(
        name: "group name",
        image: PrefsHelper.myImage,
        message: "Hello sir",
        time: "2h"),
    ChatListModel(
        name: "group name",
        image: PrefsHelper.myImage,
        message: "Hello sir",
        time: "2h"),
    ChatListModel(
        name: "group name",
        image: PrefsHelper.myImage,
        message: "Hello sir",
        time: "2h"),
  ];
  List activeUsers = [];

  ScrollController scrollController = ScrollController();

  static ChatController get instance => Get.put(ChatController());

  Future<void> scrollControllerCall() async {
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      isMoreLoading = true;
      update();
      await getChatRepo();
      isMoreLoading = false;
      update();
    }
  }

  Future<void> getChatRepo() async {
    return;
    if (page == 1) {
      status = Status.loading;
      update();
    }

    var response = await ApiService.getApi("${AppUrls.chats}?page=$page");

    if (response.statusCode == 200) {
      page = page + 1;
      status = Status.completed;
      update();
    } else {
      Utils.snackBarMessage(response.statusCode.toString(), response.message);
      status = Status.error;
      update();
    }
  }

  // listenChat() async {
  //   SocketServices.socket.on("update-chatlist::${PrefsHelper.userId}", (data) {
  //     status = Status.loading;
  //     update();
  //
  //     page = 1;
  //     ChatListModel chatListModel;
  //     chatListModel = ChatListModel.fromJson(data);
  //
  //     chats.clear();
  //     chats.addAll(chatListModel.data.attributes.chatList);
  //
  //     status = Status.completed;
  //     update();
  //   });
  // }

  getActiveUser() async {
    SocketServices.socket.emitWithAck("get-active-users", {}, ack: (data) {
      activeUsers.clear();
      for (var item in data['data']) {
        activeUsers.add(ActiveUserModel.fromJson(item));
      }
      update();

      if (kDebugMode) {
        print("===========================> Received acknowledgment: $data");
      }
    });
  }

  @override
  void onInit() {
    getChatRepo();
    getActiveUser();
    super.onInit();
  }
}
