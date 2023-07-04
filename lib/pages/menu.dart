import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:noteday/pages/account.dart';
import 'package:noteday/pages/calendar.dart';
import 'package:noteday/pages/home.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const CalendarPage(),
    const Account()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: const Color(0xff071D31),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 40),
          child: GNav(
            selectedIndex: _selectedIndex,
            onTabChange: _navigateBottomBar,
            backgroundColor: const Color(0xff071D31),
            color: Colors.white,
            activeColor: Colors.white,
            gap: 10,
            iconSize: 32,
            tabBackgroundColor: const Color(0xff071D31).withOpacity(0.2),
            padding: const EdgeInsets.all(20),
            tabs: const [
              GButton(
                icon: Icons.assignment_add,
                text: "Home",
              ),
              GButton(
                icon: Icons.calendar_month_outlined,
                text: "Calendar",
              ),
              GButton(
                icon: Icons.person,
                text: "Account",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
