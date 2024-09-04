import 'package:flutter/material.dart';

class DSCardContent extends StatelessWidget {
  final Widget content;
  const DSCardContent({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        height: 104,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: content,
      ),
    );
  }
}
