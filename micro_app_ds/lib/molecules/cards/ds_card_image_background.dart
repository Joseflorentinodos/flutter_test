import 'package:flutter/material.dart';

class DsCardImageBackground extends StatelessWidget {
  final String pathImage;
  const DsCardImageBackground({super.key, required this.pathImage});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.network(
        pathImage,
        height: 88,
        width: 88,
        fit: BoxFit.cover,
      ),
    );
  }
}
