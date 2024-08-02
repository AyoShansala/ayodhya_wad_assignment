import 'package:ayodhya_wad_assignment/core/presentation/dummy_card.dart';
import 'package:ayodhya_wad_assignment/core/presentation/shop_card.dart';
import 'package:ayodhya_wad_assignment/features/vendor_profile_screen/presentation/bloc/vendor_profile_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/presentation/shimmer_builder.dart';
import '../../../injector.dart';

class VendorProfileScreenWrapper extends StatelessWidget {
  const VendorProfileScreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<VendorProfileBloc>(
        create: (context) => sl<VendorProfileBloc>(),
      ),
    ], child: VendorProfileScreen());
  }
}

class VendorProfileScreen extends StatefulWidget {
  // final String name;
  // final String proImg;
  const VendorProfileScreen({
    super.key,
    // required this.name,
    // required this.proImg,
  });

  @override
  State<VendorProfileScreen> createState() => _VendorProfileScreenState();
}

class _VendorProfileScreenState extends State<VendorProfileScreen> {
  final ValueNotifier<TabBarItem> _selectedTab = ValueNotifier(TabBarItem.Coupons);
  bool isClockVisible = false;
  bool isGoldPackageOnly = false;
  bool isClickedActive = false;
  @override
  void initState() {
    super.initState();
    context.read<VendorProfileBloc>().add(GetVendorProfileDataEvent());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<VendorProfileBloc, VendorProfileState>(
          buildWhen: (previous, current) {
            if (previous.status == VendorProfileStatus.initial && current.status == VendorProfileStatus.loading) {
              return false;
            } else {
              return true;
            }
          },
          builder: (context, state) {
            return Column(
              children: [
                // profile
                Padding(
                  padding: EdgeInsets.only(left: 28.w, right: 14.w, top: 30.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // vendor profile image
                      Container(
                        width: 102.h,
                        height: 102.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffede8e8), width: 0.25),
                          borderRadius: BorderRadius.circular(51.r),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x80dadada),
                              offset: Offset(5, 6),
                              blurRadius: 14,
                              spreadRadius: 0,
                            ),
                          ],
                          color: const Color(0xffffffff),
                        ),
                        child: Center(
                          child: SizedBox(
                              width: 78.h,
                              height: 78.h,
                              child: CachedNetworkImage(
                                imageUrl: "https://staging-admin.slashdeals.lk${state.vendorProfileEntity?.profileImg}",
                                placeholder: (context, url) => shimmerLoader(),
                                errorWidget: (context, url, error) => Image.asset('assets/images/profileImg.png', fit: BoxFit.cover),
                                useOldImageOnUrlChange: true,
                                fit: BoxFit.contain,
                              )
                              // child: Image.asset('assets/images/profileImg.png', fit: BoxFit.cover),
                              ),
                        ),
                      ),
                      // close button
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 44.h,
                          height: 44.h,
                          decoration: const BoxDecoration(
                            color: Color(0xffffe400),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.close,
                              size: 22.h,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // profile details
                Padding(
                  padding: EdgeInsets.only(
                    left: 28.w,
                    right: 28.w,
                    top: 12.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // name
                          Text(
                            "Car Shop",
                            style: TextStyle(
                              color: const Color(0xff262a64),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Barlow",
                              fontStyle: FontStyle.normal,
                              fontSize: 24.sp,
                            ),
                          ),
                          // description
                          Text(
                            "Coffee and Break Shop",
                            style: TextStyle(
                              color: Color(0xffb7bbe3),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                              fontStyle: FontStyle.normal,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                      // points
                      Container(
                        width: 58.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(37.r)),
                          boxShadow: const [
                            BoxShadow(color: Color(0x7ca020ef), offset: Offset(4, 6), blurRadius: 18, spreadRadius: 0),
                          ],
                          color: const Color(0xffa020ef),
                        ),
                        child: Center(
                          child: Text(
                            "4.5",
                            style: TextStyle(
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                              fontStyle: FontStyle.normal,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // tab buttons
                Padding(
                  padding: EdgeInsets.only(top: 30.h, bottom: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildTabButton(TabBarItem.Coupons),
                      _buildTabButton(TabBarItem.Information),
                    ],
                  ),
                ),
                // tab bar view
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xfff2f5fe),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 11.w, right: 11.w, top: 14.h),
                    child: ValueListenableBuilder(
                      valueListenable: _selectedTab,
                      builder: (context, TabBarItem tab, child) {
                        return tab == TabBarItem.Coupons
                            ? SizedBox(
                                height: 560.h,
                                width: double.infinity,
                                child: GridView.builder(
                                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 200,
                                    childAspectRatio: 0.8,
                                    crossAxisSpacing: 20,
                                    mainAxisSpacing: 20,
                                  ),
                                  itemCount: 6,
                                  itemBuilder: (context, index) {
                                    return DummyCard();
                                  },
                                ),
                              )
                            : Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 60,
                                    color: Colors.amber,
                                    child: Center(child: Text("Not Impliment")),
                                  )
                                ],
                              );
                      },
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }

  bool _isTabSelected(TabBarItem tab) {
    if (tab == _selectedTab.value) {
      return true;
    } else {
      return false;
    }
  }

  /// Build Tab Button
  _buildTabButton(TabBarItem tab) {
    return ValueListenableBuilder(
      valueListenable: _selectedTab,
      builder: (context, selectedTab, child) {
        return InkResponse(
          onTap: () {
            _selectedTab.value = tab;
          },
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              width: 161.w,
              height: 58.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(37.r)),
                boxShadow: [
                  _isTabSelected(tab)
                      ? const BoxShadow(
                          color: Color(0x7ca020ef),
                          offset: Offset(4, 6),
                          blurRadius: 18,
                          spreadRadius: 0,
                        )
                      : const BoxShadow(
                          color: Color(0xfff2f5fe),
                          offset: Offset(4, 6),
                          blurRadius: 18,
                          spreadRadius: 0,
                        ),
                ],
                color: _isTabSelected(tab) ? const Color(0xffa020ef) : const Color(0xfff2f5fe),
              ),
              child: Center(
                child: Text(
                  _getTabName(tab),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: _isTabSelected(tab) ? Color(0xffffffff) : Color(0xff262a64),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                    fontStyle: FontStyle.normal,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Return Tab Name to selected tab
  String _getTabName(TabBarItem tab) {
    switch (tab) {
      case TabBarItem.Coupons:
        {
          return "Coupons";
        }
      case TabBarItem.Information:
        {
          return "Information";
        }
      default:
        {
          return "Coupons";
        }
    }
  }
}

/// Tab names
enum TabBarItem { Coupons, Information }
