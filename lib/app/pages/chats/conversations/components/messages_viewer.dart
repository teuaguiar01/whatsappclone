import 'package:app1/app/pages/chats/models/status_message_enum.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MessagesViewer extends StatelessWidget {
  final String message;
  final int time;
  final bool isMe;
  final StatusMessage statusMessage;

  const MessagesViewer({
    Key key,
    @required this.message,
    @required this.time,
    @required this.isMe,
    this.statusMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isMe)
      return buildBubbleMyMessage();
    else
      return buildBubbleContactMessage();
  }

  Bubble buildBubbleMyMessage() {
    return Bubble(
      margin: BubbleEdges.only(top: 10, bottom: 1, left: 100),
      alignment: Alignment.topRight,
      nip: BubbleNip.rightTop,
      elevation: 3,
      color: Color.fromRGBO(225, 255, 199, 1.0),
      child: Wrap(
        alignment: WrapAlignment.end,
        children: <Widget>[
          Text(
            message,
            textAlign: TextAlign.left,
            style: new TextStyle(
              fontSize: 16,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 7),
            child: Text(
              new DateFormat("hh:mm")
                  .format(DateTime.fromMillisecondsSinceEpoch(time)),
              style: new TextStyle(
                fontSize: 13,
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 4),
            child: buildIconStatus(statusMessage: statusMessage),
          ),
        ],
      ),
    );
  }

  Bubble buildBubbleContactMessage() {
    return Bubble(
      margin: BubbleEdges.only(top: 10, bottom: 1, right: 100),
      alignment: Alignment.topLeft,
      nip: BubbleNip.leftTop,
      elevation: 3,
      child: Wrap(
        alignment: WrapAlignment.end,
        children: <Widget>[
          Text(
            message,
            textAlign: TextAlign.left,
            style: new TextStyle(
              fontSize: 16,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 7),
            child: Text(
              new DateFormat("hh:mm")
                  .format(DateTime.fromMillisecondsSinceEpoch(time * 1000)),
              style: new TextStyle(
                fontSize: 13,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Icon buildIconStatus({StatusMessage statusMessage}) {
  Icon icon;
  switch (statusMessage) {
    case StatusMessage.VISUALIZADO:
      icon = Icon(
        Icons.done_all,
        size: 17,
        color: Colors.blue,
      );
      break;
    case StatusMessage.ENTREGUE:
      icon = Icon(
        Icons.done_all,
        size: 17,
        color: Colors.grey,
      );
      break;
    case StatusMessage.NAO_ENTREGUE:
      icon = Icon(
        Icons.done,
        size: 17,
        color: Colors.grey,
      );
      break;
  }
  return icon;
}
