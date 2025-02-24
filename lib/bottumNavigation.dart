import 'package:ecommerce/cart.dart';
import 'package:ecommerce/home.dart';
import 'package:ecommerce/popularproduct.dart';
import 'package:ecommerce/profile.dart';
import 'package:flutter/material.dart';

class Bottumnavigation extends StatefulWidget {
  const Bottumnavigation({super.key});

  @override
  State<Bottumnavigation> createState() => _BottumnavigationState();
}

class _BottumnavigationState extends State<Bottumnavigation> {
  int _selectedIndex = 0;
  final screens = [Home(),Popularproduct(),Cart(),Profile()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded), label: ''),
          
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFFAA14F0),
        unselectedItemColor: Color(0xFF9A9998),
        onTap: _onItemTapped,
      ),
    );
  }
}