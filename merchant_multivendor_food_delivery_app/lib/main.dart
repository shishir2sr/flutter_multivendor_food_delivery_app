import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:merchant_multivendor_food_delivery_app/Presentation/constants.dart';

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
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios_outlined,
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Text('Order #EF8KB6', style: kTitleStyle),
                    ],
                  ),
                  QuantityWidget(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class QuantityWidget extends StatelessWidget {
  const QuantityWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550.h,
      width: double.infinity.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: ListTile(
              tileColor: const Color(0xFFfef0e6),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  // TODO: Get image from merchant profile
                  'assets/images/merchantname.jpg',
                  height: 60.h,
                  width: 50.w,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                // TODO: get the name of the merchant
                'Merchant Name',
                style: kTitleStyle,
              ),
              subtitle: Text(
                // TODO: Get the order status from order object
                'Order Pending',
                style: kSecondaryHeadingStyle.copyWith(
                    color: const Color(0xFF52b479)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.radio_button_checked_outlined,
                      size: 15.sp,
                      color: const Color(0xFF008000),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      //TODO: get the itemname from order
                      'Biriyani',
                      style: kSubTitleStyle,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      //TODO: get the quantity and price
                      ' Qty : 2 × \$70.00',
                      style: kTextStyleTwo,
                    ),
                    Text(
                      //TODO: get the total price from invoice
                      '\$140',
                      style: kSubTitleStyle,
                    )
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  // TODO: ingradients
                  ' Rice, Meat, Masala',
                  style: kTextStyleTwo,
                ),
                const Divider(color: Color(0xFFe9e9ea), thickness: 2)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
