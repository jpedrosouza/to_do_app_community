// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_container_widget_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TasksContainerWidgetController on TasksContainerWidgetStore, Store {
  late final _$tasksAtom =
      Atom(name: 'TasksContainerWidgetStore.tasks', context: context);

  @override
  List<Task> get tasks {
    _$tasksAtom.reportRead();
    return super.tasks;
  }

  @override
  set tasks(List<Task> value) {
    _$tasksAtom.reportWrite(value, super.tasks, () {
      super.tasks = value;
    });
  }

  late final _$dailyTasksAtom =
      Atom(name: 'TasksContainerWidgetStore.dailyTasks', context: context);

  @override
  List<Task> get dailyTasks {
    _$dailyTasksAtom.reportRead();
    return super.dailyTasks;
  }

  @override
  set dailyTasks(List<Task> value) {
    _$dailyTasksAtom.reportWrite(value, super.dailyTasks, () {
      super.dailyTasks = value;
    });
  }

  late final _$weeklyTasksAtom =
      Atom(name: 'TasksContainerWidgetStore.weeklyTasks', context: context);

  @override
  List<Task> get weeklyTasks {
    _$weeklyTasksAtom.reportRead();
    return super.weeklyTasks;
  }

  @override
  set weeklyTasks(List<Task> value) {
    _$weeklyTasksAtom.reportWrite(value, super.weeklyTasks, () {
      super.weeklyTasks = value;
    });
  }

  late final _$monthlyTasksAtom =
      Atom(name: 'TasksContainerWidgetStore.monthlyTasks', context: context);

  @override
  List<Task> get monthlyTasks {
    _$monthlyTasksAtom.reportRead();
    return super.monthlyTasks;
  }

  @override
  set monthlyTasks(List<Task> value) {
    _$monthlyTasksAtom.reportWrite(value, super.monthlyTasks, () {
      super.monthlyTasks = value;
    });
  }

  late final _$getTasksAsyncAction =
      AsyncAction('TasksContainerWidgetStore.getTasks', context: context);

  @override
  Future<dynamic> getTasks() {
    return _$getTasksAsyncAction.run(() => super.getTasks());
  }

  late final _$TasksContainerWidgetStoreActionController =
      ActionController(name: 'TasksContainerWidgetStore', context: context);

  @override
  void separateTasks() {
    final _$actionInfo = _$TasksContainerWidgetStoreActionController
        .startAction(name: 'TasksContainerWidgetStore.separateTasks');
    try {
      return super.separateTasks();
    } finally {
      _$TasksContainerWidgetStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tasks: ${tasks},
dailyTasks: ${dailyTasks},
weeklyTasks: ${weeklyTasks},
monthlyTasks: ${monthlyTasks}
    ''';
  }
}
