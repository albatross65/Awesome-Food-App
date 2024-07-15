import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Single_item_snacks.dart';


class snacks extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/13.png',
    'assets/14.png',
    'assets/15.png',
    'assets/16.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        childAspectRatio: 0.78,
        children: [
          for (int i = 0; i < imagePaths.length; i++)
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF232227),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SingleItemSnacks(imagePath: imagePaths[i]),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Image.asset(imagePaths[i],
                          height: 75,
                          width: 100,
                          fit: BoxFit.cover),
                    ),
                  ),
                  // SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Cheeze Spicy',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Hot Snacks ',
                      style: TextStyle(fontSize: 16, color: Colors.white60),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$35',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          CupertinoIcons.cart_badge_plus,
                          size: 27,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
