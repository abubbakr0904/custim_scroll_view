import 'package:custim_scroll_view/screens/finance_screen/widgtes/catgegories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FinanceScreen extends StatefulWidget {
  const FinanceScreen({Key? key}) : super(key: key);

  @override
  State<FinanceScreen> createState() => _FinanceScreenState();
}

class _FinanceScreenState extends State<FinanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.add, color: Colors.transparent),
            expandedHeight: 380,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: EdgeInsets.all(20.w),
                child: Container(
                  padding: EdgeInsets.all(22.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: const Color(0xFFF5F6FA),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 47.w,
                              height: 47.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                  color: Colors.white),
                              child: Center(
                                child:
                                Icon(Icons.arrow_back, color: Colors.black),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 47.w,
                              height: 47.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                  color: Colors.white),
                              child: Center(
                                child: Icon(Icons.more_horiz_rounded,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Balances",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 46.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 42.h,
                      ),
                      Row(
                        children: [
                          ...List.generate(
                            4,
                                (index) => Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15.r)),
                              margin: EdgeInsets.only(right: 13.w),
                              padding: EdgeInsets.all(15.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 36.w,
                                    height: 36.h,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30.r),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: const Offset(0, 4),
                                          spreadRadius: 1,
                                          blurRadius: 40,
                                          color: Colors.black.withOpacity(0.1),
                                        )
                                      ],
                                    ),
                                    child: const Center(
                                      child: Icon(Icons.euro,
                                          color: Color(0xFF5771F9)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16.h,
                                  ),
                                  Text(
                                    "585.00",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 19.sp,
                                    ),
                                  ),
                                  Text(
                                    "EUR Balance",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 36.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "See Balance Details",
                            style: TextStyle(
                                color: Color(0xFF5771F9),
                                fontWeight: FontWeight.w500,
                                fontSize: 18.sp),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: CategoriesView(onTap: () {}),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ...List.generate(
                  8,
                      (index) => Container(
                    child: Text(
                      "Today",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 26.sp),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
