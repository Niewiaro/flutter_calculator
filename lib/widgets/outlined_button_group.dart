import 'package:flutter/material.dart';
import 'package:flutter_calculator/constants.dart';
import 'package:flutter_calculator/widgets/full_expand_wrapper.dart';

class OutlinedButtonGroup extends StatelessWidget {
  final void Function(String value) onPressed;

  const OutlinedButtonGroup({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(PADDING),
      decoration: BoxDecoration(
        color: Colors.indigoAccent[100],
        borderRadius: BORDER_RADIUS,
      ),
      child: Row(
        children: [
          _buildExpandedButton("7"),
          const SizedBox(width: PADDING),
          _buildExpandedButton("8"),
          const SizedBox(width: PADDING),
          _buildExpandedButton("9"),
        ],
      ),
    );
  }

  Widget _buildExpandedButton(String value) {
    return FullExpandWrapper(
      child: OutlinedButton(
        onPressed: () => onPressed(value),
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
          side: const BorderSide(color: Colors.white, width: 5),
          shape: RoundedRectangleBorder(borderRadius: BORDER_RADIUS),
        ),
        child: Text(
          value,
          style: const TextStyle(fontSize: BUTTON_FONT_SIZE),
        ),
      ),
    );
  }
}
