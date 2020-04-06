import 'package:app1/app/pages/status/status_model.dart';

class StatusController {
  final String myImage =
      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500';
  List<StatusModel> statusList;

  StatusController() {
    getStatus();
  }

  void getStatus() {
    statusList = [
      StatusModel(
        contato: "João Pedro",
        imageUrl:
            'https://images.pexels.com/photos/736716/pexels-photo-736716.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        time: 1585580641,
        hasViewed: true,
      ),
      StatusModel(
        contato: "Matheus",
        imageUrl:
            'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        time: 1585580642,
        hasViewed: false,
      ),
      StatusModel(
        contato: "Maria",
        imageUrl:
            'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        time: 1585580643,
        hasViewed: true,
      ),
      StatusModel(
        contato: "Carlos",
        imageUrl:
            'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        time: 1585580644,
        hasViewed: false,
      ),
      StatusModel(
        contato: "Milla",
        imageUrl:
            'https://images.pexels.com/photos/1024311/pexels-photo-1024311.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        time: 1585580645,
        hasViewed: false,
      ),
      StatusModel(
        contato: "Felipe",
        imageUrl:
            'https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        time: 1585580640,
        hasViewed: true,
      ),
    ];
    statusList.sort((a, b) => b.time.compareTo(a.time));
  }
}
