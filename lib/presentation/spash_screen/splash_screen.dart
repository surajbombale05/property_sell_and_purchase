import 'dart:async';

import 'package:flutter/material.dart';
import 'package:property_sell_and_purchase/constants/app_colors.dart';
import 'package:property_sell_and_purchase/constants/app_images.dart';
import 'package:property_sell_and_purchase/presentation/home_screen/home_screen.dart';

class SpashScreenFirsts extends StatefulWidget {
  const SpashScreenFirsts({super.key});
  @override
  State<SpashScreenFirsts> createState() => _SpashScreenFirstsState();
}

class _SpashScreenFirstsState extends State<SpashScreenFirsts> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.backGroundColor,
          body: Center(child: Image(image: AssetImage(AppImages.kanhaDealer)))),
    );
  }
}
