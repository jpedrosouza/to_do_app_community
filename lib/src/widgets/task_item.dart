import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final String name;
  final VoidCallback onClick;

  const TaskItem(this.name, this.onClick, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.radio_button_unchecked),
      ),
      title: Text(name),
      onTap: () => onClick(),
    );
  }
}
