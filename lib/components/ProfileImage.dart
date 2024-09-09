import 'package:flutter/material.dart';
import 'package:mycool_profile/constant/constant.dart';




class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
            backgroundColor: Colors.white,
            radius: 64,
            child: CircleAvatar(
              backgroundImage:
                  AssetImage('assets/images/my-profile.jpg'),
              radius: 60,
            )),
        CircleAvatar(
          backgroundColor: bgPrimaryColor,
          radius: 23,
          child: CircleAvatar(
            backgroundColor: Colors.amber,
            child: Icon(Icons.edit,
            size: 20,
            color: Colors.black,
          )),
        )
      ],
    );
  }
}