import 'dart:convert';

StatusModel statusModelFromJson(String str) =>
    StatusModel.fromJson(json.decode(str));

String statusModelToJson(StatusModel data) => json.encode(data.toJson());

class StatusModel {
  String contato;
  String imageUrl;
  int time;
  bool hasViewed;

  StatusModel({
    this.contato,
    this.imageUrl,
    this.time,
    this.hasViewed,
  });

  factory StatusModel.fromJson(Map<String, dynamic> json) => StatusModel(
      contato: json["contato"],
      imageUrl: json["imageUrl"],
      time: json["time"],
      hasViewed: json["hasViewed"]);

  Map<String, dynamic> toJson() => {
        "contato": contato,
        "imageUrl": imageUrl,
        "time": time,
        "hasViewed": hasViewed,
      };
}
