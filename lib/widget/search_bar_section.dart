import 'package:flutter/material.dart';

import '../const/colors.dart';
import '../const/font_style.dart';

class SearchBarSection extends StatelessWidget {
  const SearchBarSection({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 55,
            width: size.width * 0.58,
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.white,

              borderRadius: BorderRadius.circular(15),

              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 2)),
              ],
            ),
            child: Row(
              spacing: 10,
              children: [
                Icon(Icons.search, color: MyColors.primaryColor, size: 30),
                Text('Search ...', style: getSmallBodyStyle(context, color: MyColors.grey)),
              ],
            ),
          ),

          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: MyColors.primaryColor,

              fixedSize: Size(size.width * 0.3, 55),

              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            ),

            onPressed: () {},
            label: Text(
              'Filters',
              style: getSmallBodyStyle(
                context,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            icon: Icon(Icons.filter_list_rounded, color: Colors.white),
          ),
        ],
      ),
    );
  }
}