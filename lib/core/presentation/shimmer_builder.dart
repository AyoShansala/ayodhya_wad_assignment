import '../../../util/colors.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';

/// Cash network image loading widget
Widget shimmerLoader({Widget? child, Color? baseColor, Color? highlightColor}) {
  return Shimmer.fromColors(
    baseColor: baseColor ?? kShimmerMainColor.shade200,
    highlightColor: highlightColor ?? kShimmerMainColor.shade300,
    child: child ??
        Container(
          height: double.infinity,
          width: double.infinity,
          color: kColorWhite,
        ),
  );
}
