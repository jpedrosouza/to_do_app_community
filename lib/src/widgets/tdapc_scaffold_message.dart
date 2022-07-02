import 'package:flutter/material.dart';

class TDAPCScaffoldMessage {
  late final BuildContext context;
  late final String message;
  late final Color backgroundColor;

  TDAPCScaffoldMessage(this.context, this.message, this.backgroundColor);

  void show() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: backgroundColor,
      ),
    );
  }
}
