import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_sell_and_purchase/presentation/spash_screen/splash_screen.dart';

void main() {
  runApp(const PropertyBuyAndSell());
}

class PropertyBuyAndSell extends StatelessWidget {
  const PropertyBuyAndSell({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SpashScreenFirsts(),
          );
        });
  }
}
