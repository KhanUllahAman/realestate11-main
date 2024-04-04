import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realestate/screens/widgets/My_Button.dart';
import 'package:realestate/screens/widgets/custom_Appbar.dart';
import 'package:realestate/screens/widgets/home_widgets.dart';
import 'package:realestate/screens/widgets/nearbyproperty_card.dart';

class mainHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        notificationCallback: () {},
        notificationIcon: Icons.menu_outlined,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Text(
                "Find Your",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 38.0,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Text(
                "Dream Home",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 38.0,
                  color: Colors.black,
                ),
              ),
            ),
            const Divider(
              height: 10,
              thickness: 4.0,
              endIndent: 120.0,
              indent: 25.0,
              color: Color(0xff2c76f8),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Experience the perfect blend  of comfort and  tranquility in your ideal living space",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w300,
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    MyButton(
                      nameText: 'Recent',
                      color: Colors.grey.shade200,
                      textColor: Colors.black,
                    ),
                    const SizedBox(width: 10),
                    MyButton(
                      nameText: 'Popular',
                      color: Colors.grey.shade200,
                      textColor: Colors.black,
                    ),
                    const SizedBox(width: 10),
                    const MyButton(
                      nameText: 'Most Searching',
                      color: Color(0xff2c76f8),
                      textColor: Colors.white,
                    ),
                    const SizedBox(width: 10),
                    MyButton(
                      nameText: 'Best Selling',
                      color: Colors.grey.shade200,
                      textColor: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "Recommended",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: Text("See All"),
                )
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 14 / 19,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: [
                  Myhomewidgets(
                    imagePath: "assets/images/7.jpg",
                    myText: 'Maisonette\nApartment',
                    myPrice: '\$24.65k',
                  ),
                  Myhomewidgets(
                    imagePath: "assets/images/8.jpg",
                    myText: 'Colonial\nApartment',
                    myPrice: '\$34.55k',
                  ),
                  Myhomewidgets(
                    imagePath: "assets/images/9.jpg",
                    myText: 'Victorian\nApartment',
                    myPrice: '\$20.65k',
                  ),
                  Myhomewidgets(
                    imagePath: "assets/images/10.jpg",
                    myText: 'Craftsman\nApartment',
                    myPrice: '\$15.65k',
                  ),
                ],
              ),
            ),
            SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "Nearby Property",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text("See All"),
                )
              ],
            ),
            SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    NearbyPropertyCard(
                      imagePath: "assets/images/11.jpg",
                      title: "Sky Dandelions",
                      subTitle: "California, USA",
                      price: '\$ 790.000',
                      rating: '4.5',
                      bedroom: '4 Bedroom',
                      bathroom: '4 Bathroom',
                      squarefit: '6000 sq',
                    ),
                    NearbyPropertyCard(
                      imagePath: "assets/images/12.jpg",
                      title: "Cozy Apartment",
                      subTitle: "New York, USA",
                      price: '\$ 580.000',
                      rating: '5.0',
                      bedroom: '3 Bedroom',
                      bathroom: '3 Bathroom',
                      squarefit: '1000 sq',
                    ),
                    NearbyPropertyCard(
                      imagePath: "assets/images/13.jpg",
                      title: "Luxury Villa",
                      subTitle: "Los Angeles, USA",
                      price: '\$ 65.000',
                      rating: '3.5',
                      bedroom: '5 Bedroom',
                      bathroom: '5 Bathroom',
                      squarefit: '2000 sq',
                    ),
                    NearbyPropertyCard(
                      imagePath: "assets/images/14.jpg",
                      title: "Modern Condo",
                      subTitle: "Miami, USA",
                      price: '\$ 90.000',
                      rating: '4.4',
                      bedroom: '5 Bedroom',
                      bathroom: '5 Bathroom',
                      squarefit: '5000 sq',
                    ),
                    NearbyPropertyCard(
                      imagePath: "assets/images/15.jpg",
                      title: "Charming Bungalow",
                      subTitle: "Texas, USA",
                      price: '\$ 100.000',
                      rating: '2.5',
                      bedroom: '3 Bedroom',
                      bathroom: '3 Bathroom',
                      squarefit: '1000 sq',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
