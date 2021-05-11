import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DashedCircle extends StatelessWidget {
  final double? diameter;

  const DashedCircle({Key? key, this.diameter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.Circle,
      color: Colors.white,
      strokeWidth: 1,
      dashPattern: [6, 8],
      child: Container(
        width: diameter,
        height: diameter,
      ),
    );
  }
}
