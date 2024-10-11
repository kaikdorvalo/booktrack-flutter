import 'package:booktrack_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavBottomButtom extends StatelessWidget {
  String iconUrl;
  bool selected;

  NavBottomButtom({required this.iconUrl, required this.selected, super.key});

  Color setButtonBackground() {
    if (selected) {
      return accent;
    } else {
      return Colors.transparent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: setButtonBackground(),
      padding: const EdgeInsets.all(10.0),
      child: SvgPicture.asset(
        iconUrl,
        width: 25.0,
        height: 25.0,
        colorFilter: const ColorFilter.mode(primaryContent, BlendMode.srcIn),
      ),
    );
  }
}
