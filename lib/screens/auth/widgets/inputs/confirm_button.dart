import 'package:flutter/material.dart';

class ConfirmButton extends StatefulWidget {
  @override
  _ConfirmButton createState() => _ConfirmButton();
}

class _ConfirmButton extends State {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {},
            child: GestureDetector(
              onLongPress: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Tap'),
                ));
              },
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text('Flat Button'),
              ),
            ),
          ),
        )
      ],
    );
  }
}
