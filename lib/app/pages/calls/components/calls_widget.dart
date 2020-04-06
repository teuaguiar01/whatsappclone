import 'package:app1/app/shared/components/contact_picture_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CallsWidget extends StatelessWidget {
  final String contato;
  final String imageUrl;
  final StatusCall statusCall;
  final int time;

  const CallsWidget({
    Key key,
    @required this.contato,
    @required this.imageUrl,
    @required this.statusCall,
    @required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ContactPicture(imageUrl: imageUrl),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                  width: 0.15,
                  color: Colors.grey,
                )),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          contato,
                          style: new TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.videocam,
                          color: Color(0xFF075E55),
                        ),
                      ]),
                  Row(
                    children: <Widget>[
                      buildIconCall(statusCall: statusCall),
                      Text(
                          new DateFormat("dd/MM, hh:mm").format(
                              DateTime.fromMillisecondsSinceEpoch(time * 1000)),
                          style: new TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                          )),
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

  Icon buildIconCall({StatusCall statusCall}) {
    Icon icon;
    switch (statusCall) {
      case StatusCall.INCOMPLETE:
        icon = Icon(
          Icons.call_made,
          size: 15,
          color: Colors.red,
        );
        break;
      case StatusCall.MADE:
        icon = Icon(
          Icons.call_made,
          size: 15,
          color: Colors.green,
        );
        break;
      case StatusCall.MISSED:
        icon = Icon(
          Icons.call_received,
          size: 15,
          color: Colors.red,
        );
        break;
      case StatusCall.RECEIVED:
        icon = Icon(
          Icons.call_received,
          size: 15,
          color: Colors.green,
        );
        break;
    }
    return icon;
  }
}

enum StatusCall { RECEIVED, MADE, INCOMPLETE, MISSED }
