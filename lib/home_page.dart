import 'package:flutter/material.dart';
import 'package:food_app/pizza.dart';
import 'package:food_app/sandwich.dart';
import 'package:food_app/snacks.dart';

import 'Home_Nav_Bar.dart';
import 'item_Widget.dart';
void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xFF232227),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Icon(Icons.sort_rounded,
                            color: Colors.white, size: 35),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(Icons.search, color: Colors.white, size: 35),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Hot & Fast Food',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Delivers on Time',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 22,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                TabBar(
                  isScrollable: true,
                  indicator:BoxDecoration(

                  ),
                  labelStyle: TextStyle(fontSize: 20,color: Colors.white),
                  labelPadding: EdgeInsets.symmetric(horizontal: 20),
                  tabs: [
                    Tab(text: 'Burger'),
                    Tab(text: 'Pizza'),
                    Tab(text: 'Sandwich'),
                    Tab(text: 'Snacks'),
                  ],
                ),
                Flexible(
                  flex: 1,
                  child: TabBarView(
                    children: [
                      Itemswidget(),
                      pizza(),
                      sandwich(),
                      snacks(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: HomeNavBar(),
      ),
    );
  }
}
