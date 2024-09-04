import 'package:flutter/material.dart';
import 'package:micro_app_ds/micro_app_ds.dart';

class DSStatus extends StatelessWidget {
  final Status? status;
  const DSStatus({super.key, this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      child: Row(
        children: [
          Text(
            choseStatus(status),
            style: DSTypographies.extraSmall.copyWith(
              fontStyle: FontStyle.italic,
              fontFamily: DSFamilies.openSans,
            ),
          ),
          const SizedBox(width: 8),
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: choseColor(status),
            ),
          )
        ],
      ),
    );
  }

  Color choseColor(Status? status) {
    if (status == Status.open) {
      return DSColors.greenColor;
    } else if (status == Status.star) {
      return DSColors.yellowColor;
    } else if (status == Status.closed) {
      return DSColors.redColor;
    } else {
      return DSColors.secondaryColor;
    }
  }

  String choseStatus(Status? status) {
    if (status == Status.open) {
      return 'Open Now';
    } else if (status == Status.star) {
      return 'Star';
    } else if (status == Status.closed) {
      return 'Closed';
    } else {
      return '';
    }
  }
}
