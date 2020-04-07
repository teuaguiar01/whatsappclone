import 'package:app1/app/pages/chats/conversations/components/messages_viewer.dart';
import 'package:app1/app/pages/chats/conversations/models/conversation_model.dart';
import 'package:app1/app/pages/chats/models/status_message_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ConversationView extends StatelessWidget {
  final List<ConversationModel> messagesList;

  ConversationView({
    Key key,
    @required this.messagesList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return ListView.builder(
          itemCount: messagesList.length,
          reverse: true,
          itemBuilder: (BuildContext ctxt, int index) {
            return MessagesViewer(
              time: messagesList[index].time,
              statusMessage:
                  StatusMessage.values[messagesList[index].statusMessage],
              isMe: messagesList[index].isMe,
              message: messagesList[index].message,
            );
          });
    });
  }
}
