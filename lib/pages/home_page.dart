import 'package:flutter/material.dart';
import 'package:libraryplus/theme.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key});

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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Halo,',
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Difa Dlyaulhaq',
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Menu',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 8),
                Row(
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
                ),
              ],
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 20,
              runSpacing: 10,
              children: [
                MenuButton(
                  icon: Icons.book,
                  caption: 'Pinjam Buku',
                ),
                MenuButton(
                  icon: Icons.history,
                  caption: 'Pinjaman Aktif',
                ),
                MenuButton(
                  icon: Icons.history,
                  caption: 'Riwayat Pinjaman',
                ),
                MenuButton(
                  icon: Icons.meeting_room,
                  caption: 'Pinjam Ruangan',
                ),
                MenuButton(
                  icon: Icons.book_online,
                  caption: 'E-Book',
                ),
              ],
            ),
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

class MenuButton extends StatelessWidget {
  final IconData icon;
  final String caption;

  const MenuButton({
    Key? key,
    required this.icon,
    required this.caption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, size: 30, color: Colors.black),
          ),
          SizedBox(height: 5),
          Text(
            caption,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
