import 'package:flutter/material.dart';
import 'package:xarala_cour1/src/utils/colors.dart';
import 'package:xarala_cour1/src/widgets/custome_text.dart';

class ItemDrawerMenu extends StatelessWidget {
  final bool selectedMenu;
  final String icon, label;
  final void Function()? onTap;
  final FontWeight? fontWeight;
  const ItemDrawerMenu({
    super.key,
    this.selectedMenu = false,
    required this.label,
    required this.icon,
    this.onTap,
    this.fontWeight = FontWeight.w400
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        padding: const EdgeInsets.only(left: 20),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: selectedMenu ? whiteColor : null,
          borderRadius: selectedMenu
              ? const BorderRadius.only(
                  topRight: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                )
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              width: 20,
              height: 20,
            ),
            const SizedBox(width: 10),
            CustomeText(
              text: label,
              fontSize: 17.1,
              color: selectedMenu ? bleuColor : whiteColor,
              fontWeight: fontWeight,
            ),
          ],
        ),
      ),
    );
  }
}
