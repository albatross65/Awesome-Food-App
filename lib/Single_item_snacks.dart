import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Single_Item_Nav_Bar.dart';

class SingleItemSnacks extends StatelessWidget {
  final String imagePath;

  SingleItemSnacks({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF232227),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 25, left: 10, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios_new,
                        color: Colors.white, size: 32),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(CupertinoIcons.cart_fill,
                        color: Colors.white, size: 32),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  height: 220, // Adjusted this value
                  width: 220,  // Adjusted this value
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.contain, // Adjust fit as needed
                  ),
                ),
              ),
              SizedBox(height: 10), // Reduced this value
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hot & Fresh Burger',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24, // Adjusted this value
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Icon(
                                  CupertinoIcons.minus,
                                  size: 20,
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              '2',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 8),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Icon(
                                  CupertinoIcons.plus,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10), // Reduced this value
                  Text(
                    'We proudly offer  mouthwatering Snacks with cheese, onion, a refreshing cold drink, and crispy fries. Experience the delicious taste of our Snacks with cheese, onion, cold drink, and fries. Savor the perfect Snacks experience with our juicy patty, crispy lettuce, melted cheese, and a refreshing drink.',
                    style: TextStyle(
                        color: Colors.white60,
                        fontSize: 16 // Adjusted this value
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SingleItemNavBar(),
    );
  }
}

class SingleItemNavBar extends StatelessWidget {
  const SingleItemNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70, // Adjust this value if necessary
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Total Price',
                style: TextStyle(
                    color: Colors.white60,
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 5),
              Text('\$60',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          InkWell(
            onTap: (){},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFFEF8322),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)
                ),
              ),
              child: Row(
                children: [
                  Text('Buy Now', style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                  ),
                  SizedBox(width: 10),
                  Icon(CupertinoIcons.cart_fill,
                      color: Colors.white,
                      size: 30)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
