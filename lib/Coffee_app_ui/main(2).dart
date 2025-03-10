import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CoffeeDetails extends StatefulWidget {
  const CoffeeDetails({super.key});

  @override
  State<CoffeeDetails> createState() => _CoffeeDetailsState();
}

class _CoffeeDetailsState extends State<CoffeeDetails> {
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;


    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            TopAppBar(screenHeight: screenHeight, screenWidth: screenWidth),
            _coffeeDetails(screenHeight, screenWidth),
          ],
        ),
      ),
    bottomNavigationBar: AddToCartWidget(screenWidth: screenWidth, screenHeight: screenHeight),
    );
  }























  Align _coffeeDetails(double screenHeight, double screenWidth) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(top: screenHeight * 0.455),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        //height: screenHeight * 0.535,
        width: screenWidth,
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              screenWidth * 0.05, screenHeight * 0.04, screenWidth * 0.05, 0.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Coffee',
                    style: TextStyle(fontSize: screenWidth * 0.05),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            quantity++;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(screenWidth * 0.024),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(17.0)),
                          child: Icon(Icons.add),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.0265),
                        child: Text(
                          '$quantity',
                          style: TextStyle(fontSize: screenWidth * 0.058),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (quantity == 0) {
                              return;
                            }
                            quantity--;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(screenWidth * 0.024),
                          decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.circular(17.0)),
                          child: Icon(Icons.horizontal_rule_rounded),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Cappuccino',
                  style: TextStyle(fontSize: screenWidth * 0.06),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.015,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Seller',
                  style: TextStyle(fontSize: screenWidth * 0.048),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(screenWidth * 0.001,
                    screenHeight * 0.008, screenWidth * 0.001, 0.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/coffee.jpg',
                              ),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle),
                      height: screenWidth * 0.15,
                      width: screenWidth * 0.15,
                    ),
                    SizedBox(
                      width: screenWidth * 0.043,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sabir Bugti',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: screenWidth * 0.05),
                        ),
                        Text(
                          'Cafe Ownar',
                          style: TextStyle(fontSize: screenWidth * 0.04),
                        )
                      ],
                    ),
                    Expanded(child: SizedBox()),
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      radius: screenWidth * 0.065,
                      child: Icon(
                        Icons.chat,
                        color: Colors.cyan,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      radius: screenWidth * 0.065,
                      child: Icon(
                        Icons.call,
                        color: Colors.cyan,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Description',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: screenWidth * 0.05),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.015,
              ),
              Text(
                'A cup of coffee is a complex and multifaceted beverage with a rich history and cultural significance. It can be enjoyed in many ways, from a simple black coffee to a more elaborate latte or cappuccino.',
                style: TextStyle(fontSize: screenWidth * 0.04),
              ),
              Divider(
                color: Colors.black54,
                height: screenWidth * 0.07,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Available in',
                  style: TextStyle(
                      fontSize: screenWidth * 0.054,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.015,
              ),
              Row(
                children: [
                  Container(
                    height: screenWidth * 0.23,
                    width: screenWidth * 0.23,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(11.0),
                        border: Border.all(color: Colors.cyan, width: 1.3)),
                    child: Icon(Icons.coffee_outlined),
                  ),
                  SizedBox(
                    width: screenWidth * 0.04,
                  ),
                  Container(
                    height: screenWidth * 0.23,
                    width: screenWidth * 0.23,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(11.0),
                        border: Border.all(color: Colors.black45, width: 1.3)),
                    child: Icon(Icons.coffee_outlined),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddToCartWidget extends StatelessWidget {
  const AddToCartWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.001),
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05, vertical: screenHeight * 0.02),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(screenWidth * 0.04)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Total Price',
                  style: TextStyle(fontSize: screenWidth * 0.045),
                ),
                Text(
                  r'$16.00',
                  style: TextStyle(
                      fontSize: screenWidth * 0.052,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            FilledButton.tonalIcon(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.cyan),
                  padding: WidgetStatePropertyAll(EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.07,
                      vertical: screenWidth * 0.03))),
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.white,
                size: screenWidth * 0.06,
              ),
              onPressed: () {},
              label: Text(
                'Add to cart',
                style: TextStyle(
                    color: Colors.white, fontSize: screenWidth * 0.046),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopAppBar extends StatelessWidget {
  const TopAppBar({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.indigo.shade200,
          image: DecorationImage(
              image: AssetImage(
                'assets/images/cup_filled_with_coffee(2).jpg',
              ),
              fit: BoxFit.cover),
        ),
        height: screenHeight * 0.50,
        width: screenWidth,
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: screenHeight * 0.055, horizontal: screenWidth * 0.035),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        padding: EdgeInsets.all(screenWidth * 0.028),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_sharp),
                      ),
                      Expanded(child: SizedBox()),
                      IconButton(
                        padding: EdgeInsets.all(screenWidth * 0.028),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        icon: Icon(Icons.favorite_outline),
                      ),
                      SizedBox(
                        width: screenWidth * 0.017,
                      ),
                      IconButton(
                        padding: EdgeInsets.all(screenWidth * 0.028),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        icon: Icon(Icons.share),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(11.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: screenWidth * 0.009,
                            horizontal: screenWidth * 0.04),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow.shade700,
                            ),
                            Text(
                              '4.8',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: screenWidth * 0.085,
                  backgroundColor: Colors.black.withOpacity(0.65),
                  child: CircleAvatar(
                    radius: screenWidth * 0.048,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.black,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
