import 'dart:convert';

ChatModel chatModelFromJson(String str) => ChatModel.fromJson(json.decode(str));

String chatModelToJson(ChatModel data) => json.encode(data.toJson());

class ChatModel {
  String contato;
  String imageUrl;
  int time;
  bool mute;
  int mensagensNaoLidas;
  int statusMessage;
  String msgPreview;

  ChatModel({
    this.contato,
    this.imageUrl,
    this.time,
    this.mute,
    this.mensagensNaoLidas,
    this.statusMessage,
    this.msgPreview,
  });

  factory ChatModel.fromJson(Map<String, dynamic> json) => ChatModel(
        contato: json["contato"],
        imageUrl: json["imageUrl"],
        time: json["time"],
        mute: json["mute"],
        mensagensNaoLidas: json["mensagensNaoLidas"],
        statusMessage: json["statusMessage"],
        msgPreview: json["msgPreview"],
      );

  Map<String, dynamic> toJson() => {
        "contato": contato,
        "imageUrl": imageUrl,
        "time": time,
        "mute": mute,
        "mensagensNaoLidas": mensagensNaoLidas,
        "statusMessage": statusMessage,
        "msgPreview": msgPreview,
      };
}
