import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:realestate/screens/widgets/custom_card_details.dart';

class CardsDetails extends StatelessWidget {
  final String imagePath;
  final String title;
  const CardsDetails({Key? key, required this.imagePath, required this.title, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            toolbarHeight: 80,
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Color(0xff0c0e21),
            surfaceTintColor: Color(0xff0c0e21),
            expandedHeight: 200.0,
            title: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Icon(
                      Iconsax.link,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration:  BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    opacity: 0.6,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              child: CardDetailsWidget(Cardtitle: title,),
            ),
          ),
        ],
      ),
    );
  }
}
