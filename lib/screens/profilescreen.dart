import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:realestate/screens/widgets/custom_Appbar1.dart';
import 'package:realestate/screens/widgets/profile_widget.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar1(
        notificationCallback: () {},
        myAppbartitle: 'Settings',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/p1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text("Emiy Jeckson",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 24.0,
                  color: Colors.black,
                )),
            Text("emilyjeckson@gmail.com",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w300,
                  fontSize: 14.0,
                  color: Colors.black,
                )),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(Icons.question_mark_outlined),
              title: Text("Face ID"),
              trailing: Switch(
                activeColor: Color(0xff2c76f8),
                value: _switchValue,
                onChanged: (value) {
                  setState(() {
                    _switchValue = value;
                  });
                },
              ),
            ),
            profile_list_widget(
                profileText: 'My Profile', firstIcon: Iconsax.user),
            profile_list_widget(
                profileText: 'Password Reset', firstIcon: Iconsax.lock),
            profile_list_widget(
                profileText: 'Account Statement', firstIcon: Iconsax.note),
            profile_list_widget(
                profileText: 'Membership Type',
                firstIcon: Icons.card_membership_outlined),
            profile_list_widget(
                profileText: 'Change Language',
                firstIcon: Icons.language_outlined),
            profile_list_widget(
                profileText: 'Bank Account', firstIcon: Iconsax.bank),
            SizedBox(
              height: 70,
            )
          ],
        ),
      ),
    );
  }
}
