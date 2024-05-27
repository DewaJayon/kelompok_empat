import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:kelompok_empat/pages/create_page.dart';
import 'package:kelompok_empat/pages/home_page.dart';
import 'package:kelompok_empat/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    CreatePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_currentIndex),
      bottomNavigationBar: SafeArea(
        child: Container(
          color: Theme.of(context).colorScheme.background,
          height: 60,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey, // tab button ripple color when pressed
              hoverColor: Colors.grey, // tab button hover color
              activeColor: Colors.white,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Theme.of(context).colorScheme.primary,
              backgroundColor: Theme.of(context).colorScheme.background,
              color: Colors.white,
              gap: 8,
              tabs: const [
                GButton(
                  icon: Icons.home_outlined,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.add_circle_outline,
                  text: 'Tambah Produk',
                ),
                GButton(
                  icon: Icons.person_outline,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _currentIndex,
              onTabChange: (index) {
                setState(
                  () {
                    _currentIndex = index;
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
