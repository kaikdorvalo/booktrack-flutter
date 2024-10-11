import 'package:booktrack_flutter/constants.dart';
import 'package:booktrack_flutter/widgets/nav_bottom/nav_bottom_button/nav_bottom_button.dart';
import 'package:flutter/material.dart';

class NavBottom extends StatefulWidget {
  NavBottom({super.key});

  @override
  _NavBottom createState() => _NavBottom();
}

class _NavBottom extends State<NavBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: base100,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NavBottomButtom(iconUrl: "icons/home.svg", selected: true),
            NavBottomButtom(iconUrl: "icons/favorite.svg", selected: true),
            NavBottomButtom(iconUrl: "icons/add.svg", selected: true),
            NavBottomButtom(iconUrl: "icons/profile.svg", selected: true),
          ],
        ),
      ),
    );
  }
}
