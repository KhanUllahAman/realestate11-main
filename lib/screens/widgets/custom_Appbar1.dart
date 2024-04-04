import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class CustomAppBar1 extends StatelessWidget implements PreferredSizeWidget {
  final Function() notificationCallback;
  final String myAppbartitle;
  const CustomAppBar1({
    Key? key,
    required this.notificationCallback,
    required this.myAppbartitle,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xff0c0e21),
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      toolbarHeight: 80,
      title: Row(
        children: [
          Text(
            myAppbartitle,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: notificationCallback,
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(25),
              ),
              child: Icon(
                Iconsax.notification,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
