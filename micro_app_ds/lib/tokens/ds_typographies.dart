import 'package:flutter/material.dart';
import 'package:micro_app_ds/tokens/ds_families.dart';
import 'package:micro_app_ds/tokens/ds_font_weights.dart';
import 'package:micro_app_ds/tokens/ds_line_heights.dart';
import 'package:micro_app_ds/tokens/ds_sizes.dart';

class DSTypographies {
  DSTypographies._();

  static const TextStyle large = TextStyle(
    fontWeight: DSFontWeights.bold,
    fontSize: DSSizes.h18,
    height: DSLineHeights.lg,
    fontFamily: DSFamilies.laro,
  );

  static const TextStyle medium = TextStyle(
    fontWeight: DSFontWeights.medium,
    fontSize: DSSizes.h16,
    height: DSLineHeights.lg,
    fontFamily: DSFamilies.laro,
  );

  static const TextStyle small = TextStyle(
    fontWeight: DSFontWeights.regular,
    fontSize: DSSizes.h14,
    height: DSLineHeights.lg,
    fontFamily: DSFamilies.laro,
  );

  static const TextStyle extraSmall = TextStyle(
    fontWeight: DSFontWeights.regular,
    fontSize: DSSizes.h12,
    height: DSLineHeights.lg,
    fontFamily: DSFamilies.laro,
  );
}
