import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavItem extends StatefulWidget {
  final Function onTap;
  final String img;
  const BottomNavItem({
    super.key,
    required this.onTap,
    required this.img,
  });

  @override
  State<BottomNavItem> createState() => _BottomNavItemState();
}

class _BottomNavItemState extends State<BottomNavItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onTap,
      child: SvgPicture.asset(
        widget.img,
        width: 21.w,
        height: 21.w,
      ),
    );
  }
}
