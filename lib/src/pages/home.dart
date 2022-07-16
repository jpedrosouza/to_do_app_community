import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:to_do_app_community/src/controllers/home_page_controller/home_page_controller.dart';
import 'package:to_do_app_community/src/widgets/tasks_container.dart';
import 'package:to_do_app_community/src/widgets/tdapc_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomePageController();

  @override
  void initState() {
    super.initState();

    controller.init(context);
    controller.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) => !controller.loading
            ? SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      header(),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(top: 20, left: 20),
                          child: Text(
                            'Lista de tarefas',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: tasks(),
                      ),
                    ],
                  ),
                ),
              )
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }

  Widget header() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      color: const Color(0XFF6F3882),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Realize suas tarefas, ${controller.userData.fullName.split(' ')[0]}!',
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: TDAPCButton(
              'Nova Tarefa',
              const Color(0XFFBD8ECD),
              () {},
              width: MediaQuery.of(context).size.width * 0.7,
            ),
          )
        ],
      ),
    );
  }

  Widget tasks() {
    return const TasksContainer();
  }
}
