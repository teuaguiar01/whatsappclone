import 'package:app1/app/pages/status/components/status_list.dart';
import 'package:app1/app/pages/status/components/status_widget.dart';
import 'package:app1/app/pages/status/status_controller.dart';
import 'package:app1/app/shared/components/contact_picture_widget.dart';
import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({
    Key key,
  }) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  final controller = StatusController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ContactPicture(imageUrl: controller.myImage),
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0, left: 28.0),
                    child: buildIconAddStatus(),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'My Status',
                              style: new TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ]),
                      Row(
                        children: <Widget>[
                          Text('Tap to add your status',
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
        ),
        RecentUpdatesBlock(),
        Expanded(
          child: StatusList(
            statusList: controller.statusList,
          ),
        ),
      ],
    );
  }

  Icon buildIconAddStatus() => Icon(
        Icons.add_circle,
        color: Colors.green,
        size: 25,
      );
}


