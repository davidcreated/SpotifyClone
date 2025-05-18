import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/button/basic_app_button.dart';
import 'package:flutter_application_1/core/configs/theme/app_colors.dart';
import 'package:flutter_application_1/core/configs/theme/assets/app_images.dart';
import 'package:flutter_application_1/core/configs/theme/assets/app_vectors.dart';
import 'package:flutter_application_1/presentation/auth/pages/signup_or_signin.dart';
import 'package:flutter_application_1/presentation/choose_mode/bloc/theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          Container(
            color: Colors.black.withOpacity(0.15),
          ), // little black background below that gives a dark theme

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
                    Column(
                      children: [
                        GestureDetector(
                          // this feature is used to determine the action the button will carry which is light mode
                          onTap: () {
                            // here the fvunction for the  light theme is called
                            context.read<ThemeCubit>().updateTheme(
                              ThemeMode.light,
                            ); // the theme is being called here
                          },
                          child: ClipOval(
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
                                child: SvgPicture.asset(
                                  AppVectors.moon,
                                  fit: BoxFit.none,
                                ), // The b=fit feature makes sure the image fits in and resizable
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Dark Mode',
                          style: TextStyle(
                            fontWeight:
                                FontWeight.w600, // Fonts for dark Mode text
                            fontSize: 13,
                            color: AppColors.grey, // color for dark mode text
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                    ), // padding between the dark mode and light mode container separating them apart by 20
                    Column(
                      children: [
                        GestureDetector(
                          // this feature is used to determine the action the button will carry which is light mode
                          onTap: () {
                            // here the fvunction for the  light theme is called
                            context.read<ThemeCubit>().updateTheme(
                              ThemeMode.dark,
                            ); // the theme is being called here
                          },
                          child: ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 10,
                                sigmaY: 10,
                              ), // IMPLEMENTS THE BLUR FEATURE, Note always keep it at sigma X and Y at 10
                              child: Container(
                                //first circle
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  // ignore: deprecated_member_use
                                  color: Color(0xff30393c).withOpacity(0.5),
                                  shape: BoxShape.circle,
                                ),
                                child: SvgPicture.asset(
                                  AppVectors.sun,
                                  fit:
                                      BoxFit
                                          .none, // this is used to fit the object in this case the sun image perfectly
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Light Mode', // Text for light mode
                          style: TextStyle(
                            fontWeight:
                                FontWeight
                                    .w600, // Text styling for the light mode text
                            fontSize: 13,
                            color:
                                AppColors.grey, // Color for the light mode text
                          ),
                        ),
                      ],
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
                        // Always make sure thats its a Material Page Route used
                        builder:
                            (BuildContext context) =>
                                const SignupOrSignin(), // Navigation to the next Page which is the sign up or sign in page
                      ),
                    );
                  },
                  title: 'Continue', // Text for the button
                ), // call action from BasicApp button page
              ],
            ),
          ),
        ],
      ),
    );
  }
}
