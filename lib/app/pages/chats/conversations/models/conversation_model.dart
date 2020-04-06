import 'dart:convert';

ConversationModel conversationModelFromJson(String str) =>
    ConversationModel.fromJson(json.decode(str));

String conversationModelToJson(ConversationModel data) =>
    json.encode(data.toJson());

class ConversationModel {
  String message;
  int time;
  int statusMessage;
  bool isMe;

  ConversationModel({
    this.message,
    this.isMe,
    this.time,
    this.statusMessage,
  });

  factory ConversationModel.fromJson(Map<String, dynamic> json) =>
      ConversationModel(
          message: json["message"],
          time: json["time"],
          isMe: json["isMe"],
          statusMessage: json["statusCall"]);

  Map<String, dynamic> toJson() => {
        "message": message,
        "time": time,
        "date": isMe,
        "statusCall": message,
      };
}
