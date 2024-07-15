import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SingleItemNavBar extends StatelessWidget {
  const SingleItemNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text('Total Price',
                style: TextStyle(
                color: Colors.white60,
                fontSize: 20,
                fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 10),
              Text('\$100',
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
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            decoration: BoxDecoration(
              color: Color(0xFFEF8322),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20)
              ),
            ),child:Row(
            children: [
              Text('Buy Now',style: TextStyle(
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
          )
          ),
        ],
      ),
    );
  }
}
