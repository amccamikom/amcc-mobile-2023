import 'package:libraryplus/pages/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:libraryplus/theme.dart';
import 'package:libraryplus/widgets/home_book_items.dart';
import 'package:libraryplus/widgets/home_menu_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ValueNotifier<int> _selectedIndexNotifier = ValueNotifier<int>(0);

  void _onItemTapped(int index) {
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Profilepage()),
      );
    } else {
      _selectedIndexNotifier.value = index;
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: backgroundColor2,
      statusBarIconBrightness: Brightness.light,
    ));
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 185,
            decoration: BoxDecoration(
              color: backgroundColor2,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Profilepage()));
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('assets/ic_profile.png'),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Row(
                            children: [
                              Text(
                                'Hello,',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Text(
                                'Ricki',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Icon(
                        Icons.notifications_outlined,
                        size: 32,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.search,
                        color: textColor3,
                      ),
                      hintText: 'Cari Buku',
                      hintStyle: blackTextStyle.copyWith(
                        fontSize: 14,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Menu',
                  style: blackTextStyle.copyWith(
                    color: backgroundColor2,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    //menu baris 1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomeMenuItem(
                          onTap: () {},
                          icon: Icons.library_books_outlined,
                          title: 'Pinjam\nBuku',
                          color: Colors.blue,
                        ),
                        HomeMenuItem(
                          onTap: () {},
                          icon: Icons.menu_book_outlined,
                          title: 'Pinjaman\nAktif',
                          color: Colors.yellow,
                        ),
                        HomeMenuItem(
                          onTap: () {},
                          icon: Icons.book_rounded,
                          title: 'Riwayat\nPinjaman',
                          color: Colors.green,
                        ),
                        HomeMenuItem(
                          onTap: () {},
                          icon: Icons.meeting_room_outlined,
                          title: 'Pinjam\nRuangan',
                          color: Colors.red,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    //menu baris 2
                    Row(
                      children: [
                        HomeMenuItem(
                          onTap: () {},
                          icon: Icons.book_online_rounded,
                          title: 'E-Book',
                          color: Colors.deepPurple,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rekomendasi Buku',
                      style: blackTextStyle.copyWith(
                        color: backgroundColor2,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Lihat Semua',
                        style: blackTextStyle.copyWith(
                          color: backgroundColor2,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeBookItem(
                  onTap: () {},
                  imageUrl: 'assets/img_coverbook1.png',
                  title: 'HARRY POTTER\nAND THE GOBLET FIRE',
                ),
                HomeBookItem(
                  onTap: () {},
                  imageUrl: 'assets/img_coverbook1.png',
                  title: 'HARRY POTTER\nAND THE GOBLET FIRE',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 64,
          ),
        ],
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
            selectedLabelStyle: blackTextStyle.copyWith(
              color: backgroundColor2,
              fontSize: 10,
              fontWeight: FontWeight.w700,
            ),
            unselectedLabelStyle: blackTextStyle.copyWith(
              fontSize: 10,
              fontWeight: FontWeight.w700,
            ),
            currentIndex: value,
            selectedItemColor: backgroundColor2,
            onTap: _onItemTapped,
          );
        },
      ),
    );
  }
}
