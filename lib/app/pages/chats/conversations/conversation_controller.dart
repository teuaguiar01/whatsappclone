import 'package:app1/app/pages/chats/conversations/models/conversation_model.dart';
import 'package:mobx/mobx.dart';

part 'conversation_controller.g.dart';

class ConversationController = BaseConversationController
    with _$ConversationController;

abstract class BaseConversationController with Store {
  @observable
  ObservableList<ConversationModel> messagesList =
      <ConversationModel>[].asObservable();

  BaseConversationController() {
    getMessages();
  }

  @action
  void getMessages() {
    messagesList.addAll([
      ConversationModel(
        message: 'live do gustavo lima',
        isMe: true,
        time: 1585581827,
        statusMessage: 2,
      ),
      ConversationModel(
        message: '#sextou',
        isMe: false,
        time: 1585580867,
        statusMessage: 0,
      ),
      ConversationModel(
        message: 'no u',
        isMe: true,
        time: 1585580327,
        statusMessage: 0,
      ),
      ConversationModel(
        message: 'Hello you',
        isMe: false,
        time: 1585579427,
        statusMessage: 0,
      ),
      ConversationModel(
        message: 'Hellow!',
        isMe: true,
        time: 1585578587,
        statusMessage: 0,
      ),
    ]);
    sortList();
  }

  @action
  addMessage(String message) {
    ConversationModel temp = new ConversationModel(
      message: message,
      isMe: true,
      time: DateTime.now().millisecondsSinceEpoch,
      statusMessage: 2,
    );
    //messagesList.addAll({temp});
    messagesList.add(temp);
    sortList();
  }

  void sortList() {
    messagesList.sort((a, b) => b.time.compareTo(a.time));
  }
}
