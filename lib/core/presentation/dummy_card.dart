import 'package:ayodhya_wad_assignment/core/presentation/shimmer_builder.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../util/colors.dart';

class DummyCard extends StatelessWidget {
  final String title;
  final String description;
  final int maxSave;
  final String thumbnail;
  const DummyCard({
    super.key,
    this.title = '',
    this.description = '',
    this.maxSave = -999,
    this.thumbnail = '',
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
                // child: CachedNetworkImage(
                //   imageUrl: "https://staging-admin.slashdeals.lk$coverImg",
                //   placeholder: (context, url) => shimmerLoader(),
                //   errorWidget: (context, url, error) => Image.asset('assets/images/backImage.png', fit: BoxFit.cover),
                //   useOldImageOnUrlChange: true,
                //   fit: BoxFit.cover,
                // ),
                child: Image.asset('assets/images/backImage.png', fit: BoxFit.cover),
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
                        child: Image.asset('assets/images/profileImg.png', fit: BoxFit.cover),
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
                    Text(
                      title,
                      style: TextStyle(
                        color: const Color(0xff262a64),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Barlow",
                        fontStyle: FontStyle.normal,
                        fontSize: 20.sp,
                      ),
                    ),
                    // offer details
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0.h),
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          style: TextStyle(color: const Color(0xff262a64), fontWeight: FontWeight.w700, fontFamily: "Barlow", fontStyle: FontStyle.normal, fontSize: 18.sp),
                          text: "Save ",
                        ),
                        TextSpan(
                          style: TextStyle(color: const Color(0xffa100f3), fontWeight: FontWeight.w700, fontFamily: "Barlow", fontStyle: FontStyle.normal, fontSize: 28.sp),
                          text: maxSave.toString(),
                        ),
                        TextSpan(style: TextStyle(color: const Color(0xffa100f3), fontWeight: FontWeight.w300, fontFamily: "Barlow", fontStyle: FontStyle.normal, fontSize: 12.sp), text: "LKR")
                      ])),
                    ),
                    // description
                    Padding(
                      padding: EdgeInsets.only(top: 15.h, bottom: 8.0.h),
                      child: SizedBox(
                        width: 156.w,
                        child: Text(
                          description,
                          style: const TextStyle(
                            color: Color(0xff979ac0),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal,
                            fontSize: 14.0,
                          ),
                          maxLines: 4,
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
