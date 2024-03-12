import 'package:custim_scroll_view/screens/finance_screen/widgtes/catgegories.dart';
import 'package:custim_scroll_view/utils/images/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FinanceScreen extends StatefulWidget {
  const FinanceScreen({Key? key}) : super(key: key);

  @override
  State<FinanceScreen> createState() => _FinanceScreenState();
}

class _FinanceScreenState extends State<FinanceScreen> {
  int c = 0;
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
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
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
                                        borderRadius:
                                            BorderRadius.circular(30.r),
                                        boxShadow: [
                                          BoxShadow(
                                            offset: const Offset(0, 4),
                                            spreadRadius: 1,
                                            blurRadius: 40,
                                            color:
                                                Colors.black.withOpacity(0.1),
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
          // SliverPersistentHeader(
          //   pinned: true,
          //   delegate: SliverChildDelegate(),
          // ),
          SliverList(

              delegate: SliverChildListDelegate([
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(
                    categories.length,
                    (index) => GestureDetector(
                      onTap: () {
                        c = index;
                        setState(() {

                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 5.w , vertical: 6.h),
                        decoration: BoxDecoration(
                          color : c == index ? const Color(0xFF7A7AFD) : Colors.transparent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.r))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 10.w,
                              height: 10.h,
                              decoration: BoxDecoration(
                                  color: c == index ? Colors.white : const Color(0xFF7F8192),
                                  borderRadius: BorderRadius.circular(50.r)),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              categories[index],
                              style: TextStyle(
                                  color: c == index ? Colors.white :const Color(0xff7F8192),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ])),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ...List.generate(
                  8,
                  (index) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: ListTile(
                      leading: Container(
                          width: 54.w,
                          height: 54.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 4),
                                    spreadRadius: 1,
                                    blurRadius: 40,
                                    color: Colors.black.withOpacity(0.1))
                              ]),
                          child: Image.asset(img[index])),
                      title: Text(
                        txt[index],
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18.sp),
                      ),
                      subtitle: Text(
                        "04th february 2021",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp),
                      ),
                      trailing: Text(
                        money[index],
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18.sp),
                      ),
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

List<String> img = [
  AppImages.beline,
  AppImages.uber,
  AppImages.tortta,
  AppImages.trust,
  AppImages.beline,
  AppImages.uber,
  AppImages.tortta,
  AppImages.trust,
];
List<String> txt = [
  "Behance Project",
  "Uber Monthly",
  "ATM Withdraws",
  "Transfer Money",
  "Behance Project",
  "Uber Monthly",
  "ATM Withdraws",
  "Transfer Money",
];

List<String> money = [
  "\$320",
  "\$650",
  "\$330",
  "\$100",
  "\$320",
  "\$650",
  "\$330",
  "\$100",
];
