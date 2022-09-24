import 'package:flutter/material.dart';

class ProductColorDot extends StatelessWidget {
  const ProductColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);
  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        height: 30,
        width: 30,
        margin: const EdgeInsets.only(top: 10, left: 20),
        decoration: BoxDecoration(
            border: Border.all(color: isSelected ? color : Colors.transparent),
            shape: BoxShape.circle),
        child: Container(
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        ),
      ),
    );
  }
}
