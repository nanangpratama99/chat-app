class MessageModel {
  String message;
  bool isSender;

  bool isAudio;
  bool isVidio;
  bool isText;

  MessageModel({
    required this.message,
    required this.isSender,
    required this.isAudio,
    required this.isVidio,
    required this.isText,
  });
}

List<MessageModel> messageData = [
  MessageModel(
    message: "lorem ipsum dolor set",
    isSender: true,
    isAudio: false,
    isVidio: false,
    isText: true,
  ),
  MessageModel(
    message:
        "lorem ipsum dolor set lorem ipsum doloret lorem ipsum dolor set lorem ipsum dolor set ",
    isSender: false,
    isAudio: false,
    isVidio: false,
    isText: true,
  ),
  MessageModel(
    message: "lorem ipsum dolor set",
    isSender: true,
    isAudio: false,
    isVidio: true,
    isText: false,
  ),
  MessageModel(
    message: "lorem ipsum dolor set",
    isSender: false,
    isAudio: false,
    isVidio: false,
    isText: true,
  ),
  MessageModel(
    message: "lorem ipsum dolor set",
    isSender: true,
    isAudio: true,
    isVidio: false,
    isText: false,
  ),
  MessageModel(
    message: "lorem ipsum dolor set",
    isSender: false,
    isAudio: false,
    isVidio: false,
    isText: true,
  ),
  MessageModel(
    message: "lorem ipsum dolor set",
    isSender: true,
    isAudio: false,
    isVidio: false,
    isText: true,
  ),
  MessageModel(
    message: "lorem ipsum dolor set",
    isSender: false,
    isAudio: false,
    isVidio: false,
    isText: true,
  ),
  MessageModel(
    message: "lorem ipsum dolor set",
    isSender: true,
    isAudio: false,
    isVidio: false,
    isText: true,
  ),
  MessageModel(
    message: "lorem ipsum dolor set",
    isSender: false,
    isAudio: false,
    isVidio: false,
    isText: true,
  ),
  MessageModel(
    message: "lorem ipsum dolor set",
    isSender: true,
    isAudio: false,
    isVidio: false,
    isText: true,
  ),
  MessageModel(
    message: "lorem ipsum dolor set",
    isSender: false,
    isAudio: false,
    isVidio: false,
    isText: true,
  ),
];
