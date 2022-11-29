import 'dart:convert';

class MessageModel {
  final String name;//用户名
  final String avatar;//头像
  final String text;//消息内容
  final int type;//消息类型
  final bool isMyself;

  MessageModel({
    required this.name,//用户名
    required this.avatar,//头像
    required this.text,//消息内容
    required this.type,//消息类型
    required this.isMyself,
  });

  static List<MessageModel> fromJson(String json) {
    return jsonDecode(json)['list']
        .map((obj) => MessageModel.fromMap(obj))
        .toList();
  }

  static MessageModel fromMap(Map map) {
    return new MessageModel(
        name: map['name'],
        avatar: map['avatar'],
        text: map['text'],
        type: 1,
        isMyself: false
    );
  }
}