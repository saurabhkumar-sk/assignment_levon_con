import 'package:flutter/material.dart';
import 'package:levon_consulting_assignment/screens/assignment_screen.dart';
import 'package:levon_consulting_assignment/screens/home_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const AssignmentScreen(),
    const Text(
      'HomeWork',
      style: TextStyle(color: Colors.red),
      // style: optionStyle,
    ),
    const Text(
      'Pay Fee',
      style: TextStyle(color: Colors.red),
      // style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromARGB(255, 0, 255, 8),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment,
            ),
            label: "Assignment",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_work,
            ),
            label: "HomeWork",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.attach_money_rounded,
            ),
            label: "Pay Fee",
          ),
        ],
      ),
      body: _widgetOptions.elementAt(
        _selectedIndex,
      ),
    );
  }
}
