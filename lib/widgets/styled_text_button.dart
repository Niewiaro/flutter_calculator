import 'package:flutter/material.dart';
import 'package:flutter_calculator/constants.dart';

class StyledTextButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;

  const StyledTextButton({super.key, required this.child, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.amber[700],
        shape: RoundedRectangleBorder(borderRadius: BORDER_RADIUS),
      ),
      child: child,
    );
  }
}
