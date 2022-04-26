import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:merchant_multivendor_food_delivery_app/Presentation/constants.dart';
import 'package:merchant_multivendor_food_delivery_app/Presentation/screens/delivery_welcome_screen.dart';
import 'package:merchant_multivendor_food_delivery_app/Presentation/screens/order_history_screen.dart';
import 'package:merchant_multivendor_food_delivery_app/Presentation/screens/accept_order_screen.dart';
import 'package:merchant_multivendor_food_delivery_app/Presentation/widget/delivery welcome/stepper_widget.dart';

import 'Presentation/screens/billing_screen.dart';
import 'Presentation/widget/invoice/bill_details_widget.dart';
import 'Presentation/widget/invoice/contact_details_widget.dart';
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
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          // Use this line to prevent extra rebuilds
          useInheritedMediaQuery: true,

          // You can use the library anywhere in the app even in theme

          home: SafeArea(
            child: Scaffold(
              // body: BillingScreen(),
              // body: OrderHistoryScreen(),
              body: AcceptOrderScreen(),
            ),
          ),
        );
      },
    );
  }
}
