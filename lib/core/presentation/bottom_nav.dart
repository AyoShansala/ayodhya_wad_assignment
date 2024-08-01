import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../features/explore_screen/presentation/widgets/bottom_nav_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86.h,
      width: 390.w,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x15000000),
            offset: Offset(0, 1),
            blurRadius: 15,
            spreadRadius: 0,
          ),
        ],
        color: Color(0xffffffff),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavItem(
            img: 'assets/svg/home.svg',
            onTap: () {},
          ),
          BottomNavItem(
            img: 'assets/svg/exploreh.svg',
            onTap: () {},
          ),
          BottomNavItem(
            img: 'assets/svg/fave.svg',
            onTap: () {},
          ),
          BottomNavItem(
            img: 'assets/svg/about.svg',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
