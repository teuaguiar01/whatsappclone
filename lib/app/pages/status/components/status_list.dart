import 'package:app1/app/pages/status/components/status_widget.dart';
import 'package:app1/app/pages/status/status_model.dart';
import 'package:flutter/material.dart';

class StatusList extends StatelessWidget {
  final List<StatusModel> statusList;

  const StatusList({
    Key key,
    @required this.statusList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: statusList.length,
      itemBuilder: (context, index) {
        return StatusWidget(
            imageUrl: statusList[index].imageUrl,
            contato: statusList[index].contato,
            time: statusList[index].time,
            hasViewed: statusList[index].hasViewed
            );
      },
    );
  }
}