import 'package:flutter/material.dart';
import 'package:flutter_calculator/constants.dart';

class StyledElevatedButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;

  const StyledElevatedButton({super.key, required this.child, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 10,
        backgroundColor: Colors.teal[700],
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BORDER_RADIUS),
      ),
      child: child,
    );
  }
}
