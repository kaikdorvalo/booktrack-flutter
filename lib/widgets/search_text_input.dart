import 'package:booktrack_flutter/constants.dart';
import 'package:flutter/material.dart';

class SearchTextInput extends StatefulWidget {
  final String hintText;

  SearchTextInput({required this.hintText, super.key});

  @override
  _SearchTextInput createState() => _SearchTextInput();
}

class _SearchTextInput extends State<SearchTextInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: base100,
        hintText: widget.hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: primaryContent)),
        contentPadding: const EdgeInsets.all(25.0),
        hintStyle: const TextStyle(
          color: neutral,
        ),
        suffixIcon: Icon(
          Icons.search,
          color: neutral,
        ),
      ),
    );
  }
}
