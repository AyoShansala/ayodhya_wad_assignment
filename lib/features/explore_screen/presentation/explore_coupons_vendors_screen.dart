import 'package:ayodhya_wad_assignment/core/presentation/bottom_nav.dart';
import 'package:ayodhya_wad_assignment/core/presentation/coupon_card.dart';
import 'package:ayodhya_wad_assignment/features/explore_screen/presentation/bloc/explore_bloc.dart';
import 'package:ayodhya_wad_assignment/features/vendor_profile_screen/presentation/vendor_profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/presentation/shop_card.dart';
import '../../../injector.dart';
import 'widgets/bottom_nav_item.dart';

class ExploreScreenWrapper extends StatelessWidget {
  const ExploreScreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<ExploreBloc>(
        create: (context) => sl<ExploreBloc>(),
      ),
    ], child: ExploreScreen());
  }
}

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ExploreBloc>().add(GetVendorsDataEvent());
    context.read<ExploreBloc>().add(GetCouponsDataEvent());
  }

  final ValueNotifier<TabBarItem> _selectedTab = ValueNotifier(TabBarItem.Coupons);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff2f5fe),
        body: Padding(
          padding: EdgeInsets.only(left: 14.w, right: 14.w),
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                /// app bar
                Padding(
                  padding: EdgeInsets.only(left: 14.w, top: 30.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // close button
                      Container(
                        width: 44.h,
                        height: 44.h,
                        decoration: const BoxDecoration(
                          color: Color(0xffffe400),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back,
                            size: 22.h,
                          ),
                        ),
                      ),
                      // header title
                      Text(
                        "Food and Drinks",
                        style: TextStyle(
                          color: const Color(0xff262a64),
                          fontWeight: FontWeight.w600,
                          fontFamily: "Barlow",
                          fontStyle: FontStyle.normal,
                          fontSize: 24.sp,
                        ),
                      ),
                      //  more icon
                      SizedBox(
                        width: 40.h,
                        height: 40.h,
                        child: SvgPicture.asset(
                          'assets/svg/more.svg',
                        ),
                      ),
                    ],
                  ),
                ),

                /// Tab Buttons
                Padding(
                  padding: EdgeInsets.only(top: 30.h, bottom: 40.h),
                  child: Container(
                      width: 338.w,
                      height: 58.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(37.r),
                          ),
                          color: Color(0xffeaeffc)),
                      child: Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildTabButton(TabBarItem.Coupons),
                              _buildTabButton(TabBarItem.Vendors),
                            ],
                          ),
                        ],
                      )),
                ),

                /// categories row
                Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Japanese
                      Container(
                        width: 111.w,
                        height: 58.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(37.r)),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x7ca020ef),
                              offset: Offset(4, 6),
                              blurRadius: 18,
                              spreadRadius: 0,
                            ),
                          ],
                          color: const Color(0xffa020ef),
                        ),
                        child: Center(
                          child: Text(
                            "View all",
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
                      // Burgers
                      Container(
                        width: 111.w,
                        height: 58.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(37.r),
                          ),
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
                          child: Text(
                            "Burgers",
                            style: TextStyle(
                              color: const Color(0xff262a64),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                              fontStyle: FontStyle.normal,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                      // Japanese
                      Container(
                        width: 111.w,
                        height: 58.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(37.r),
                          ),
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
                          child: Text(
                            "Japanese",
                            style: TextStyle(
                              color: const Color(0xff262a64),
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
                // Tab bar view
                ValueListenableBuilder(
                  valueListenable: _selectedTab,
                  builder: (context, TabBarItem tab, child) {
                    return tab == TabBarItem.Coupons
                        ? BlocBuilder<ExploreBloc, ExploreState>(
                            buildWhen: (previous, current) {
                              if (previous.status == ExploreStatus.initial && current.status == ExploreStatus.loading) {
                                return false;
                              } else {
                                return true;
                              }
                            },
                            builder: (context, state) {
                              return SizedBox(
                                height: 560.h,
                                width: double.infinity,
                                child: GridView.builder(
                                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 200,
                                    childAspectRatio: 0.8,
                                    crossAxisSpacing: 20,
                                    mainAxisSpacing: 20,
                                  ),
                                  itemCount: state.couponDataEntity == null ? 0 : (state.couponDataEntity ?? []).length,
                                  itemBuilder: (context, index) {
                                    return state.status == ExploreStatus.initial
                                        ? GridView.builder(
                                            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                                              maxCrossAxisExtent: 200,
                                              childAspectRatio: 0.8,
                                              crossAxisSpacing: 20,
                                              mainAxisSpacing: 20,
                                            ),
                                            itemCount: 5,
                                            itemBuilder: (context, index) {
                                              return Container(
                                                height: 280.h,
                                                width: 176.w,
                                                color: Colors.greenAccent,
                                              );
                                            },
                                          )
                                        : state.status == ExploreStatus.initial
                                            ? Padding(
                                                padding: EdgeInsets.symmetric(horizontal: 6.w),
                                                child: const Text("Pull Down To Re-fresh"),
                                              )
                                            : (state.couponDataEntity ?? []).isEmpty
                                                ? Padding(
                                                    padding: EdgeInsets.symmetric(horizontal: 6.w),
                                                    child: const Text("No Data Found"),
                                                  )
                                                : InkWell(
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) => VendorProfileScreen(
                                                             name: state.parentCompanyData![index].name,
                                                            proImg: state.parentCompanyData![index].profileImg,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child: CouponCard(
                                                      id: state.couponDataEntity![index].id,
                                                      parentCompanyId: state.couponDataEntity![index].parentCompanyId,
                                                      proImg: state.couponDataEntity![index].parentCompanyProfileImg,
                                                      coverImg: state.couponDataEntity![index].parentCompanyCoverImg,
                                                      maxSaving: state.couponDataEntity![index].maxSaving,
                                                      description: state.couponDataEntity![index].description,
                                                      name: state.couponDataEntity![index].parentCompanyName,
                                                    ),
                                                  );
                                  },
                                ),
                              );
                            },
                          )
                        : BlocBuilder<ExploreBloc, ExploreState>(
                            buildWhen: (previous, current) {
                              if (previous.status == ExploreStatus.initial && current.status == ExploreStatus.loading) {
                                return false;
                              } else {
                                return true;
                              }
                            },
                            builder: (context, state) {
                              return SizedBox(
                                height: 560.h,
                                width: double.infinity,
                                child: GridView.builder(
                                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 200,
                                    childAspectRatio: 0.8,
                                    crossAxisSpacing: 20,
                                    mainAxisSpacing: 20,
                                  ),
                                  itemCount: state.parentCompanyData == null ? 0 : (state.parentCompanyData ?? []).length,
                                  itemBuilder: (context, index) {
                                    return state.status == ExploreStatus.initial
                                        ? GridView.builder(
                                            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                                              maxCrossAxisExtent: 200,
                                              childAspectRatio: 0.8,
                                              crossAxisSpacing: 20,
                                              mainAxisSpacing: 20,
                                            ),
                                            itemCount: 5,
                                            itemBuilder: (context, index) {
                                              return Container(
                                                height: 280.h,
                                                width: 176.w,
                                                color: Colors.greenAccent,
                                              );
                                            },
                                          )
                                        : state.status == ExploreStatus.initial
                                            ? Padding(
                                                padding: EdgeInsets.symmetric(horizontal: 6.w),
                                                child: const Text("Pull Down To Re-fresh"),
                                              )
                                            : (state.parentCompanyData ?? []).isEmpty
                                                ? Padding(
                                                    padding: EdgeInsets.symmetric(horizontal: 6.w),
                                                    child: const Text("No Data Found"),
                                                  )
                                                : InkWell(
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) => VendorProfileScreen(
                                                            name: state.parentCompanyData![index].name,
                                                            proImg: state.parentCompanyData![index].profileImg,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child: ShopCard(
                                                      id: state.parentCompanyData![index].id,
                                                      parentCompanyId: state.parentCompanyData![index].parentCompanyId,
                                                      proImg: state.parentCompanyData![index].profileImg,
                                                      coverImg: state.parentCompanyData![index].coverImg,
                                                      address: state.parentCompanyData![index].address,
                                                      description: state.parentCompanyData![index].description,
                                                      name: state.parentCompanyData![index].name,
                                                    ),
                                                  );
                                  },
                                ),
                              );
                            },
                          );
                  },
                )
              ],
            ),
          ),
        ),

        /// Bottom Navigation Bar
        bottomNavigationBar: BottomNavBar(),
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
                          color: const Color(0x11000000),
                          offset: Offset(0, 2),
                          blurRadius: 5,
                          spreadRadius: 0,
                        )
                      : const BoxShadow(
                          color: Colors.transparent,
                          offset: Offset(0, 0),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                ],
                color: _isTabSelected(tab) ? const Color(0xffffffff) : const Color(0xffeaeffc),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      _getTabIcon(tab),
                      colorFilter: ColorFilter.mode(
                        _isTabSelected(tab) ? Color(0xffa328f0) : Color(0xff7f889f),
                        BlendMode.srcIn,
                      ),
                    ),
                    Text(
                      _getTabName(tab),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: _isTabSelected(tab) ? Color(0xffa328f0) : Color(0xff7f889f),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                        fontStyle: FontStyle.normal,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// get Tab Icon
  String _getTabIcon(TabBarItem tab) {
    switch (tab) {
      case TabBarItem.Coupons:
        {
          return 'assets/svg/coupons.svg';
        }
      case TabBarItem.Vendors:
        {
          return 'assets/svg/bag.svg';
        }
      default:
        {
          return "Coupons";
        }
    }
  }

  /// Return Tab Name to selected tab
  String _getTabName(TabBarItem tab) {
    switch (tab) {
      case TabBarItem.Coupons:
        {
          return "Coupons";
        }
      case TabBarItem.Vendors:
        {
          return "Vendors";
        }
      default:
        {
          return "Coupons";
        }
    }
  }
}

/// Tab names
enum TabBarItem { Coupons, Vendors }
