import 'package:app1/app/pages/chats/conversations/conversation_controller.dart';
import 'package:app1/app/pages/chats/models/chat_model.dart';

import 'package:mobx/mobx.dart';
part 'chat_controller.g.dart';

class ChatController = _ChatControllerBase with _$ChatController;

abstract class _ChatControllerBase with Store {
  @observable
  List<ChatModel> chatList;

  _ChatControllerBase() {
    getMessages();
  }

  @action
  void getMessages() {
    chatList = [
      ChatModel(
        contato: "João Pedro",
        imageUrl:
            'https://images.pexels.com/photos/736716/pexels-photo-736716.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        time: 1585580646,
        statusMessage: ConversationController().messagesList[0].statusMessage,
        mute: true,
        mensagensNaoLidas: 10,
        msgPreview: ConversationController().messagesList[0].message,
      ),
      ChatModel(
        contato: "Matheus",
        imageUrl:
            'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        time: 1585580645,
        statusMessage: 2,
        mute: true,
        mensagensNaoLidas: 0,
        msgPreview: 'Vou nessa',
      ),
      ChatModel(
        contato: "Maria",
        imageUrl:
            'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        time: 1585580643,
        statusMessage: 1,
        mute: false,
        mensagensNaoLidas: 3,
        msgPreview: 'Ola! Tudo bem?',
      ),
      ChatModel(
        contato: "Carlos",
        imageUrl:
            'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        time: 1585580640,
        statusMessage: 0,
        mute: true,
        mensagensNaoLidas: 0,
        msgPreview: 'Ja ouviu falar da Hinode?',
      ),
      ChatModel(
        contato: "Milla",
        imageUrl:
            'https://images.pexels.com/photos/1024311/pexels-photo-1024311.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        time: 1585580641,
        statusMessage: 0,
        mute: false,
        mensagensNaoLidas: 0,
        msgPreview: 'Vou nessa',
      ),
      ChatModel(
        contato: "Felipe",
        imageUrl:
            'https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        time: 1585580642,
        statusMessage: 1,
        mute: true,
        mensagensNaoLidas: 0,
        msgPreview: 'Vamo la!',
      ),
    ];
    chatList.sort((a, b) => b.time.compareTo(a.time));
  }
}