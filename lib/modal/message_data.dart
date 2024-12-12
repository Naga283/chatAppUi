import 'dart:convert';

MessageData messageDataFromJson(String str) =>
    MessageData.fromJson(json.decode(str));

String messageDataToJson(MessageData data) => json.encode(data.toJson());

class MessageData {
  final bool sendByU;
  final String message;
  final String dateTime;

  MessageData({
    required this.sendByU,
    required this.message,
    required this.dateTime,
  });

  factory MessageData.fromJson(Map<String, dynamic> json) => MessageData(
        sendByU: json["sendByU"],
        message: json["message"],
        dateTime: json["dateTime"],
      );

  Map<String, dynamic> toJson() => {
        "sender": sendByU,
        "message": message,
        "dateTime": dateTime,
      };
}
