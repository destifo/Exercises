import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'round_profile_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State {
  int _selectedIndex = 0;

  static List<Widget> pages = [
    RoundProfilePage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.amber,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Edit profile")
          ]),
    );
  }
}
