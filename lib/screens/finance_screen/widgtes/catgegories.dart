import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesView extends SliverPersistentHeaderDelegate {

  @override
  Widget build(
      BuildContext context, double shrinkoffset, bool overlapsContent) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
            categories.length,
            (index) => GestureDetector(
              onTap: (){},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.r)
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 10.w,
                      height: 10.h,
                      decoration: BoxDecoration(
                          color: const Color(0xFF7F8192),
                          borderRadius: BorderRadius.circular(50.r)),
                    ),
                    SizedBox(width: 10.w,),
                    Text(categories[index] , style: TextStyle(
                      color : const Color(0xff7F8192),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500
                    ),)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 100.0;

  @override
  // TODO: implement minExtent
  double get minExtent => 100.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

List<String> categories = ["Payments | \$398", "Food", "Services", "Rent"];
