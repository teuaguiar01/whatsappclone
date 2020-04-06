import 'package:app1/app/pages/chats/conversations/components/messages_viewer.dart';
import 'package:app1/app/pages/chats/conversations/conversation_page.dart';
import 'package:app1/app/pages/chats/models/status_message_enum.dart';
import 'package:app1/app/shared/components/contact_picture_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatWidget extends StatelessWidget {
  final String contato;
  final String imageUrl;
  final int time;
  final StatusMessage statusMessage;
  final bool mute;
  final int mensagensNaoLidas;
  final String msgPreview;

  const ChatWidget({
    Key key,
    @required this.contato,
    @required this.imageUrl,
    @required this.time,
    @required this.statusMessage,
    @required this.mute,
    @required this.msgPreview,
    this.mensagensNaoLidas,
  }) : super(key: key);

  void onPressedContact(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              ConversationWidget(contato: contato, imageUrl: imageUrl)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => onPressedContact(context),
      leading: GestureDetector(
        child: ContactPicture(imageUrl: imageUrl),
        onTap: () {},
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 0.15, color: Colors.grey),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ContactText(contato: contato),
                      LastMessageTimeText(time: time),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      buildIconStatus(statusMessage: statusMessage),
                      SizedBox(width: 5),
                      MessagePreviewText(msgPreview: msgPreview),
                      Spacer(),
                      if (mute) MuteIcon(),
                      if (mensagensNaoLidas > 0) ...[
                        SizedBox(width: 10),
                        NotReadMessages(mensagensNaoLidas: mensagensNaoLidas),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MuteIcon extends StatelessWidget {
  const MuteIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.volume_off, color: Colors.grey);
  }
}

class MessagePreviewText extends StatelessWidget {
  const MessagePreviewText({
    Key key,
    @required this.msgPreview,
  }) : super(key: key);

  final String msgPreview;

  @override
  Widget build(BuildContext context) {
    return Text(
      msgPreview,
      style: new TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: Colors.grey,
      ),
    );
  }
}

class LastMessageTimeText extends StatelessWidget {
  const LastMessageTimeText({
    Key key,
    @required this.time,
  }) : super(key: key);

  final int time;

  @override
  Widget build(BuildContext context) {
    return Text(
      new DateFormat("hh:mm")
          .format(DateTime.fromMillisecondsSinceEpoch(time * 1000)),
      style: new TextStyle(fontWeight: FontWeight.w200, fontSize: 12),
    );
  }
}

class ContactText extends StatelessWidget {
  const ContactText({
    Key key,
    @required this.contato,
  }) : super(key: key);

  final String contato;

  @override
  Widget build(BuildContext context) {
    return Text(
      contato,
      style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
    );
  }
}

class NotReadMessages extends StatelessWidget {
  const NotReadMessages({
    Key key,
    @required this.mensagensNaoLidas,
  }) : super(key: key);

  final int mensagensNaoLidas;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Text(
          mensagensNaoLidas.toString(),
          style: new TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
