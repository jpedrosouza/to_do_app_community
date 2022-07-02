import 'package:mobx/mobx.dart';
import 'package:to_do_app_community/src/database/controllers/tasks_controller.dart';
import 'package:to_do_app_community/src/database/models/task.dart';
import 'package:to_do_app_community/src/services/auth_service.dart';
part 'tasks_container_widget_controller.g.dart';

class TasksContainerWidgetController = TasksContainerWidgetStore with _$TasksContainerWidgetController;

abstract class TasksContainerWidgetStore with Store {
  late String userId;

  @observable
  List<Task> tasks = [];

  @observable
  List<Task> dailyTasks = [];

  @observable
  List<Task> weeklyTasks = [];

  @observable
  List<Task> monthlyTasks = [];

  @action
  Future getTasks() async {
    userId = await AuthService().getUserId();
    tasks = await TaksController().getTasksFromUserId(userId);

    separateTasks();
  }

  @action
  void separateTasks() {
    dailyTasks = tasks.where((task) => task.frequency == 'daily').toList();
    weeklyTasks = tasks.where((task) => task.frequency == 'weekly').toList();
    monthlyTasks = tasks.where((task) => task.frequency == 'monthly').toList();

    print(tasks.length);
    print(tasks[0].toMap());
  }
}