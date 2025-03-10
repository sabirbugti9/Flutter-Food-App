import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(DisheContainer());

class DisheContainer extends StatelessWidget {
  String imagePath;
  double dishRating;
  String disheName;
  String disheSubName;
  String price;
  Color color;

  DisheContainer(
      {this.imagePath = '',
      this.dishRating = 0.0,
      this.disheName = '',
      this.disheSubName = '',
      this.price = '',
      this.color = const Color(0xffccccff)});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Container(
              alignment: Alignment(0, 1),
              height: screenWidth * 0.42, // screenHeight * 0.26
              width: screenWidth * 0.60,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(30.0)),
              child: Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.05,
                    right: screenWidth * 0.05,
                    bottom: screenWidth * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Wrap(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xff8686af),
                              size: screenWidth * 0.042,
                            ),
                            SizedBox(
                              width: screenWidth * 0.017,
                            ),
                            Text(
                              // '4.7',
                              '$dishRating',
                              style: TextStyle(fontSize: screenWidth * 0.029),
                            ),
                          ],
                        ),
                        Text(
                          disheName,
                          style: TextStyle(
                              fontSize: screenWidth * 0.045,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          disheSubName,
                          style: TextStyle(
                              fontSize: screenWidth * 0.045,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: screenWidth * 0.073,
                      backgroundColor: Color(0xff8686af),
                      child: Text(
                         price,
                        // '\$$price',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              )),
          Positioned(
            top: -70,
            child: SizedBox(
              height: screenWidth * 0.35,
              width: screenHeight * 0.35,
              child: Card(
                color: Colors.transparent,
                shape: CircleBorder(),
                elevation: 20,
                child: Image.asset(
                  imagePath,
                ),
              ),
            ),
          ),
        ]);
  }
}
