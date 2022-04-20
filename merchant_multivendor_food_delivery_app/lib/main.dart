import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:merchant_multivendor_food_delivery_app/Presentation/constants.dart';

import 'Presentation/widget/invoice/bill_details_widget.dart';
import 'Presentation/widget/invoice/quantity_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (_) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          // Use this line to prevent extra rebuilds
          useInheritedMediaQuery: true,

          // You can use the library anywhere in the app even in theme

          home: SafeArea(
            child: Scaffold(
              backgroundColor: const Color(0xFFf5f5f9),
              body: Column(
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back_ios_outlined,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Text('Order #EF8KB6', style: kHeadingStyleThree),
                      ],
                    ),
                  ),
                  const QuantityWidget(),
                  Divider(
                      thickness: 4.w,
                      color: const Color.fromARGB(255, 227, 227, 232)),
                  const BillDetailsWidget(),
                  Divider(
                      thickness: 4.w,
                      color: const Color.fromARGB(255, 227, 227, 232)),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
