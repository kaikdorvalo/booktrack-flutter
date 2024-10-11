import 'package:booktrack_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FilterButton extends StatefulWidget {
  @override
  _FilterButton createState() => _FilterButton();
}

class _FilterButton extends State<FilterButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.0,
      width: 65.0,
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
              child: Center(
                child: SvgPicture.asset(
                  'icons/adjust.svg',
                  width: 29.0,
                  height: 29.0,
                ),
              )),
        ),
      ),
    );
  }
}
