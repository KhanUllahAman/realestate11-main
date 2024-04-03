import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/16.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
                // height: 200, // Adjusted height
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 6,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.live_tv_outlined,
                    color: Colors.white,
                    size: 15,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Live",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 10,
            right: 10,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.all(Radius.circular(15),
              ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Makeen Eastern Fund',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0, // Adjusted font size
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff0c0e21),
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "01h : 30m : 05s",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/p2.jpg"),
                          ),
                          SizedBox(width: 5),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/p3.jpg"),
                          ),
                          SizedBox(width: 5),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/p4.jpg"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
