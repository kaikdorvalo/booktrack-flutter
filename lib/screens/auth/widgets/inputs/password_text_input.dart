import 'package:booktrack_flutter/constants.dart';
import 'package:booktrack_flutter/screens/auth/decorations/base_text_input_decoration.dart';
import 'package:flutter/material.dart';

class PasswordTextInput extends StatefulWidget {
  @override
  _PasswordTextInput createState() => _PasswordTextInput();
}

class _PasswordTextInput extends State {
  bool _passwordInVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: baseTextInputDecoration(
        hintText: "Your password here",
        suffixIcon: IconButton(
          icon: Icon(
            _passwordInVisible ? Icons.visibility_off : Icons.visibility,
            color: Theme.of(context).primaryColorDark,
          ),
          onPressed: () {
            setState(() {
              _passwordInVisible = !_passwordInVisible;
            });
          },
        ),
      ),
      style: const TextStyle(
        color: primaryContent,
      ),
      obscureText: _passwordInVisible,
      autocorrect: false,
      enableSuggestions: false,
    );
  }
}
