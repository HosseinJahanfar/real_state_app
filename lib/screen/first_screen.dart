import 'package:flutter/material.dart';

import '../const/colors.dart';
import '../const/font_style.dart';
import '../model/property_model.dart';
import '../widget/search_bar_section.dart';
import '../widget/user_info_section.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  static const String screenName = '/first_screen';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: MyColors.backgroundColor,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserInfoSection(),
              SizedBox(height: 25),
              SearchBarSection(size: size),
              SizedBox(height: 20),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryItems(iconData: Icons.category),
                    CategoryItems(iconData: Icons.home_filled),

                    CategoryItems(iconData: Icons.apartment),
                    CategoryItems(iconData: Icons.home),
                    CategoryItems(iconData: Icons.window),
                    CategoryItems(iconData: Icons.home),
                    CategoryItems(iconData: Icons.car_rental),
                  ],
                ),
              ),
              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All property',
                    style: getTitleStyle(context, fontWeight: FontWeight.bold),
                  ),

                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See more',
                      style: getBodyStyle(context, color: Colors.green),
                    ),
                  ),
                ],
              ),

              Container(
                width: size.width,

                height: 300,

                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: PropertyModel.properties.length,
                  itemBuilder: (context, index) {
                    final helper = PropertyModel.properties[index];
                    return Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      width: size.width * 0.7,
                      decoration: BoxDecoration(
                        color: MyColors.lightColor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              helper.image,
                              width: size.width,
                              height: 145,
                              fit: BoxFit.cover,
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  helper.title,
                                  style: getLargeBodyStyle(
                                    context,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 1,
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  helper.price,
                                  style: getBodyStyle(
                                    context,
                                    fontWeight: FontWeight.bold,
                                    color: MyColors.primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: MyColors.grey,
                                    ),
                                    Expanded(
                                      child: Text(
                                        helper.address,
                                        style: getCaptionsStyle(
                                          context,
                                          color: MyColors.grey,
                                        ),
                                        maxLines: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  helper.area,
                                  style: getCaptionsStyle(
                                    context,
                                    color: MyColors.grey,
                                  ),
                                  maxLines: 1,
                                ),
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.bed,
                                      color: MyColors.primaryColor,
                                      size: 20,
                                    ),
                                    Expanded(
                                      child: Text(
                                        '${helper.bed} bed',
                                        style: getCaptionsStyle(context),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Expanded(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.bathtub_outlined,
                                      color: MyColors.primaryColor,
                                      size: 20,
                                    ),
                                    Expanded(
                                      child: Text(
                                        '${helper.bathroom} bath',
                                        style: getCaptionsStyle(context),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Expanded(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.kitchen,
                                      color: MyColors.primaryColor,
                                      size: 20,
                                    ),
                                    Expanded(
                                      child: Text(
                                        '${helper.kitchen} kitchen',
                                        style: getCaptionsStyle(context),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),

              Text(
                'Featured property',
                style: getTitleStyle(context, fontWeight: FontWeight.bold),
              ),

              Container(
                width: size.width,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: PropertyModel.properties.length,
                  reverse: true,
                  itemBuilder: (context, index) {
                    final helper = PropertyModel.properties[index];
                    return Container(
                      height: 135,
                      width: size.width,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: MyColors.lightColor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),

                      child: Row(
                        spacing: 10,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              helper.image,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),

                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        helper.title,
                                        style: getBodyStyle(
                                          context,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        maxLines: 1,
                                      ),
                                    ),
                                    Flexible(
                                      child: Text(
                                        helper.price,
                                        style: getSmallBodyStyle(
                                          context,
                                          color: MyColors.primaryColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                Flexible(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: MyColors.grey,
                                      ),
                                      Text(
                                        helper.address,
                                        style: getCaptionsStyle(
                                          context,
                                          color: MyColors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.landscape_outlined,
                                            color: MyColors.primaryColor,
                                            size: 20,
                                          ),
                                          Expanded(
                                            child: Text(
                                              helper.area,
                                              style: getCaptionsStyle(context),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Expanded(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.bed,
                                            color: MyColors.primaryColor,
                                            size: 20,
                                          ),
                                          Expanded(
                                            child: Text(
                                              '${helper.bed}',
                                              style: getCaptionsStyle(context),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Expanded(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.bathtub_outlined,
                                            color: MyColors.primaryColor,
                                            size: 20,
                                          ),
                                          Expanded(
                                            child: Text(
                                              '${helper.bathroom}',
                                              style: getCaptionsStyle(context),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Expanded(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.kitchen,
                                            color: MyColors.primaryColor,
                                            size: 20,
                                          ),
                                          Expanded(
                                            child: Text(
                                              '${helper.kitchen}',
                                              style: getCaptionsStyle(context),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryItems extends StatelessWidget {
  const CategoryItems({super.key, required this.iconData});

  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(15),

        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 2)),
        ],
      ),
      child: Icon(iconData, color: Colors.blueAccent),
    );
  }
}
