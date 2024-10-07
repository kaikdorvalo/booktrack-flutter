import 'package:booktrack_flutter/constants.dart';
import 'package:flutter/material.dart';

InputDecoration baseTextInputDecoration({
  required hintText,
  Widget? suffixIcon,
}) {
  return InputDecoration(
    filled: true,
    fillColor: base100,
    hintText: hintText,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
      borderSide: const BorderSide(color: Colors.transparent),
    ),
    focusedBorder:
        const OutlineInputBorder(borderSide: BorderSide(color: primaryContent)),
    contentPadding: const EdgeInsets.all(10.0),
    hintStyle: const TextStyle(
      color: neutral,
    ),
    suffixIcon: suffixIcon,
  );
}
