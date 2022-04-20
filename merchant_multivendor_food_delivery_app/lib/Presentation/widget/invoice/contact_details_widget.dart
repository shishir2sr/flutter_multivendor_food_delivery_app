import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';

class ContactDetailsWidget extends StatelessWidget {
  const ContactDetailsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Customer Contact Details',
            style: kHeadingStyleThree,
          ),
          SizedBox(height: 10.h),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                // TODO: Get image from merchant profile
                'assets/images/profile.jpg',
                height: 60.h,
                width: 50.w,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              // TODO: get the name of the merchant
              'Angela',
              style: kHeadingStyleThree,
            ),
            subtitle: Text(
              // TODO: Get the order status from order object
              'angela@abc.com',
              style: kTextStyleTwoFade,
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.phone_circle_fill,
                color: Color(0xFF22a45c),
                size: 30.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
