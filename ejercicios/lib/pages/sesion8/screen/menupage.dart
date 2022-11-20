import 'package:ejercicio/pages/sesion8/screen/amigospage.dart';
import 'package:ejercicio/pages/sesion8/screen/bandejapage.dart';
import 'package:ejercicio/pages/sesion8/screen/homepage.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = [
    HomePage(),
    AmigosPage(),
    Text('data3'),
    BandejaPage(),
    Text('data5'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_sharp),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_collection_rounded,
              size: 35,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            label: '.',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
