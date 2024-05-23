import 'package:flutter/material.dart';
import 'package:libraryplus/theme.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final String username = 'User123'; // Ganti dengan username yang sesuai

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/profile.jpg'), // Ganti dengan path foto profil yang sesuai
            ),
            const SizedBox(width: 10),
            Text('halo, $username'),
          ],
        ),
      ),
      body: Center(
        child: ValueListenableBuilder<int>(
          valueListenable: _selectedIndexNotifier,
          builder: (context, value, child) {
            return _widgetOptions.elementAt(value);
          },
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
