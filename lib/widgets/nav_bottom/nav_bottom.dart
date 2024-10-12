import 'package:booktrack_flutter/constants.dart';
import 'package:booktrack_flutter/widgets/nav_bottom/nav_bottom_button/nav_bottom_button.dart';
import 'package:flutter/material.dart';

class NavBottom extends StatefulWidget {
  int selectedIndex;
  List<Widget> screens;
  final Function(int) changePage;

  NavBottom(
      {required this.selectedIndex,
      required this.screens,
      required this.changePage,
      super.key});

  @override
  _NavBottom createState() => _NavBottom();
}

class _NavBottom extends State<NavBottom> {
  void _onItemTapped(int index) {
    if (index < widget.screens.length && index >= 0) {
      widget.changePage(index);
    }
  }

  bool _isSelected(int index, int itemIndex) {
    return index == itemIndex;
  }

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
            GestureDetector(
              onTap: () => _onItemTapped(0),
              child: NavBottomButtom(
                  iconUrl: "icons/home.svg",
                  selected: _isSelected(widget.selectedIndex, 0)),
            ),
            GestureDetector(
              onTap: () => _onItemTapped(1),
              child: NavBottomButtom(
                  iconUrl: "icons/favorite.svg",
                  selected: _isSelected(widget.selectedIndex, 1)),
            ),
            GestureDetector(
              onTap: () => _onItemTapped(2),
              child: NavBottomButtom(
                  iconUrl: "icons/add.svg",
                  selected: _isSelected(widget.selectedIndex, 2)),
            ),
            GestureDetector(
              onTap: () => _onItemTapped(3),
              child: NavBottomButtom(
                  iconUrl: "icons/profile.svg",
                  selected: _isSelected(widget.selectedIndex, 3)),
            ),
          ],
        ),
      ),
    );
  }
}
