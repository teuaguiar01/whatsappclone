import 'dart:convert';

CallsModel callsModelFromJson(String str) => CallsModel.fromJson(json.decode(str));

String callsModelToJson(CallsModel data) => json.encode(data.toJson());

class CallsModel {
    String contato;
    String imageUrl;
    int time;
    int statusCall;

    CallsModel({
        this.contato,
        this.imageUrl,
        this.time,
        this.statusCall,
    });

    factory CallsModel.fromJson(Map<String, dynamic> json) => CallsModel(
        contato: json["contato"],
        imageUrl: json["imageUrl"],
        time: json["time"],
        statusCall: json["statusCall"]
    );

    Map<String, dynamic> toJson() => {
        "contato": contato,
        "imageUrl": imageUrl,
        "time": time,
        "statusCall": statusCall,

    };
}