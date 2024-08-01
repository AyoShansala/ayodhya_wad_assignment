import 'package:ayodhya_wad_assignment/core/presentation/shimmer_builder.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:text_scroll/text_scroll.dart';

import '../../util/colors.dart';

class ShopCard extends StatelessWidget {
  final int id;
  final int parentCompanyId;
  final String name;
  final String address;
  final String description;
  final String proImg;
  final String coverImg;
  const ShopCard({
    super.key,
    required this.id,
    required this.parentCompanyId,
    this.name = 'N/A',
    this.address = 'N/A',
    this.description = 'N/A',
    required this.proImg,
    required this.coverImg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280.h,
      width: 176.w,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: kColorWhite,
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              /// back cover image
              Container(
                height: 52.h,
                width: double.infinity,
                color: kColorWhite,
                // child: Image.network("https://staging-admin.slashdeals.lk{$coverImg}"),
                child: CachedNetworkImage(
                  imageUrl: "https://staging-admin.slashdeals.lk$coverImg",
                  placeholder: (context, url) => shimmerLoader(),
                  errorWidget: (context, url, error) => Image.asset('assets/images/backImage.png', fit: BoxFit.cover),
                  useOldImageOnUrlChange: true,
                  fit: BoxFit.cover,
                ),
              ),

              /// profile image circle
              Positioned(
                top: 8.h,
                left: 10.w,
                child: Container(
                  width: 70.w,
                  height: 70.h,
                  padding: EdgeInsets.all(5.w),
                  decoration: BoxDecoration(
                    color: kColorWhite,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x80dadada),
                        offset: const Offset(5, 6),
                        blurRadius: 14.r,
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundColor: kColorWhite,
                      radius: 27.0.r,
                      child: ClipOval(
                        child: CachedNetworkImage(
                          imageUrl: "https://staging-admin.slashdeals.lk$proImg",
                          placeholder: (context, url) => shimmerLoader(),
                          errorWidget: (context, url, error) => Image.asset('assets/images/profileImg.png', fit: BoxFit.cover),
                          useOldImageOnUrlChange: true,
                          fit: BoxFit.contain,
                        ),
                        // child: Image.asset('assets/images/profileImg.png', fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
              ),

              /// shop name, discount and description
              Positioned(
                top: 90.h,
                left: 10.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // company name
                    SizedBox(
                      width: 165.w,
                      child: TextScroll(
                        name,
                        style: TextStyle(
                          color: const Color(0xff262a64),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Barlow",
                          fontStyle: FontStyle.normal,
                          fontSize: 20.sp,
                        ),
                        velocity: const Velocity(pixelsPerSecond: Offset(15, 0)),
                        pauseBetween: const Duration(milliseconds: 1000),
                        mode: TextScrollMode.bouncing,
                      ),
                    ),
                    // offer details
                    // Padding(
                    //   padding: EdgeInsets.symmetric(vertical: 10.0.h),
                    //   child: RichText(
                    //       text: TextSpan(children: [
                    //     TextSpan(
                    //       style: TextStyle(color: const Color(0xff262a64), fontWeight: FontWeight.w700, fontFamily: "Barlow", fontStyle: FontStyle.normal, fontSize: 18.sp),
                    //       text: "Save ",
                    //     ),
                    //     TextSpan(
                    //       style: TextStyle(color: const Color(0xffa100f3), fontWeight: FontWeight.w700, fontFamily: "Barlow", fontStyle: FontStyle.normal, fontSize: 28.sp),
                    //       text: "1,500",
                    //     ),
                    //     TextSpan(style: TextStyle(color: const Color(0xffa100f3), fontWeight: FontWeight.w300, fontFamily: "Barlow", fontStyle: FontStyle.normal, fontSize: 12.sp), text: "LKR")
                    //   ])),
                    // ),
                    // description
                    Padding(
                      padding: EdgeInsets.only(top: 20.h, bottom: 8.0.h),
                      child: SizedBox(
                        width: 156.w,
                        child: Text(
                          address,
                          style: const TextStyle(
                            color: Color(0xff979ac0),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal,
                            fontSize: 14.0,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    )
                  ],
                ),
              ),

              /// heart icon
              Positioned(
                top: 63.h,
                right: 10.w,
                child: GestureDetector(
                  onTap: () {
                    // setState(() {
                    //   isClickedActive = !isClickedActive; // Toggle the state
                    // });
                    debugPrint('Heart Clicked');
                  },
                  child: SvgPicture.asset(
                    'assets/svg/heart_white_icon.svg',
                    width: 19,
                    height: 19,
                    fit: BoxFit.contain,
                    colorFilter: const ColorFilter.mode(
                      // isClickedActive ? Color(0xffe24141) : Color(0xffe0e0e0),
                      Color(0xffe0e0e0),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
