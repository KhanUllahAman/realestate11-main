import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:realestate/screens/mainhome.dart';
import 'package:realestate/screens/profilescreen.dart';
import 'package:realestate/screens/search.screen.dart';
import 'package:realestate/screens/wallet_screen.dart';

class NavBar extends StatelessWidget {
  final currentIndex = 0.obs;

  final List<Widget> pages = [
    mainHome(),
    Searchscreen(),
    WalletScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Positioned.fill(
              child: Obx(() => pages[currentIndex.value]), // Use Obx for reactive UI updates
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(100.0),
                    right: Radius.circular(100.0),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(100.0),
                        right: Radius.circular(100.0),
                      ),
                    ),
                    child: Obx(
                      ()=> BottomNavigationBar(
                        currentIndex: currentIndex.value,
                        showSelectedLabels: false,
                        showUnselectedLabels: false,
                        backgroundColor: Color(0xff0c0e21),
                        type: BottomNavigationBarType.fixed,
                        onTap: ((value) {
                          currentIndex.value = value;
                        }),
                        items: const [
                          BottomNavigationBarItem(
                            icon: Icon(
                              Iconsax.home,
                              color: Colors.grey,
                            ),
                            label: '',
                            activeIcon: Icon(
                              Iconsax.home,
                              color: Color(0xff2c76f8),
                            ),
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(
                              Iconsax.search_favorite,
                              color: Colors.grey,
                            ),
                            label: '',
                            activeIcon: Icon(
                              Iconsax.search_favorite,
                              color: Color(0xff2c76f8),
                            ),
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(
                              Iconsax.wallet,
                              color: Colors.grey,
                            ),
                            label: '',
                            activeIcon: Icon(
                              Iconsax.wallet,
                              color: Color(0xff2c76f8),
                            ),
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(
                              Iconsax.user,
                              color: Colors.grey,
                            ),
                            label: '',
                            activeIcon: Icon(
                              Iconsax.user,
                              color: Color(0xff2c76f8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
