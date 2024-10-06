import 'package:booktrack_flutter/constants.dart';
import 'package:booktrack_flutter/screens/auth/decorations/base_text_input_decoration.dart';
import 'package:flutter/material.dart';

class EmailTextInput extends StatefulWidget {
  @override
  _EmailTextInput createState() => _EmailTextInput();
}

class _EmailTextInput extends State {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: baseTextInputDecoration(hintText: "Your email here"),
      style: const TextStyle(
        color: primaryContent,
      ),
    );
  }
}
