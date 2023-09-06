import 'package:flutter/material.dart';
import 'home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // navigate around the bottom nav bar
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // navigate each screens
  final List<Widget> _children = [
    const Home(),
    const Center(child: Text('static recipes here')),
    const Center(child: Text('user profile here'))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFBF1EF),
        body: _children[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: const Color(0xFFFBF1EF),
            fixedColor: const Color(0xFF3D0C02),
            currentIndex: _selectedIndex,
            onTap: _navigateBottomNavBar,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.menu_book), label: 'Menu'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Account'),
            ],
            iconSize: 30));
  }
}
