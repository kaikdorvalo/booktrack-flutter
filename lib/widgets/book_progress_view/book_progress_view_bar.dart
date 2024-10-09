import 'package:booktrack_flutter/constants.dart';
import 'package:flutter/material.dart';

class BookProgressViewBar extends StatelessWidget {
  final int progressLevel;

  BookProgressViewBar({required this.progressLevel, super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: 4.0,
          width: constraints.maxWidth, // Usa a largura do pai
          decoration: BoxDecoration(
            color: primaryContent,
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: FractionallySizedBox(
            widthFactor: progressLevel / 100, // Usa progressLevel como fração
            alignment: Alignment.centerLeft, // Alinha à esquerda
            child: Container(
              height: 4.0,
              decoration: BoxDecoration(
                color: success,
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
          ),
        );
      },
    );
  }
}
