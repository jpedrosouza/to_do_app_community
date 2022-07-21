import 'package:flutter/material.dart';

class TDAPCTextInput extends StatefulWidget {
  final String labelText;
  final bool obscureText;
  final TextEditingController? controller;
  final double? width;
  final TextInputType? textInputType;
  final bool? centerTitle;

  const TDAPCTextInput(
    this.labelText,
    this.obscureText, {
    this.controller,
    this.width,
    this.textInputType,
    this.centerTitle,
    Key? key,
  }) : super(key: key);

  @override
  State<TDAPCTextInput> createState() => _TDAPCTextInputState();
}

class _TDAPCTextInputState extends State<TDAPCTextInput> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Visibility(
            visible: widget.centerTitle ?? false,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(widget.labelText),
            ),
          ),
          TextFormField(
            controller: widget.controller,
            validator: (value) => value!.isEmpty ? 'Campo obrigatório' : null,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              label: Visibility(
                visible: widget.centerTitle == null,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(widget.labelText),
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide.none,
              ),
            ),
            obscureText: widget.obscureText,
            keyboardType: widget.textInputType,
          ),
        ],
      ),
    );
  }
}
