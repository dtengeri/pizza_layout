import 'package:flutter/material.dart';
import 'package:pizza_layout/details/size.dart' as s;

class _SizeSelector extends StatelessWidget {
  final String size;
  final Function onPressed;
  final bool active;

  const _SizeSelector({
    Key? key,
    required this.size,
    required this.onPressed,
    required this.active,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 30,
      height: 30,
      padding: EdgeInsets.all(0),
      child: ElevatedButton(
        onPressed: onPressed as void Function()?,
        style: ElevatedButton.styleFrom(
          primary: active ? Colors.red : Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          minimumSize: Size(0, 30),
        ),
        child: Text(
          size,
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}

class SizeSelectorButtons extends StatelessWidget {
  final Widget image;
  final String size;
  final s.OnSizeChange onSizeChange;

  const SizeSelectorButtons({
    Key? key,
    required this.image,
    required this.size,
    required this.onSizeChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 15,
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(120),
              border: Border.all(
                color: Colors.red,
                width: 2,
              ),
            ),
          ),
        ),
        Container(
          width: 110,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.grey[200],
          ),
        ),
        Container(
          width: 120,
          height: 120,
          child: image,
        ),
        Positioned(
          left: 125,
          child: _SizeSelector(
            size: 'S',
            onPressed: () {
              onSizeChange('small');
            },
            active: size == 'small',
          ),
        ),
        Positioned(
          left: 135,
          top: 35,
          child: _SizeSelector(
            size: 'M',
            onPressed: () {
              onSizeChange('medium');
            },
            active: size == 'medium',
          ),
        ),
        Positioned(
          left: 125,
          top: 70,
          child: _SizeSelector(
            size: 'L',
            onPressed: () {
              onSizeChange('large');
            },
            active: size == 'large',
          ),
        ),
      ],
    );
  }
}
