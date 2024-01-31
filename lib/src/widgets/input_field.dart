import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xarala_cour1/src/utils/colors.dart';

class InputField extends StatelessWidget {
  const InputField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: GoogleFonts.raleway(
        fontWeight: FontWeight.w400,
        fontSize: 15,
        color: blackColor,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: lightGreyColor.withOpacity(0.55),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        prefixIcon: const Icon(
          Icons.search,
          color: greyColor,
          size: 25,
        ),
        hintText: 'Search address, or near you',
        hintStyle: GoogleFonts.raleway(
          fontWeight: FontWeight.w400,
          fontSize: 15,
          color: greyColor,
        ),
      ),
    );
  }
}
