// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_task_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NewTaskPageController on NewTaskPageStore, Store {
  late final _$selectedPeriodicityAtom =
      Atom(name: 'NewTaskPageStore.selectedPeriodicity', context: context);

  @override
  String get selectedPeriodicity {
    _$selectedPeriodicityAtom.reportRead();
    return super.selectedPeriodicity;
  }

  @override
  set selectedPeriodicity(String value) {
    _$selectedPeriodicityAtom.reportWrite(value, super.selectedPeriodicity, () {
      super.selectedPeriodicity = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: 'NewTaskPageStore.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$saveNewTaskAsyncAction =
      AsyncAction('NewTaskPageStore.saveNewTask', context: context);

  @override
  Future<dynamic> saveNewTask() {
    return _$saveNewTaskAsyncAction.run(() => super.saveNewTask());
  }

  @override
  String toString() {
    return '''
selectedPeriodicity: ${selectedPeriodicity},
loading: ${loading}
    ''';
  }
}
