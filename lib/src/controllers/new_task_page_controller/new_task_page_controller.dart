import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:to_do_app_community/src/database/controllers/tasks_controller.dart';
import 'package:to_do_app_community/src/database/controllers/users_controller.dart';
import 'package:to_do_app_community/src/database/models/task.dart';
import 'package:to_do_app_community/src/services/auth_service.dart';

part 'new_task_page_controller.g.dart';

class NewTaskPageController = NewTaskPageStore with _$NewTaskPageController;

abstract class NewTaskPageStore with Store {
  late BuildContext pageContext;
  late VoidCallback onBack;

  TextEditingController taskNameController = TextEditingController();

  List<String> periods = ['Diária', 'Semanal', 'Mensal'];

  @observable
  String selectedPeriodicity = 'Diária';

  @observable
  bool loading = false;

  void init(BuildContext pageContext, VoidCallback onBack) {
    this.pageContext = pageContext;
    this.onBack = onBack;
  }

  @action
  Future saveNewTask() async {
    loading = true;

    String periodGlobalFormat = selectedPeriodicity.toLowerCase();

    /// Convert periodicity to global format (english)

    if (periodGlobalFormat == 'diária') {
      periodGlobalFormat = 'daily';
    } else if (periodGlobalFormat == 'semanal') {
      periodGlobalFormat = 'weekly';
    } else if (periodGlobalFormat == 'mensal') {
      periodGlobalFormat = 'monthly';
    }

    String authenticatedUserId = await AuthService().getUserId();
    DocumentReference userDocumentReference = await UsersController().getUserDocumentReference(authenticatedUserId);
    Task newTask = Task(null, taskNameController.text, periodGlobalFormat, authenticatedUserId, userDocumentReference);

    await TaksController().createTask(newTask);

    onBack();
    back();

    loading = false;
  }

  void back() {
    Navigator.pop(pageContext);
  }
}
