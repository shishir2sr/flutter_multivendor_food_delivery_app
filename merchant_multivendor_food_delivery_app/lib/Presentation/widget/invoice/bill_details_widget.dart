import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';

class BillDetailsWidget extends StatelessWidget {
  const BillDetailsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0.w),
      child: Table(
        children: [
          TableRow(children: [
            SizedBox(
              height: 40.h,
              child: Text('Bill Details',
                  textAlign: TextAlign.start, style: kHeadingStyleThree),
            ),
            const Text('', textAlign: TextAlign.end),
          ]),
          TableRow(children: [
            SizedBox(
              height: 22.h,
              child: Text('Item Total',
                  textAlign: TextAlign.start, style: kTextStyleOneFade),
            ),
            Text('\$140.00',
                textAlign: TextAlign.end,
                style: kTextStyleOne.copyWith(fontWeight: FontWeight.bold)),
          ]),
          TableRow(children: [
            SizedBox(
              height: 22.h,
              child: Text('Discount',
                  textAlign: TextAlign.start, style: kTextStyleOneFade),
            ),
            Text('-\$0.00',
                textAlign: TextAlign.end,
                style: kTextStyleOne.copyWith(fontWeight: FontWeight.bold)),
          ]),
          TableRow(children: [
            SizedBox(
              height: 22.h,
              child: Text('Tax',
                  textAlign: TextAlign.start, style: kTextStyleOneFade),
            ),
            Text('\$0.00',
                textAlign: TextAlign.end,
                style: kTextStyleOne.copyWith(fontWeight: FontWeight.bold)),
          ]),
          TableRow(children: [
            Text('Delivery Fee',
                textAlign: TextAlign.start, style: kTextStyleOneFade),
            Text('\$100.00',
                textAlign: TextAlign.end,
                style: kTextStyleOne.copyWith(fontWeight: FontWeight.bold)),
          ]),
          TableRow(children: [
            Divider(
              thickness: 1.w,
              color: Colors.black26,
            ),
            Divider(
              thickness: 1.w,
              color: Colors.black26,
            )
          ]),
          TableRow(children: [
            Text('To Pay',
                textAlign: TextAlign.start, style: kHeadingStyleThree),
            Text('\$240.00',
                textAlign: TextAlign.end,
                style:
                    kHeadingStyleThree.copyWith(fontWeight: FontWeight.bold)),
          ]),
        ],
      ),
    );
  }
}
