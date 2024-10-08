import 'package:booktrack_flutter/constants.dart';
import 'package:flutter/material.dart';

class ConfirmButton extends StatefulWidget {
  final String buttonText;

  ConfirmButton({required this.buttonText, super.key});

  @override
  _ConfirmButtonState createState() => _ConfirmButtonState();
}

class _ConfirmButtonState extends State<ConfirmButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Material(
          color: accent,
          borderRadius: BorderRadius.circular(15.0),
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(15.0),
            child: GestureDetector(
              onLongPress: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Tap'),
                ));
              },
              child: Container(
                height: 67.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.buttonText,
                      style: const TextStyle(
                        color: primaryContent,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ))
      ],
    );
  }
}
