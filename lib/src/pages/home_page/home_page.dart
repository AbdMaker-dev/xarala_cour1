import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:xarala_cour1/src/utils/colors.dart';
import 'package:xarala_cour1/src/widgets/custom_dawer/custom_drawer.dart';

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
        body: SafeArea(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  _handleMenuButtonPressed();
                },
                child: const Text("HELLO ABD MUSIC"),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}
