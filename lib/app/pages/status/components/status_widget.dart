import 'package:app1/app/shared/components/contact_picture_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({
    Key key,
    @required this.imageUrl,
    @required this.contato,
    @required this.time,
    @required this.hasViewed,
  }) : super(key: key);

  final String imageUrl;
  final String contato;
  final int time;
  final bool hasViewed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                  width: 3, color: hasViewed ? Colors.grey : Colors.green),
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),
            child: ContactPicture(imageUrl: imageUrl),
          ),
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
                      ]),
                  Row(
                    children: <Widget>[
                      Text(
                          new DateFormat("dd/MM, hh:mm").format(
                              DateTime.fromMillisecondsSinceEpoch(time * 1000)),
                          style: new TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
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
}

class RecentUpdatesBlock extends StatelessWidget {
  const RecentUpdatesBlock({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        border: Border(
            top: BorderSide(
          width: 0.35,
          color: Colors.black,
        )),
      ),
      child: Text(
        'Recent Updates',
        style: new TextStyle(
          color: Colors.green,
          fontSize: 19,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
        ),
      ),
      alignment: Alignment(-0.85, 0.0),
    );
  }
}
