import 'package:flutter/material.dart';

class profile_list_widget extends StatelessWidget {
  final String profileText;
  final IconData firstIcon;
  const profile_list_widget({
    super.key, 
    required this.profileText, 
    required this.firstIcon, 
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(firstIcon),
      title: Text(profileText),
      trailing: Icon(
        Icons.arrow_forward_ios_sharp,
        size: 20,
      ),
    );
  }
}
