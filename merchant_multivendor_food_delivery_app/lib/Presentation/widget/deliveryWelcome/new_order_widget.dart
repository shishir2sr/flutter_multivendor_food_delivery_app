import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';
import 'stepper_widget.dart';

class NewOrdersWIdget extends StatelessWidget {
  const NewOrdersWIdget({
    Key? key,
    required this.oderId,
  }) : super(key: key);

  final String oderId;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('New Orders', style: kHeadingStyleTwo),
        SizedBox(height: 15.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Order Id: $oderId',
              style: kHeadingStyleThree,
            ),
            Text(
              // TODO: use the enum orderstatus.pending/delivered..etc
              'Order Pending',

              style:
                  kHeadingStyleThree.copyWith(color: const Color(0xFFff9c11)),
            )
          ],
        ),
        SizedBox(height: 5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('16 Feb 2022', // TODO: use current date here
                style: kTextStyleOne),
            Text('Bkash Payment',
                // TODO: Payment method
                style: kTextStyleOne)
          ],
        ),
        Expanded(child: StepperWidget())
      ],
    );
  }
}
