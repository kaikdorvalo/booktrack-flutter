import 'package:booktrack_flutter/constants.dart';
import 'package:flutter/material.dart';

class BookMark extends StatelessWidget {
  String label;

  BookMark({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 3.0, bottom: 3.0, left: 22.0, right: 22.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(0, 107, 14, 1),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
          topLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: primaryContent,
          fontSize: 11.0,
        ),
      ),
    );
  }
}
