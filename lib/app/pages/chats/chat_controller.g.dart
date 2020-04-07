// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChatController on _ChatControllerBase, Store {
  final _$chatListAtom = Atom(name: '_ChatControllerBase.chatList');

  @override
  List<ChatModel> get chatList {
    _$chatListAtom.context.enforceReadPolicy(_$chatListAtom);
    _$chatListAtom.reportObserved();
    return super.chatList;
  }

  @override
  set chatList(List<ChatModel> value) {
    _$chatListAtom.context.conditionallyRunInAction(() {
      super.chatList = value;
      _$chatListAtom.reportChanged();
    }, _$chatListAtom, name: '${_$chatListAtom.name}_set');
  }

  final _$_ChatControllerBaseActionController =
      ActionController(name: '_ChatControllerBase');

  @override
  void getMessages() {
    final _$actionInfo = _$_ChatControllerBaseActionController.startAction();
    try {
      return super.getMessages();
    } finally {
      _$_ChatControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'chatList: ${chatList.toString()}';
    return '{$string}';
  }
}
