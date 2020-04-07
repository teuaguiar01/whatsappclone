// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StatusController on _StatusControllerBase, Store {
  final _$statusListAtom = Atom(name: '_StatusControllerBase.statusList');

  @override
  List<StatusModel> get statusList {
    _$statusListAtom.context.enforceReadPolicy(_$statusListAtom);
    _$statusListAtom.reportObserved();
    return super.statusList;
  }

  @override
  set statusList(List<StatusModel> value) {
    _$statusListAtom.context.conditionallyRunInAction(() {
      super.statusList = value;
      _$statusListAtom.reportChanged();
    }, _$statusListAtom, name: '${_$statusListAtom.name}_set');
  }

  final _$_StatusControllerBaseActionController =
      ActionController(name: '_StatusControllerBase');

  @override
  void getStatus() {
    final _$actionInfo = _$_StatusControllerBaseActionController.startAction();
    try {
      return super.getStatus();
    } finally {
      _$_StatusControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'statusList: ${statusList.toString()}';
    return '{$string}';
  }
}
