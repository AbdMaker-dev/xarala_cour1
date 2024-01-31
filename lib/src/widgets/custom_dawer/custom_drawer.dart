import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xarala_cour1/src/utils/colors.dart';
import 'package:xarala_cour1/src/widgets/custom_dawer/item_drawer_menu.dart';
import 'package:xarala_cour1/src/widgets/custome_text.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int selectedMneu = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: Column(
          children: [
            const SizedBox(height: 50),
            ItemDrawerMenu(
              label: 'Home',
              icon: 'assets/icons/Vector.png',
              selectedMenu: true,
              fontWeight: FontWeight.w500,
              onTap: () {
              },
            ),
            ItemDrawerMenu(
              label: 'Profie',
              icon: 'assets/icons/Vector (1).png',
              selectedMenu: false,
              onTap: () {},
            ),
            ItemDrawerMenu(
              label: 'Nearby',
              icon: 'assets/icons/IC_Location.png',
              selectedMenu: false,
              onTap: () {},
            ),
            const Divider(color: whiteColor, thickness: 0.5,),
            ItemDrawerMenu(
              label: 'Bookmark',
              icon: 'assets/icons/Vector (2).png',
              selectedMenu: false,
              fontWeight: FontWeight.w500,
              onTap: () {
              },
            ),
            ItemDrawerMenu(
              label: 'Notification',
              icon: 'assets/icons/Vector (1).png',
              selectedMenu: false,
              onTap: () {},
            ),
            ItemDrawerMenu(
              label: 'Meaasge',
              icon: 'assets/icons/IC_Location.png',
              selectedMenu: false,
              onTap: () {},
            ),
            // const Spacer(),
            const Divider(color: whiteColor, thickness: 0.5,),
            ItemDrawerMenu(
              label: 'Settings',
              icon: 'assets/icons/IC_Setting.png',
              selectedMenu: false,
              fontWeight: FontWeight.w500,
              onTap: () {
              },
            ),
            ItemDrawerMenu(
              label: 'Help',
              icon: 'assets/icons/Vector (2).png',
              selectedMenu: false,
              onTap: () {},
            ),
            ItemDrawerMenu(
              label: 'Logout',
              icon: 'assets/icons/Vector (3).png',
              selectedMenu: false,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
