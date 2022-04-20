import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:merchant_multivendor_food_delivery_app/Presentation/constants.dart';

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
                  Padding(
                    padding: EdgeInsets.all(12.0.w),
                    child: Table(
                      children: [
                        TableRow(children: [
                          SizedBox(
                            height: 40.h,
                            child: Text('Bill Details',
                                textAlign: TextAlign.start,
                                style: kHeadingStyleThree),
                          ),
                          const Text('', textAlign: TextAlign.end),
                        ]),
                        TableRow(children: [
                          SizedBox(
                            height: 22.h,
                            child: Text('Item Total',
                                textAlign: TextAlign.start,
                                style: kTextStyleOneFade),
                          ),
                          Text('\$140.00',
                              textAlign: TextAlign.end,
                              style: kTextStyleOne.copyWith(
                                  fontWeight: FontWeight.bold)),
                        ]),
                        TableRow(children: [
                          SizedBox(
                            height: 22.h,
                            child: Text('Discount',
                                textAlign: TextAlign.start,
                                style: kTextStyleOneFade),
                          ),
                          Text('-\$0.00',
                              textAlign: TextAlign.end,
                              style: kTextStyleOne.copyWith(
                                  fontWeight: FontWeight.bold)),
                        ]),
                        TableRow(children: [
                          SizedBox(
                            height: 22.h,
                            child: Text('Tax',
                                textAlign: TextAlign.start,
                                style: kTextStyleOneFade),
                          ),
                          Text('\$0.00',
                              textAlign: TextAlign.end,
                              style: kTextStyleOne.copyWith(
                                  fontWeight: FontWeight.bold)),
                        ]),
                        TableRow(children: [
                          Text('Delivery Fee',
                              textAlign: TextAlign.start,
                              style: kTextStyleOneFade),
                          Text('\$100.00',
                              textAlign: TextAlign.end,
                              style: kTextStyleOne.copyWith(
                                  fontWeight: FontWeight.bold)),
                        ]),
                        TableRow(children: [
                          Divider(
                            thickness: 2.w,
                            color: Colors.black12,
                          ),
                          Divider(
                            thickness: 2.w,
                            color: Colors.black12,
                          )
                        ]),
                        TableRow(children: [
                          Text('To Pay',
                              textAlign: TextAlign.start,
                              style: kHeadingStyleThree),
                          Text('\$240.00',
                              textAlign: TextAlign.end,
                              style: kHeadingStyleThree.copyWith(
                                  fontWeight: FontWeight.bold)),
                        ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
