import 'package:flutter/material.dart';

class ReuseContainer extends StatelessWidget {
  ReuseContainer({required this.colour, this.cardChild, this.onPress});
  final Color colour;
  final Widget? cardChild;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: colour,
        ),
      ),
    );
  }
}
