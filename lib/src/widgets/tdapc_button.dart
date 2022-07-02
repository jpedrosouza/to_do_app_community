import 'package:flutter/material.dart';

class TDAPCButton extends StatefulWidget {
  final String buttonTitle;
  final Color color;
  final VoidCallback onClick;
  final double? width;

  const TDAPCButton(
    this.buttonTitle,
    this.color,
    this.onClick, {
    Key? key,
    this.width,
  }) : super(key: key);

  @override
  State<TDAPCButton> createState() => _TDAPCButtonState();
}

class _TDAPCButtonState extends State<TDAPCButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => widget.onClick(),
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size>(
          Size(widget.width != null ? widget.width! : double.infinity, 50),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(widget.color),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
      child: Text(widget.buttonTitle),
    );
  }
}
