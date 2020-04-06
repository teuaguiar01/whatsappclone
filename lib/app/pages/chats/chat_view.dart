import 'package:app1/app/pages/chats/chat_controller.dart';
import 'package:app1/app/pages/chats/components/chat_widget.dart';
import 'package:flutter/material.dart';
import 'models/status_message_enum.dart';

class ChatList extends StatelessWidget {
  final controller = ChatController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.chatList.length,
      itemBuilder: (context, index) {
        return ChatWidget(
          contato: controller.chatList[index].contato,
          time: controller.chatList[index].time,
          statusMessage:
              StatusMessage.values[controller.chatList[index].statusMessage],
          imageUrl: controller.chatList[index].imageUrl,
          msgPreview: controller.chatList[index].msgPreview,
          mute: controller.chatList[index].mute,
          mensagensNaoLidas: controller.chatList[index].mensagensNaoLidas,
        );
      },
    );
  }
}
