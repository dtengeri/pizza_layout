import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  final Color iconColor;
  final void Function() onPressed;

  const ProfileButton({
    Key? key,
    this.iconColor = Colors.white,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      padding: EdgeInsets.all(0),
      minWidth: 30,
      child: TextButton(
        onPressed: onPressed,
        child: Icon(
          Icons.account_circle_outlined,
          size: 30,
          color: iconColor,
        ),
      ),
    );
  }
}
