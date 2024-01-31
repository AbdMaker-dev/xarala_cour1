import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:xarala_cour1/src/utils/colors.dart';
import 'package:xarala_cour1/src/widgets/custom_dawer/custom_drawer.dart';
import 'package:xarala_cour1/src/widgets/custome_text.dart';
import 'package:xarala_cour1/src/widgets/gradient_card.dart';
import 'package:xarala_cour1/src/widgets/image_card.dart';
import 'package:xarala_cour1/src/widgets/input_field.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(color: bleuColor),
      ),
      controller: _advancedDrawerController,
      openRatio: 0.52, // SIZE PARTIE VISIBLE DU  HOME PAGE
      animationCurve: Curves.easeOutCirc,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false, // INVERSE
      disabledGestures: false, // GLISSEMENT POUR FERMER
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      drawer: const CustomDrawer(),
      child: Scaffold(
        backgroundColor: const Color(0xFFFAFAFA),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomeText(
                    text: "Location",
                    color: greyColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CustomeText(
                            text: "Jakarta",
                            color: blackColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                          Image.asset(
                            "assets/icons/Vector copie.png",
                            width: 15,
                          )
                        ],
                      ),
                      Image.asset(
                        "assets/icons/IC_Notification.png",
                        width: 20,
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Expanded(
                        child: InputField(),
                      ),
                      const SizedBox(width: 15),
                      GradientCard(
                        width: 60,
                        height: 60,
                        withGradien: true,
                        child: Center(
                          child: Image.asset(
                            "assets/icons/IC_Filter.png",
                            width: 100,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      children: [
                        GradientCard(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          margin: const EdgeInsets.only(right: 20),
                          withGradien: true,
                          child: Center(
                            child: CustomeText(
                              text: "House",
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: whiteColor,
                            ),
                          ),
                        ),
                        GradientCard(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          margin: const EdgeInsets.only(right: 20),
                          child: Center(
                            child: CustomeText(
                              text: "Apartment",
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: greyColor,
                            ),
                          ),
                        ),
                        GradientCard(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          margin: const EdgeInsets.only(right: 20),
                          child: Center(
                            child: CustomeText(
                              text: "Hotel",
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: greyColor,
                            ),
                          ),
                        ),
                        GradientCard(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          margin: const EdgeInsets.only(right: 20),
                          child: Center(
                            child: CustomeText(
                              text: "Villa",
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: greyColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomeText(
                        text: "Near from you",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      CustomeText(
                        text: "See more",
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: greyColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 270,
                    child: ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      children: const [
                        ItemHomeList(),
                        ItemHomeList(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomeText(
                        text: "Best for you",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      CustomeText(
                        text: "See more",
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: greyColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const ItemBestOfYouList(),
                  const ItemBestOfYouList(),
                  const ItemBestOfYouList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }
}

class ItemBestOfYouList extends StatelessWidget {
  const ItemBestOfYouList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ImageCard(
            width: 80,
            height: double.infinity,
            radius: 10,
            image: "assets/images/Image 2.png",
          ),
          const SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomeText(text: "Orchad House", fontSize: 17,),
              const SizedBox(height: 8),
              CustomeText(text: "Rp. 2.500.000.000 / Year", color: bleuColor, fontSize: 13, fontWeight: FontWeight.w400,),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/icons/Vector copie 2.png"),
                  const SizedBox(width: 10),
                  CustomeText(text: "6 Bedroom", color: greyColor, fontSize: 11, fontWeight: FontWeight.w400,),
                  const SizedBox(width: 20),
                  Image.asset("assets/icons/Group.png"),
                  const SizedBox(width: 10),
                  CustomeText(text: "4 Bathroom", color: greyColor, fontSize: 11, fontWeight: FontWeight.w400,),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class ItemHomeList extends StatelessWidget {
  const ItemHomeList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ImageCard(
      width: 230,
      margin: const EdgeInsets.only(right: 20),
      height: double.infinity,
      image: "assets/images/Image (3).png",
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  blackColor.withOpacity(0.03),
                  blackColor.withOpacity(0.03),
                  blackColor.withOpacity(0.9),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 25,
                      width: 80,
                      decoration: BoxDecoration(
                        color: blackColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/IC_Location.png",
                              width: 15),
                          const SizedBox(width: 5),
                          CustomeText(
                            text: "1.8 Km",
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: whiteColor,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomeText(
                      text: "Dreamsville House",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: whiteColor,
                    ),
                    CustomeText(
                      text: "Jl. Sultan Iskandar Muda",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: whiteColor,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
