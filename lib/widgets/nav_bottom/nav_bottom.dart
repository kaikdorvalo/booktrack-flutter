import 'package:booktrack_flutter/constants.dart';
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
      height: 120.0,
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: base100,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
