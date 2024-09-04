import 'package:flutter/material.dart';
import 'package:micro_app_ds/micro_app_ds.dart';

class DSRating extends StatelessWidget {
  final double? rating;
  const DSRating({super.key, this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        rating?.round() ?? 0,
        (index) => const Icon(
          Icons.star,
          color: DSColors.yellowColor,
          size: 12,
        ),
      ),
    );
  }
}
