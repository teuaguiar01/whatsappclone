import 'package:app1/app/pages/calls/calls_controller.dart';
import 'package:app1/app/pages/calls/components/calls_widget.dart';
import 'package:flutter/material.dart';

class CallsList extends StatelessWidget {
  
  final controller = CallsController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.callsList.length,
      itemBuilder: (context, index) {
        return CallsWidget(
          contato: controller.callsList[index].contato,
          imageUrl: controller.callsList[index].imageUrl,
          time: controller.callsList[index].time,
          statusCall: StatusCall.values[controller.callsList[index].statusCall],

        );
      },
    );
  }
}

