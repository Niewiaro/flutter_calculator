import 'package:flutter/material.dart';
import 'package:flutter_calculator/widgets/full_expand_wrapper.dart';
import 'package:flutter_calculator/constants.dart';


class TextButtonGroup extends StatelessWidget {
  final void Function(String value) onPressed;

  const TextButtonGroup({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(PADDING),
      decoration: BoxDecoration(
        color: Colors.amber[100],
        borderRadius: BORDER_RADIUS,
      ),
      child: Row(
        children: [
          _buildExpandedButton("1"),
          const SizedBox(width: PADDING),
          _buildExpandedButton("2"),
          const SizedBox(width: PADDING),
          _buildExpandedButton("3"),
        ],
      ),
    );
  }

  Widget _buildExpandedButton(String value) {
    return FullExpandWrapper(
      child: TextButton(
        onPressed: () => onPressed(value),
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.amber[700],
          shape: RoundedRectangleBorder(borderRadius: BORDER_RADIUS),
        ),
        child: Text(value, style: const TextStyle(fontSize: BUTTON_FONT_SIZE)),
      ),
    );
  }
}
