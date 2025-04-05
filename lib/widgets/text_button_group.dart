import 'package:flutter/material.dart';

class TextButtonGroup extends StatelessWidget {
  final void Function(String value) onPressed;

  const TextButtonGroup({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.amber[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          _buildExpandedButton("1"),
          const SizedBox(width: 20),
          _buildExpandedButton("2"),
          const SizedBox(width: 20),
          _buildExpandedButton("3"),
        ],
      ),
    );
  }

  Widget _buildExpandedButton(String value) {
    return Expanded(
      child: SizedBox.expand(
        child: TextButton(
          onPressed: () => onPressed(value),
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.amber[700],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(value, style: const TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
