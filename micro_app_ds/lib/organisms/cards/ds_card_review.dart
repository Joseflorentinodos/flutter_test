import 'package:flutter/material.dart';
import 'package:micro_app_ds/micro_app_ds.dart';

class DSCardReview extends StatelessWidget {
  final double? rating;
  final String? review;
  final String? photo;
  final String? nameUser;
  const DSCardReview(
      {super.key, this.rating, this.review, this.nameUser, this.photo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DSRating(rating: rating),
        const SizedBox(height: 8),
        Text(
          review ?? '',
          style: DSTypographies.medium.copyWith(
            fontWeight: DSFontWeights.regular,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            CircleAvatar(backgroundImage: NetworkImage(photo ?? '')),
            const SizedBox(width: 8),
            Text(
              nameUser ?? '',
              style: DSTypographies.extraSmall,
            ),
          ],
        ),
        const SizedBox(height: 8),
        const Divider(),
        const SizedBox(height: 16),
      ],
    );
  }
}
