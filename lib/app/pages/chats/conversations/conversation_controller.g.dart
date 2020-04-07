// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConversationController on BaseConversationController, Store {
  final _$messagesListAtom =
      Atom(name: 'BaseConversationController.messagesList');

  @override
  ObservableList<ConversationModel> get messagesList {
    _$messagesListAtom.context.enforceReadPolicy(_$messagesListAtom);
    _$messagesListAtom.reportObserved();
    return super.messagesList;
  }

  @override
  set messagesList(ObservableList<ConversationModel> value) {
    _$messagesListAtom.context.conditionallyRunInAction(() {
      super.messagesList = value;
      _$messagesListAtom.reportChanged();
    }, _$messagesListAtom, name: '${_$messagesListAtom.name}_set');
  }

  final _$BaseConversationControllerActionController =
      ActionController(name: 'BaseConversationController');

  @override
  void getMessages() {
    final _$actionInfo =
        _$BaseConversationControllerActionController.startAction();
    try {
      return super.getMessages();
    } finally {
      _$BaseConversationControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addMessage(String message) {
    final _$actionInfo =
        _$BaseConversationControllerActionController.startAction();
    try {
      return super.addMessage(message);
    } finally {
      _$BaseConversationControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'messagesList: ${messagesList.toString()}';
    return '{$string}';
  }
}
