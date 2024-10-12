import 'package:booktrack_flutter/constants.dart';
import 'package:booktrack_flutter/screens/home/pages/home.dart';
import 'package:booktrack_flutter/widgets/nav_bottom/nav_bottom.dart';
import 'package:flutter/material.dart';

class Default extends StatefulWidget {
  Default({super.key});

  @override
  _DefaultState createState() => _DefaultState();
}

class _DefaultState extends State<Default> {
  int selectedIndex = 0;
  List<Widget> _screens = [];

  void changeIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _screens = [
      Home(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(selectedIndex),
      backgroundColor: primary,
      bottomNavigationBar: NavBottom(
        selectedIndex: selectedIndex,
        screens: _screens,
        changePage: changeIndex,
      ),
    );
  }
}
