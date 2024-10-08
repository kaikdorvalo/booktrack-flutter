import 'package:booktrack_flutter/constants.dart';
import 'package:flutter/material.dart';

class CheckboxInput extends StatefulWidget {
  bool isChecked;
  String text;

  CheckboxInput({required this.isChecked, required this.text, super.key});

  @override
  _CheckboxInput createState() => _CheckboxInput();
}

class _CheckboxInput extends State<CheckboxInput> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: widget.isChecked,
          onChanged: (bool? value) {
            setState(() {
              widget.isChecked = value!;
            });
          },
        ),
        Text(
          widget.text,
          style: TextStyle(
            color: neutral,
          ),
        ),
      ],
    );
  }
}
