import 'package:flutter/material.dart';
import 'package:pizza_layout/details/text_toggle_buttons.dart';

typedef OnSizeChange = void Function(String size);

class Size extends StatelessWidget {
  final options = [
    'small',
    'medium',
    'large',
  ];

  final String size;
  final OnSizeChange onSizeChange;

  Size({
    Key? key,
    required this.size,
    required this.onSizeChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Size',
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.left,
          ),
          TextToggleButtons(
            texts: options,
            isSelected: [
              size == options[0],
              size == options[1],
              size == options[2],
            ],
            onPressed: (int index) {
              onSizeChange(options[index]);
            },
          ),
        ],
      ),
    );
  }
}
