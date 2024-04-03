import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:realestate/controller/blink_icon.dart';

class NearbyPropertyCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;
  final String subTitle;
  final String rating;
  final String bedroom;
  final String bathroom;
  final String squarefit;

  NearbyPropertyCard({
    required this.imagePath,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.rating,
    required this.bedroom,
    required this.bathroom,
    required this.squarefit,
  });

  @override
  Widget build(BuildContext context) {
    final HeartController heartController = Get.put(HeartController());
    return Container(
      width: 350,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[100],
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  height: 200,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          price,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Iconsax.location,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              subTitle,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Iconsax.star,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              rating,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.bed_rounded,
                          size: 17,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          bedroom,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.bathroom_outlined,
                          size: 17,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          bathroom,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(
                          Icons.square_foot_outlined,
                          size: 17,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          squarefit,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              decoration: BoxDecoration(
                color: Color(0xff0c0e21),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'For Sale',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: GestureDetector(
              onTap: () {
                heartController.toggleHeart();
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.9),
                ),
                child: Center(
                  child: Obx(() {
                    return Icon(
                      heartController.isFilled.value
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: heartController.isFilled.value
                          ? Colors.red
                          : Colors.grey,
                      size: 20,
                    );
                  }),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
