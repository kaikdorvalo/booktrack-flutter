import 'package:booktrack_flutter/constants.dart';
import 'package:flutter/material.dart';

class BookType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "história",
          style: TextStyle(
            color: primaryContent,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Container(
          width: 13.0,
          height: 13.0,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20.0),
          ),
        )
      ],
    );
  }
}
