import 'package:flutter/material.dart';

class PageFormat extends StatelessWidget {
  final Widget child;

  const PageFormat({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: child,
    );
  }
}
