import 'package:custim_scroll_view/screens/finance_screen/finance_screen.dart';
import 'package:custim_scroll_view/screens/foods_screen/foods_screen.dart';
import 'package:custim_scroll_view/screens/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OpenScreen extends StatefulWidget {
  const OpenScreen({super.key});

  @override
  State<OpenScreen> createState() => _OpenScreenState();
}

class _OpenScreenState extends State<OpenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFF5771F9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.r)
                    )
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const FinanceScreen()));
                  }, child: Text("Screen 1" , style: TextStyle(
                color : Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20.sp,
              ),)),
            ),
            SizedBox(height: 20.h,),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF5771F9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.r)
                      )
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const FoodsScreen()));
                  }, child: Text("Screen 2  " , style: TextStyle(
                color : Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20.sp,
              ),)),
            ),
          ],
        ),
      )
    );
  }
}
