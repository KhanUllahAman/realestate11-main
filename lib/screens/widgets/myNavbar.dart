import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:realestate/screens/mainhome.dart';
import 'package:realestate/screens/search.screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  List<Widget> pages = [
    mainHome(),
    Searchscreen(),
    mainHome(),
    mainHome(),
  ];

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Positioned.fill(
              child: pages.elementAt(_currentIndex),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(100.0), // set border radius here
                    right: Radius.circular(100.0),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(100.0), // set border radius here
                        right: Radius.circular(100.0),
                      ),
                    ),
                    child: BottomNavigationBar(
                      currentIndex: _currentIndex,
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      backgroundColor: Color(0xff0c0e21),
                      type: BottomNavigationBarType.fixed,
                      onTap: ((value) {
                        setState(() {
                          _currentIndex = value;
                        });
                      }),
                      items: [
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
          ],
        ),
      ),
    );
  }
}
