import 'package:flutter/material.dart';
import 'Single_Item_Page.dart';
import 'home_page.dart'; // Ensure to import the HomePage file

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState(){
    super.initState();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        "SingleItemPage": (context) => SingleItemPage(imagePath: 'imagePaths[i]'), // Empty imagePath to avoid error
      },
    );
  }
}
