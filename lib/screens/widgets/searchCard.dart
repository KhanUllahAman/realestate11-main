import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class searchCard extends StatelessWidget {
  const searchCard({
    super.key,
  });

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
                height: 400,
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            width: 100,
            height: 35,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius:
                    BorderRadius.all(Radius.circular(18)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.live_tv_outlined, color: Colors.white, size: 15,),
                  SizedBox(width: 8,),
                  Text("Live", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
                ],
              ),
              )
            ),
          Positioned(
            bottom: 30,
            left: 10,
            right: 10,
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: 15, horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.all(Radius.circular(15)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Makeen Eastern Fund',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 23.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff0c0e21)),
                        onPressed: () {},
                        child: Text(
                          "01h : 30m : 05s",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Stack(
                          children: [
                            Positioned(
                              child: Container(
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                      "assets/images/p2.jpg"),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 29),
                              child: Positioned(
                                child: Container(
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "assets/images/p3.jpg"),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 57),
                              child: Positioned(
                                child: Container(
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "assets/images/p4.jpg"),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
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
