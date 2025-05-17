import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/button/basic_app_button.dart';
import 'package:flutter_application_1/core/configs/theme/assets/app_images.dart';
import 'package:flutter_application_1/core/configs/theme/assets/app_vectors.dart';
import 'package:flutter_svg/svg.dart';

class ChooseMode extends StatelessWidget {
  const ChooseMode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  // Call action from Images Page
                  AppImages.chooseModeBG,
                ), //background image on the screen from the app_images.dart page
              ),
            ),
          ),
          // ignore: deprecated_member_use
          Container(color: Colors.black.withOpacity(0.15)),

          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 40,
            ), //Adjusting the height and width of the button
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    AppVectors.logo,
                  ), // picture for the logo
                ),
                Spacer(),
                Text(
                  // Textstyling
                  "Choose Mode",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 40), // Text syling
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // Align objects to the center
                  children: [
                    ClipOval(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 10,
                          sigmaY: 10,
                        ), // IMPLEMENTS THE BLUR FEATURE
                        child: Container(
                          //first circle
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xff30393c).withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(AppVectors.moon),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                    ClipOval(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 10,
                          sigmaY: 10,
                        ), // IMPLEMENTS THE BLUR FEATURE
                        child: Container(
                          //first circle
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xff30393c).withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(AppVectors.sun),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                BasicAppButton(
                  onPressed: () {
                    Navigator.push(
                      //Navigation Call Action to the Next Page which is the choose
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const ChooseMode(),
                      ),
                    );
                  },
                  title: 'Get started',
                ), // call action from BasicApp button page
              ],
            ),
          ),

          //little black background on the bottom of the screen
        ],
      ),
    );
  }
}
