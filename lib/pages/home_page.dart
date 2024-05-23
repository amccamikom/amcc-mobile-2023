import 'package:flutter/material.dart';
import 'package:libraryplus/theme.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

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

  // ValueNotifier untuk mengelola indeks yang dipilih
  final ValueNotifier<int> _selectedIndexNotifier = ValueNotifier<int>(0);

  // Daftar widget untuk setiap halaman yang ditampilkan berdasarkan menu yang dipilih
  static final List<Widget> _widgetOptions = <Widget>[
    const Center(child: Text('Home Page')),
    const Center(child: Text('QR Page')),
    const Center(child: Text('Profile Page')),
  ];

  // Fungsi untuk menangani perubahan indeks ketika item BottomNavigationBar ditekan
  void _onItemTapped(int index) {
    _selectedIndexNotifier.value = index;
  }
}
