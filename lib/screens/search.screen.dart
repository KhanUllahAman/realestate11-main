import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:realestate/screens/widgets/custom_Appbar.dart';
import 'package:realestate/screens/widgets/searchCard.dart';

class Searchscreen extends StatelessWidget {
  Searchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(notificationCallback: () {}, notificationIcon: Iconsax.notification,),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                "Welcome Emily Jeckson",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Text(
                "Your Balance",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 38.0,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Row(
                children: [
                  Text(
                    "\$18650.52",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 38.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_drop_up_outlined,
                    color: Colors.green,
                    size: 20,
                  ),
                  Text(
                    "7.2% (5.8 %)",
                    style: TextStyle(color: Colors.grey.shade600),
                  )
                ],
              ),
            ),
            const Divider(
              height: 10,
              thickness: 4.0,
              endIndent: 175.0,
              indent: 30.0,
              color: Color(0xff2c76f8),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Icon(Iconsax.search_favorite),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search...',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Live Auctions",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 22.0,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SearchCard(),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}