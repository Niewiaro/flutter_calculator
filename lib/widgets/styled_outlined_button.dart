import 'package:flutter/material.dart';
import 'package:flutter_calculator/constants.dart';

class StyledOutlinedButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;

  const StyledOutlinedButton({super.key, required this.child, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        side: const BorderSide(color: Colors.white, width: 2),
        shape: RoundedRectangleBorder(borderRadius: BORDER_RADIUS),
      ),
      child: child,
    );
  }
}
