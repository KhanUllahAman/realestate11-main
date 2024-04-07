import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:realestate/screens/widgets/card_details_button.dart';

class CardDetailsWidget extends StatelessWidget {
  final String Cardtitle;
  CardDetailsWidget({
  required this.Cardtitle
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Card_details_buttons(
                  buttonName: 'About',
                  buttonbgColor: Colors.grey.shade200,
                  buttontextColor: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Card_details_buttons(
                  buttonName: 'Details',
                  buttonbgColor: Color(0xff0c0e21),
                  buttontextColor: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Card_details_buttons(
                  buttonName: 'Attachments',
                  buttonbgColor: Colors.grey.shade200,
                  buttontextColor: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Card_details_buttons(
                  buttonName: 'Location',
                  buttonbgColor: Colors.grey.shade200,
                  buttontextColor: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Card_details_buttons(
                  buttonName: 'Call',
                  buttonbgColor: Colors.grey.shade200,
                  buttontextColor: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Card_details_buttons(
                  buttonName: 'Details seller',
                  buttonbgColor: Colors.grey.shade200,
                  buttontextColor: Colors.black,
                ),
              ],
            ),
          ),
        ),
        Divider(
          height: 20,
          thickness: 3,
          color: Colors.grey.shade300,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Text(
                Cardtitle,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w300,
                  fontSize: 22.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "(100%)",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w300,
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
        const Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Icon(
                Iconsax.clock,
                size: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text("01:00 PM"),
              SizedBox(
                width: 10,
              ),
              Icon(
                Iconsax.calendar,
                size: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text("20-07-2023")
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Fund Type",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 17.0,
                    color: Colors.black,
                  )),
              const SizedBox(
                height: 10,
              ),
              Text(
                  "A private closed direct financing fund that is complaint with\nthe provisions of Islamic sharia",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    fontSize: 12.0,
                    color: Colors.black,
                  )),
              const SizedBox(
                height: 20,
              ),
              Text("Investment strategy",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 17.0,
                    color: Colors.black,
                  )),
              const SizedBox(
                height: 10,
              ),
              Text(
                  "The fund aims to achive its goal by investing in direct\nfinancing activities, including commercial financing.\ninvestment financing investment funds",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    fontSize: 12.0,
                    color: Colors.black,
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 80,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Fund Size",
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    Text("\$ 2000,000,000")
                  ],
                ),
              ),
              Container(
                height: 80,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Client coverage",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text("\$ 2000,000,000")
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          height: 20,
          thickness: 3,
          color: Colors.grey.shade300,
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Custodian",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 17.0,
                    color: Colors.black,
                  )),
              const SizedBox(
                height: 10,
              ),
              Text("Allinma Investment",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    fontSize: 12.0,
                    color: Colors.black,
                  )),
              const SizedBox(
                height: 20,
              ),
              Text("Supervision",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 17.0,
                    color: Colors.black,
                  )),
              const SizedBox(
                height: 10,
              ),
              Text("Capital Market Authority",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    fontSize: 12.0,
                    color: Colors.black,
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 55),
          child: Column(
            children: [
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff2c76f8)),
                    onPressed: () {},
                    child: Text(
                      "Investment starting soon",
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ),
        SizedBox(
          height: 50,
        )
      ],
    );
  }
}
