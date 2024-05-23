import 'package:flutter/material.dart';
import 'package:libraryplus/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget buildMenuButton(String caption, IconData iconData) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(iconData, size: 30, color: Colors.black),
        ),
        const SizedBox(height: 5),
        Text(
          caption,
          style: TextStyle(fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor2,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/ic_profile.png'),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'Halo,\nDifa Dlyaulhaq',
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 32,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 32,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: ValueListenableBuilder<int>(
        valueListenable: _selectedIndexNotifier,
        builder: (context, value, child) {
          return BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.qr_code),
                label: 'QR',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            currentIndex: value,
            selectedItemColor: Colors.blue,
            onTap: _onItemTapped,
          );
        },
      ),
    );
  }
}
