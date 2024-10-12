import 'package:booktrack_flutter/widgets/book_card/book_stars_view/book_star.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookStarsView extends StatelessWidget {
  int starred;

  BookStarsView({required this.starred, super.key});

  List<Widget> loadStars() {
    List<Widget> items = [];
    for (int i = 0; i < 5; i++) {
      Color color = Colors.white;
      if (i < starred) {
        color = Color(0xFFF8E042);
      }

      items.add(
        BookStar(
          color: color,
        ),
      );

      if (i < 4) {
        items.add(
          SizedBox(
            width: 11.0,
          ),
        );
      }
    }

    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: loadStars(),
    );
  }
}
