import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import '../widget/delivery Welcome/stepper_widget.dart';
import '../widget/invoice/bill_details_widget.dart';
import '../widget/invoice/contact_details_widget.dart';
import '../widget/invoice/quantity_widget.dart';

class BillingScreen extends StatelessWidget {
  const BillingScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
            Text('Order #EF8KB6', style: kHeadingStyleThree),
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const QuantityWidget(),
                Divider(
                    thickness: 4.w,
                    color: const Color.fromARGB(255, 227, 227, 232)),
                const BillDetailsWidget(),
                Divider(
                  thickness: 4.w,
                  color: const Color.fromARGB(255, 227, 227, 232),
                ),
                const ContactDetailsWidget(),
                Divider(
                  thickness: 4.w,
                  color: const Color.fromARGB(255, 227, 227, 232),
                ),
                const StepperWidget()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
