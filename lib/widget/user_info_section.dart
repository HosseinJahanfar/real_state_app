import 'package:flutter/material.dart';

import '../const/font_style.dart';

class UserInfoSection extends StatelessWidget {
  const UserInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello', style: getSmallBodyStyle(context)),
            Text('Mehrab!', style: getLargeBodyStyle(context, fontWeight: FontWeight.bold)),
          ],
        ),

        Image.asset('assets/images/circle_logo.png', width: 45, height: 45),
      ],
    );
  }
}
