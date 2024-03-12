import 'package:custim_scroll_view/screens/finance_screen/finance_screen.dart';
import 'package:custim_scroll_view/screens/foods_screen/foods_screen.dart';
import 'package:custim_scroll_view/screens/open_screen/open_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.openScreen:
        return navigate(const OpenScreen());

      case RouteNames.financeScreen:
        return navigate(const FinanceScreen());
      case RouteNames.foodsScreen:
        {
          return navigate(
            const FoodsScreen(),
          );
        }
      default:
        return navigate(
          const Scaffold(
            body: Center(
              child: Text("This kind of rout does not exist!"),
            ),
          ),
        );
    }
  }

  static navigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}

class RouteNames {
  static const String openScreen = "/";
  static const String financeScreen = "/finance";
  static const String foodsScreen = "/foods";
}
