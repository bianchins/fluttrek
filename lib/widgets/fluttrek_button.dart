import 'package:flutter/material.dart';

class FluttrekButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;

  const FluttrekButton({required this.child, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      width: double.infinity,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(16),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          side: const BorderSide(width: 1.0, color: Colors.white),
        ),
        child: child,
        onPressed: onPressed,
      ),
    );
  }
}
