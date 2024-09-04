import 'package:flutter/material.dart';
import 'package:micro_app_ds/micro_app_ds.dart';

enum Status { open, closed, star }

class DSCardList extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final Status? status;
  final double? rating;
  final String? pathimage;
  final void Function()? onTap;
  const DSCardList({
    super.key,
    required this.title,
    required this.subTitle,
    this.status,
    required this.rating,
    required this.pathimage,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: DSCardContent(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DsCardImageBackground(pathImage: pathimage ?? ''),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title ?? '',
                    style: DSTypographies.medium,
                  ),
                  Text(
                    subTitle ?? '',
                    style: DSTypographies.extraSmall,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DSRating(rating: rating),
                      DSStatus(status: status),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
