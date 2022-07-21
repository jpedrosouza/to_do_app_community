import 'package:flutter/material.dart';

class TDAPCDropdownMenu extends StatefulWidget {
  final String labelText;
  final List<String> options;
  final String value;
  final Function(String?) onChanged;
  final double? width;

  const TDAPCDropdownMenu({
    Key? key,
    required this.labelText,
    required this.options,
    required this.value,
    required this.onChanged,
    this.width,
  }) : super(key: key);

  @override
  State<TDAPCDropdownMenu> createState() => _TDAPCDropdownMenuState();
}

class _TDAPCDropdownMenuState extends State<TDAPCDropdownMenu> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? MediaQuery.of(context).size.width * 0.8,
      child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                widget.labelText,
              ),
            ),
          ),
          DropdownButtonHideUnderline(
            child: Container(
              height: 55,
              padding: const EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(80),
              ),
              child: DropdownButton(
                isExpanded: true,
                value: widget.value,
                onChanged: (String? value) => widget.onChanged(value),
                items: widget.options.map(
                  (String value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(
                        value,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 14),
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
