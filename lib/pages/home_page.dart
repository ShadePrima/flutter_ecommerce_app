import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/pages/cart_page.dart';
import 'package:flutter_ecommerce_app/pages/intro_page.dart';
import 'package:flutter_ecommerce_app/pages/shop_page.dart';
import '../components/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  //this method will update our selected index
  //when the user taps on the bottom bar

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //page to display
  final List<Widget> _page = [
    //shop page
    const ShopPage(),

    //cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              Scaffold.of(context).openDrawer();
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => IntroPage()));
            },
          );
        }),
      ),
      drawer: Drawer(),
      body: _page[_selectedIndex],
    );
  }
}
