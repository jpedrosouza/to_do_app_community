import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:to_do_app_community/src/controllers/new_task_page_controller/new_task_page_controller.dart';
import 'package:to_do_app_community/src/widgets/tdapc_button.dart';
import 'package:to_do_app_community/src/widgets/tdapc_dropdown_menu.dart';
import 'package:to_do_app_community/src/widgets/tdapc_text_input.dart';

class NewTaskPage extends StatefulWidget {
  final VoidCallback onBack;

  const NewTaskPage(this.onBack, {Key? key}) : super(key: key);

  @override
  State<NewTaskPage> createState() => _NewTaskPageState();
}

class _NewTaskPageState extends State<NewTaskPage> {
  final controller = NewTaskPageController();

  @override
  void initState() {
    controller.init(context, widget.onBack);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova Tarefa'),
      ),
      body: Observer(
        builder: (_) => !controller.loading
            ? Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                alignment: Alignment.center,
                child: Form(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TDAPCTextInput(
                        'Nome da tarefa',
                        false,
                        width: MediaQuery.of(context).size.width * 0.8,
                        centerTitle: true,
                        controller: controller.taskNameController,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TDAPCDropdownMenu(
                          labelText: 'Periodicidade',
                          options: controller.periods,
                          value: controller.selectedPeriodicity,
                          onChanged: (String? value) {
                            if (value != null) {
                              setState(() {
                                controller.selectedPeriodicity = value;
                              });
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: TDAPCButton(
                          'Salvar',
                          const Color(0XFF6F3882),
                          () => controller.saveNewTask(),
                          width: MediaQuery.of(context).size.width * 0.8,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
