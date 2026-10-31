import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../const/colors.dart';
import '../const/font_style.dart';
import 'bottom_nav_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController pageController = PageController();

  int pageCounter = 0;

  List<Widget> introList = [
    PageViewItems(
      title: 'Our repulation is an solid as concrete.',
      imageName: 'vector1',
    ),
    PageViewItems(
      title: 'Real Estate Service At Their Peak.',
      imageName: 'vector2',
    ),
    PageViewItems(
      title: 'A Premier Real Estate Professional.',
      imageName: 'vector3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        spacing: 20,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => BottomNavScreen()),
                );
              },
              child: Text('Skip'),
            ),
          ),

          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: introList.length,

              onPageChanged: (value) {
                setState(() {
                  pageCounter = value + 1;
                });
              },
              itemBuilder: (context, index) {
                return introList[index];
              },
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: MyColors.primaryColor,
              fixedSize: Size(size.width * 0.7, 45),
            ),
            onPressed: () {
              if (pageCounter < 3) {
                pageController.nextPage(
                  duration: Duration(milliseconds: 600),
                  curve: Curves.ease,
                );
              } else {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => BottomNavScreen()),
                );
              }
            },
            child: Text(
              pageCounter < 3 ? 'Next' : 'Start App',
              style: getLargeBodyStyle(context, color: MyColors.lightColor),
            ),
          ),
          SmoothPageIndicator(
            controller: pageController,
            // PageController
            count: introList.length,
            effect: ExpandingDotsEffect(dotWidth: 10, dotHeight: 10),
            // your preferred effect
            onDotClicked: (index) {},
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
//PageViewItems
class PageViewItems extends StatelessWidget {
  const PageViewItems({
    super.key,
    required this.imageName,
    required this.title,
  });

  final String imageName;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/$imageName.png'),

        Text(
          title,
          textAlign: TextAlign.center,
          style: getLargeTitleStyle(context, color: MyColors.primaryColor),
        ),
      ],
    );
  }
}
