import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookStar extends StatelessWidget {
  Color color;

  BookStar({required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "icons/star.svg",
      width: 12.0,
      height: 12.0,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    );
  }
}
