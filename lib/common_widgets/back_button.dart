import 'package:flutter/material.dart';

class BackButtons extends StatelessWidget {
  final Function()? onTap;
  const BackButtons({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Icon(Icons.arrow_back));
  }
}