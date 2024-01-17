import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_sell_and_purchase/constants/app_colors.dart';
import 'package:property_sell_and_purchase/constants/app_images.dart';
import 'package:property_sell_and_purchase/constants/app_strings.dart';
import 'package:property_sell_and_purchase/widgets/custom_textformfield.dart';
import 'package:property_sell_and_purchase/widgets/custom_textwidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: AppBar(
              title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: CustomTextFormField(
                  hintText: "Search desire property",
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Container(
                  margin: EdgeInsets.only(top: 12),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: AppColors.whiteGrey,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: const Icon(Icons.add))
            ],
          )),
        ),
        backgroundColor: AppColors.whiteLitleGrey,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: ListView.builder(
            itemCount: 12,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 11.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200.h,
                      width: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: const Color.fromARGB(255, 172, 174, 207),
                        image: DecorationImage(
                          image: AssetImage(AppImages.home),
                          fit: BoxFit.cover,
                        ),
                      ),
                       child: Center(child: Text("BANGLOW")),
                    ),
                    SizedBox(height: 6.h,),
                    Row(
                      children: [
                        Container(
                          height: 10.h,
                          width: 10.w,
                          decoration: BoxDecoration(
                            color: AppColors.green,
                            borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                       SizedBox(width:5.w,),
                        TextWidget(
                          text: "For Sale",
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                   
                    TextWidget(text: "5005000 rs",
                     fontSize: 22.sp,
                     fontWeight: FontWeight.w900,
                    ),
                    TextWidget(text: "3 bed  2.5 baths  2,453 sqft  6450 sqft lot",
                     fontSize: 14.sp,
                    ),

                    Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       TextWidget(
                        text:"AT Karjule pathar \npost-Dolasane\nbanglow-no :- 404",
                        fontSize: 16.sp,
                       ),
                       Container(
                        height: 30.h,
                        width: 120.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          border:Border.all(color: AppColors.backGroundColor)
                        ),
                        child: Center(child: TextWidget(text: "Contact Agent")),
                       ),
                    ],)

                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
