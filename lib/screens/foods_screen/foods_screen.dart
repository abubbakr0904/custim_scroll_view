import 'package:custim_scroll_view/utils/images/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          pinned : true,
          leading: Icon(
            Icons.add,
            color : Colors.transparent
          ),
          expandedHeight: 300.h,
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
                                    fontWeight: FontWeight.w500
                                ),
                                children: [
                              TextSpan(text: "Hello"),
                              TextSpan(
                                  text: "Fahmi\n",
                                  style: TextStyle(
                                      color: const Color(0xFFEEA54D),
                                      fontSize: 16.sp)),
                              TextSpan(
                                  text: "Find the right one for a healthy body",
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
                            width: 1,
                            color : const Color(0xFFEEBB4D)
                          )
                        ),
                        child : Center(child: SvgPicture.asset(AppImages.jingle))
                      )
                    ],
                  ),
                  SizedBox(height: 15.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 40.h,
                        width: 270.w,
                        child : TextField(
                          style: TextStyle(
                              color : const Color(0xFFEEBB4D),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.sp
                          ),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                              color : const Color(0xFFEEBB4D),
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp
                            ),
                            hintText: "Search",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.w),
                              borderSide: const BorderSide(
                                width: 1,
                                color : Color(0xFFEEBB4D)
                              )
                            ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.w),
                                  borderSide: const BorderSide(
                                      width: 1,
                                      color : Color(0xFFEEBB4D)
                                  )
                              )
                          ),
                        )
                      ),
                      Container(
                          width: 40.h,
                          height: 40.h,
                          decoration: BoxDecoration(
                            color : const Color(0xFFEEBB4D).withOpacity(0.5),
                              borderRadius: BorderRadius.circular(15.r),
                          ),
                          child : Center(child: SvgPicture.asset(AppImages.filter))
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        SliverList(delegate: SliverChildListDelegate([
          Column(
            children: [
              SizedBox(height: 15.h,),
              Row(
                children: [
                  Text("Category" , style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize:
                  ),)
                ],
              )
            ],
          )
        ]),)
      ],
    ));
  }
}
