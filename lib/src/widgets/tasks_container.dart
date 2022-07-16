import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:to_do_app_community/src/controllers/tasks_container_widget_controller/tasks_container_widget_controller.dart';
import 'package:to_do_app_community/src/widgets/task_item.dart';

class TasksContainer extends StatefulWidget {
  const TasksContainer({Key? key}) : super(key: key);

  @override
  State<TasksContainer> createState() => _TasksContainerState();
}

class _TasksContainerState extends State<TasksContainer> {
  final controller = TasksContainerWidgetController();

  @override
  void initState() {
    super.initState();
    controller.getTasks();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.only(top: 0), child: dailyTasks()),
            Padding(padding: const EdgeInsets.only(top: 30), child: weeklyTasks()),
            Padding(padding: const EdgeInsets.only(top: 30), child: monthlyTasks()),
          ],
        ),
      ),
    );
  }

  Widget dailyTasks() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 5, right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Tarefas diárias',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_circle_rounded),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: ListView.builder(
              itemCount: controller.dailyTasks.length,
              shrinkWrap: true,
              primary: false,
              itemBuilder: ((context, index) {
                return TaskItem(controller.dailyTasks[index].name, () {});
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget weeklyTasks() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 5, right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Tarefas semanais',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_circle_rounded),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: ListView.builder(
              itemCount: controller.weeklyTasks.length,
              shrinkWrap: true,
              primary: false,
              itemBuilder: ((context, index) {
                return TaskItem(controller.weeklyTasks[index].name, () {});
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget monthlyTasks() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 5, right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Tarefas mensais',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_circle_rounded),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: ListView.builder(
              itemCount: controller.monthlyTasks.length,
              shrinkWrap: true,
              primary: false,
              itemBuilder: ((context, index) {
                return TaskItem(controller.monthlyTasks[index].name, () {});
              }),
            ),
          ),
        ],
      ),
    );
  }
}
