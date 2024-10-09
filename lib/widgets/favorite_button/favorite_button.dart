import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavoriteButton extends StatelessWidget {
  Color color;

  FavoriteButton({required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.0,
      width: 20.0,
      child: SvgPicture.asset(
        "icons/favorite.svg",
        width: 20.0,
        height: 20.0,
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      ),
    );
  }
}
