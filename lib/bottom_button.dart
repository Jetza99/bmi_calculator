import 'package:flutter/material.dart';
import 'constants.dart';


class BottomButton extends StatelessWidget {

  BottomButton({required this.label, this.onTap});

  final String label;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: SafeArea(child: Center(child: Text(label, style: kLargeTextStyle,))),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}