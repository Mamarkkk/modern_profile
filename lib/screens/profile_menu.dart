// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:mycool_profile/constant/constant.dart';

class ProfileMenu extends StatelessWidget {
  final String title;
  final IconData icons;

  const ProfileMenu({
    Key? key,
    required this.title,
    required this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 40,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 16,
              child: Icon(
                icons,              
                size: 16,
                color: iconPrimary,
              )),
          const Spacer(),
          Text(
            title,
            style: textMenu,
          ),
          const Spacer(),
          CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 16,
            child: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: iconSecondary,
            ),
          ),
          
        ],
      ),
    );
  }
}
