
import 'package:app1/app/pages/calls/models/calls_model.dart';

class CallsController {

  List<CallsModel> callsList;

  CallsController() {
    getMessages();
  }

  void getMessages() {
    callsList = [
    CallsModel(
      contato: "João Pedro",
      imageUrl:
          'https://images.pexels.com/photos/736716/pexels-photo-736716.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      time: 1585580640,
      statusCall: 2,
    ),
    CallsModel(
      contato: "Matheus",
      imageUrl:
          'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      time: 1585580645,
      statusCall: 2,
    ),
    CallsModel(
      contato: "Maria",
      imageUrl:
          'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      time: 1585580644,
      statusCall: 0,
    ),
    CallsModel(
      contato: "Carlos",
      imageUrl:
          'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      time: 1585580643,
      statusCall: 0,
    ),
    CallsModel(
      contato: "Milla",
      imageUrl:
          'https://images.pexels.com/photos/1024311/pexels-photo-1024311.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      time: 1585580642,
      statusCall: 3,
    ),
    CallsModel(
      contato: "Felipe",
      imageUrl:
          'https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      time: 1585580641,
      statusCall: 1,
    ),
  ];
  callsList.sort((a, b) => b.time.compareTo(a.time));
  }
}