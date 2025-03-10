import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Helper_widgets/dishe_container.dart';

class FoodApp extends StatefulWidget {
  const FoodApp({super.key});

  @override
  State<FoodApp> createState() => _FoodAppState();
}

class _FoodAppState extends State<FoodApp> {
  List<String> foodNames = [
    'Rice Bowl',
    'Biryani',
    'Pizza',
    'Bakery & Cake',
    'Pasta',
    'Mendu vada',
    'Idli',
    'Samosa'
  ];
  String selectedFood = 'Rice Bowl';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;



    return Scaffold(
      body: Padding(padding: EdgeInsets.only(top: 40),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Topbar(screenWidth: screenWidth, screenHeight: screenHeight),
            HomemadeText(screenWidth: screenWidth),
            _categoriesList(screenWidth, screenHeight),
            ScrollProduct(screenWidth: screenWidth, screenHeight: screenHeight),
            PopularText(screenWidth: screenWidth, screenHeight: screenHeight),
            ScrollProduct(screenWidth: screenWidth, screenHeight: screenHeight)
          ],
        ),
      ),
      
      ),
     
    );
  }



































  Padding _categoriesList(double screenWidth, double screenHeight) {
    return Padding(
      padding:
          EdgeInsets.only(left: screenWidth * 0.051, top: screenWidth * 0.089),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: foodNames.map(
            (e) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedFood = e;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.only(right: screenWidth * 0.04),
                  child: Column(
                    children: [
                      Text(
                        e,
                        style: TextStyle(
                            color: (selectedFood == e)
                                ? Colors.black
                                : Colors.black45,
                            fontSize: screenWidth * 0.038),
                      ),
                      Container(
                        height: screenHeight * 0.019,
                        width: screenWidth * 0.019,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (selectedFood == e)
                              ? Colors.red.shade700
                              : Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

class PopularText extends StatelessWidget {
  const PopularText({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: screenWidth * 0.051, top: screenHeight * 0.06),
      child: Text(
        'Popular this week',
        style: TextStyle(
          fontSize: screenWidth * 0.05,
          color: Colors.black,
        ),
      ),
    );
  }
}

class ScrollProduct extends StatelessWidget {
  const ScrollProduct({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(
            left: screenWidth * 0.051, top: screenHeight * 0.14),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: screenWidth * 0.045),
              child: DisheContainer(
                price: r'$ 5.99',
                disheName: 'Special',
                disheSubName: 'rice bowl',
                dishRating: 4.7,
                imagePath: 'assets/images/paratha_food.png.png',
              ), //assets/images/cleaned_food_2.png
            ),
            Padding(
              padding: EdgeInsets.only(right: screenWidth * 0.045),
              child: DisheContainer(
                price: r'$ 5.00',
                disheName: 'Chicken',
                disheSubName: 'rice bowl',
                dishRating: 4.6,
                color: Color(0xfff6c6bd),
                imagePath: 'assets/images/dhosa_food.png.png',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: screenWidth * 0.045),
              child: DisheContainer(
                price: r'$ 5.99',
                disheName: 'Special',
                disheSubName: 'rice bowl',
                dishRating: 4.7,
                imagePath: 'assets/images/yellow_food.png',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: screenWidth * 0.045),
              child: DisheContainer(
                price: r'$ 5.00',
                disheName: 'Chicken',
                disheSubName: 'rice bowl',
                dishRating: 4.6,
                color: Color(0xfff6c6bd),
                imagePath: 'assets/images/dhosa_food.png.png',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: screenWidth * 0.045),
              child: DisheContainer(
                price: r'$ 5.99',
                disheName: 'Special',
                disheSubName: 'rice bowl',
                dishRating: 4.7,
                imagePath: 'assets/images/paratha_food.png.png',
              ), //assets/images/cleaned_food_2.png
            ),
            Padding(
              padding: EdgeInsets.only(right: screenWidth * 0.045),
              child: DisheContainer(
                price: r'$ 5.99',
                disheName: 'Special',
                disheSubName: 'rice bowl',
                dishRating: 4.7,
                imagePath: 'assets/images/yellow_food.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomemadeText extends StatelessWidget {
  const HomemadeText({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: screenWidth * 0.051, top: screenWidth * 0.075),
      child: RichText(
        text: TextSpan(
          style: TextStyle(
              color: Colors.black,
              fontSize: screenWidth * 0.068,
              letterSpacing: screenWidth * 0.001),
          text: 'Homemade',
          children: [
            TextSpan(
              text: ' Food',
              style: TextStyle(
                  fontSize: screenWidth * 0.068,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class Topbar extends StatelessWidget {
  const Topbar({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: screenWidth * 0.051,
          top: screenHeight * 0.031,
          right: screenWidth * 0.051),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.align_horizontal_left_outlined,
            color: Colors.black,
          ),
          FilledButton.tonalIcon(
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Color(0xfff5fafa)),
                padding: WidgetStatePropertyAll(EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.065,
                    vertical: screenHeight * 0.02))),
            icon: Icon(
              Icons.search,
              size: screenWidth * 0.07,
              color: Colors.black,
            ),
            onPressed: () {},
            label: Text(
              'Sabir Bugti',
              style: TextStyle(
                  fontSize: screenWidth * 0.04, color: Colors.grey.shade500),
            ),
          ),
        ],
      ),
    );
  }
}
