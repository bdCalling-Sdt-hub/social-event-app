class ChatMessageModel {
  final DateTime time;
  final String text;
  final String audio;
  final String image;
  final TatLong? tatLong;
  final bool isMe;
  final bool isCall;
  final bool isNotice;

  ChatMessageModel(
      {required this.time,
      required this.text,
      required this.image,
      required this.isMe,
      this.audio = "",
      this.isCall = false,
      this.isNotice = false,
      this.tatLong});
}

class TatLong {
  final num latitude;

  final num longitude;

  TatLong({required this.latitude, required this.longitude});
}
