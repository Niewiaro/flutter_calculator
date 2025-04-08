import 'package:flutter/material.dart';

class FullExpandWrapper extends StatelessWidget {
  final Widget child;

  const FullExpandWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox.expand(
        child: child,
      ),
    );
  }
}
