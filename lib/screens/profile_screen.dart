import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mycool_profile/components/ProfileImage.dart';
import 'package:mycool_profile/constant/constant.dart';
import 'package:mycool_profile/screens/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 24,
          color: iconSecondary,
        ),
        title: Center(
            child: Text(
          'Profile',
          style: textTitle,
        )),
        actions: const [
          Icon(
            Icons.light_mode,
            size: 24,
            color: iconSecondary,
          ),
          SizedBox(
            width: 18,
          ),
        ],
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const ProfileImage(),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Thanathada Homcham',
              style: textTitle,
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              's6507012660265@emailkmutnb.ac.th',
              style: textSubTitle,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              height: 35,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Center(
                  child: Text(
                    'Edit Profile',
                    style: textBtn,
                  ),
                ),
              ),
            ),

            //MenuProfile
            const SizedBox(
              height: 30,
            ),
            const ProfileMenu(title: 'Setting', icons: Icons.settings,),
            const ProfileMenu(title: 'Billing Detail', icons: Icons.wallet,),
            const ProfileMenu(title: 'User Management', icons: Icons.person,),
            const SizedBox(
              height: 50,
            ),
            const ProfileMenu(title: 'Information', icons: Icons.info,),
            const ProfileMenu(title: 'Log Out', icons: Icons.logout,),
          ],
        ),
      ),
    );
  }
}

