import 'package:flutter/material.dart';

class TextToggleButtons extends StatelessWidget {
  final List<String>? texts;
  final List<bool>? isSelected;
  final void Function(int index)? onPressed;

  const TextToggleButtons({
    Key? key,
    this.texts,
    this.isSelected,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: Center(
        child: LayoutBuilder(
          builder: (context, constraints) => ToggleButtons(
            constraints: BoxConstraints.expand(
              width: constraints.maxWidth / 3 - 15,
              height: 30,
            ),
            borderRadius: BorderRadius.circular(5),
            selectedBorderColor: Colors.red,
            selectedColor: Colors.red,
            fillColor: Colors.white,
            children: texts!.map((t) => Text(t)).toList(),
            onPressed: onPressed,
            isSelected: isSelected!,
          ),
        ),
      ),
    );
  }
}
