import 'package:custim_scroll_view/screens/foods_screen/Widget/widget.dart';
import 'package:custim_scroll_view/utils/images/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FoodsScreen extends StatefulWidget {
  const FoodsScreen({super.key});

  @override
  State<FoodsScreen> createState() => _FoodsScreenState();
}

class _FoodsScreenState extends State<FoodsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.add, color: Colors.transparent),
            expandedHeight: 150.h,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 47.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                      color: const Color(0xFF3D3014),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500),
                                  children: [
                                    TextSpan(text: "Hello"),
                                    TextSpan(
                                        text: "Fahmi\n",
                                        style: TextStyle(
                                            color: const Color(0xFFEEA54D),
                                            fontSize: 16.sp)),
                                    TextSpan(
                                        text:
                                        "Find the right one for a healthy body",
                                        style: TextStyle(
                                            color: const Color(0xFFEEA54D),
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w600)),
                                  ])),
                        ),
                        Container(
                            width: 40.h,
                            height: 40.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                border: Border.all(
                                    width: 1, color: const Color(0xFFEEBB4D))),
                            child: Center(
                                child: SvgPicture.asset(AppImages.jingle)))
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            height: 40.h,
                            width: 270.w,
                            child: TextField(
                              style: TextStyle(
                                  color: const Color(0xFFEEBB4D),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.sp),
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      color: const Color(0xFFEEBB4D),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.sp),
                                  hintText: "Search",
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.w),
                                      borderSide: const BorderSide(
                                          width: 1, color: Color(0xFFEEBB4D))),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.w),
                                      borderSide: const BorderSide(
                                          width: 1, color: Color(0xFFEEBB4D)))),
                            )),
                        Container(
                            width: 40.h,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: const Color(0xFFEEBB4D).withOpacity(0.5),
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            child: Center(
                                child: SvgPicture.asset(AppImages.filter)))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Category",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp,
                          ),
                        ),
                        Text(
                          "Show All",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 13.h,
                    ),
                  ],
                ),
              )
            ]),
          ),
          SliverPersistentHeader(
            delegate: Products(),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Text(
                    "Best Deal",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                        color: const Color(0xFF3D3014)),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                    padding:
                    EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
                    width: double.infinity,
                    height: 180.h,
                    margin: EdgeInsets.symmetric(horizontal: 20.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: const Color(0xFFEEA54D)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "#SimpleKitchen",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                              color: Colors.white),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Soup Package",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24.sp,
                                  color: Colors.white),
                            ),
                            Text(
                              "No need to think about ingredients anymore, let's find your menu today",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 6.sp,
                                  color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ))
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Best Price",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14.sp,
                            ),
                          ),
                          Text(
                            "Show All",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 13.h,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 0.8,

            ),
            delegate: SliverChildBuilderDelegate((context, index) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                border: Border.all(
                  width: 0.5,
                  color : Colors.black
                )
              ),
              padding: EdgeInsets.all(14.w),
              child : Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15.h),
                      decoration: BoxDecoration(
                        color : Colors.black.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(20.r)
                      ),
                      child: Image.asset(AppImages.chicken , width: double.infinity, fit : BoxFit.cover)),
                  SizedBox(height: 10.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Chicken",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                            ),
                          ),
                          Text(
                            "1 Kilograms",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 8.sp,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "15.000",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ),
            childCount: 6
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
