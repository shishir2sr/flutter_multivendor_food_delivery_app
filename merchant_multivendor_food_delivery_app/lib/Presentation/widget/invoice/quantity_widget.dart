import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';

class QuantityWidget extends StatelessWidget {
  const QuantityWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
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
            'Rose Garden Restaurant',
            style: kHeadingStyleThree,
          ),
          subtitle: Text(
            // TODO: Get the order status from order object
            'Order Pending',
            style: kHeadingStyleFour.copyWith(color: const Color(0xFF52b479)),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.radio_button_checked_outlined,
                    size: 18.sp,
                    color: const Color(0xFF008000),
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    //TODO: get the itemname from order
                    'Biriyani',
                    style: kHeadingStyleThree,
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    //TODO: get the quantity and price
                    ' Qty : 2 × \$70.00',
                    style: kTextStyleTwoFade,
                  ),
                  Text(
                    //TODO: get the total price from invoice
                    '\$140',
                    style: kHeadingStyleThree,
                  )
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                // TODO: ingradients
                ' Rice, Meat, Masala',
                style: kTextStyleTwoFade,
              ),
              SizedBox(
                height: 5.h,
              ),
              const Divider(color: Color(0xFFe9e9ea), thickness: 2)
            ],
          ),
        ),
      ],
    );
  }
}
