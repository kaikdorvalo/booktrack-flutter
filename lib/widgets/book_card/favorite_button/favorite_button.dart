import 'package:booktrack_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavoriteButton extends StatelessWidget {
  bool favorited;

  FavoriteButton({required this.favorited, super.key});

  Color setFavoriteColor(bool active) {
    if (active) {
      return const Color(0xFFF8E042);
    }

    return primaryContent;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.0,
      width: 20.0,
      child: SvgPicture.asset(
        "icons/favorite.svg",
        width: 20.0,
        height: 20.0,
        colorFilter:
            ColorFilter.mode(setFavoriteColor(favorited), BlendMode.srcIn),
      ),
    );
  }
}
