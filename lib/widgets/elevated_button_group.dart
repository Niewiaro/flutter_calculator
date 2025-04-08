import 'package:flutter/material.dart';
import 'package:flutter_calculator/constants.dart';
import 'package:flutter_calculator/widgets/full_expand_wrapper.dart';

class ElevatedButtonGroup extends StatelessWidget {
  final void Function(String value) onPressed;

  const ElevatedButtonGroup({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(PADDING),
      decoration: BoxDecoration(
        color: Colors.teal[100],
        borderRadius: BORDER_RADIUS,
      ),
      child: Row(
        children: [
          _buildExpandedButton("4"),
          const SizedBox(width: PADDING),
          _buildExpandedButton("5"),
          const SizedBox(width: PADDING),
          _buildExpandedButton("6"),
        ],
      ),
    );
  }

  Widget _buildExpandedButton(String value) {
    return FullExpandWrapper(
      child: ElevatedButton(
        onPressed: () => onPressed(value),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal[700],
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BORDER_RADIUS,
          ),
        ),
        child: Text(
          value,
          style: const TextStyle(fontSize: BUTTON_FONT_SIZE),
        ),
      ),
    );
  }
}
