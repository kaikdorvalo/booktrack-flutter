import 'package:booktrack_flutter/constants.dart';
import 'package:booktrack_flutter/widgets/nav_bottom/nav_bottom.dart';
import 'package:flutter/material.dart';

class Default extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      bottomNavigationBar: NavBottom(),
    );
  }
}
