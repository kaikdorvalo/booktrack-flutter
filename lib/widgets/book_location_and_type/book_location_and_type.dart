import 'package:booktrack_flutter/constants.dart';
import 'package:booktrack_flutter/widgets/book_type/book_type.dart';
import 'package:flutter/material.dart';

class BookLocationAndType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 20.0, right: 20.0),
      decoration: BoxDecoration(
        color: Color(0xFF61392D),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "livro físico",
            style: TextStyle(
              color: primaryContent,
            ),
          ),
          BookType(),
        ],
      ),
    );
  }
}
