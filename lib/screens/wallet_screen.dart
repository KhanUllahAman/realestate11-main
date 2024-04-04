import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:realestate/screens/widgets/custom_Appbar1.dart';
import 'package:u_credit_card/u_credit_card.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar1(
        notificationCallback: () {},
        myAppbartitle: 'Recharge The Wallet',
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Center(
              child: SizedBox(
                width: 325,
                child: CreditCardUi(
                  cardHolderFullName: 'Mohammed Aman Khan',
                  cardNumber: '4123456781234567',
                  validFrom: '01/23',
                  validThru: '01/28',
                  topLeftColor: Color(0xff2c76f8),
                  bottomRightColor: Color(0xff0c0e21),
                  doesSupportNfc: true,
                  placeNfcIconAtTheEnd: true,
                  cardType: CardType.credit,
                  cardProviderLogo: FlutterLogo(),
                  cardProviderLogoPosition: CardProviderLogoPosition.right,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Accounts Details",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 26.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Name",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Steve C. Doss",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "IBAN: For transfer from\nother banks\nSA987654321887890",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300,
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          width: 80,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff0c0e21)),
                            onPressed: () {},
                            child: const Text(
                              "Copy",
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    )
                  ],
                )),
            const Divider(
              color: Colors.grey,
              height: 30,
              endIndent: 25,
              indent: 25,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Account Number",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "9879 9887 000 9999",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          width: 80,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff0c0e21)),
                            onPressed: () {},
                            child: const Text(
                              "Copy",
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    )
                  ],
                )),
            const Divider(
              color: Colors.grey,
              height: 30,
              endIndent: 25,
              indent: 25,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "The minimum amount in SAR 1000 and\nwith 2% Subscription fee\nbecomes (SAR 1023)",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
