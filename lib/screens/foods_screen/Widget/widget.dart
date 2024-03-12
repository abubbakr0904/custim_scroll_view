import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/images/images.dart';

class Products extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkoffset, bool overlapsContent) {
    return Container(
      color : Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      // height: 700.h,
      child: Column(
        children: [
          SizedBox(height: 30.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(
                clr.length,
                    (index) => Container(
                  child: Column(
                    children: [
                      Container(
                        width : 48.w,
                        height: 48.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(15.r)
                            ),
                            color : clr[index]
                        ),
                        child: Center(
                          child: Image.asset(images[index]),
                        ),
                      ),
                      SizedBox(height: 4.h,),
                      Text(txt[index] , style: TextStyle(
                          color : Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 8.sp
                      ),)
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 105.0;

  @override
  // TODO: implement minExtent
  double get minExtent => 105.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

List<Color> clr = [
  const Color(0xFFD3E6F7),
  const Color(0xFFEFF7D3),
  const Color(0xFFF7D3EA),
  const Color(0xFFD3F7DF),
  const Color(0xFFF7E4D3),
];

List<String> txt = [
  "Vegetables",
  "Fruit",
  "Spice",
  "Ingridients",
  "Side Dishes"
];
List<String> images = [
  AppImages.zelen,
  AppImages.fruit,
  AppImages.spice,
  AppImages.food,
  AppImages.sweet,
];
