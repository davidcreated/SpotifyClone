import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/button/basic_app_button.dart';
import 'package:flutter_application_1/core/configs/theme/app_colors.dart';
import 'package:flutter_application_1/core/configs/theme/assets/app_images.dart';
import 'package:flutter_application_1/core/configs/theme/assets/app_vectors.dart';
import 'package:flutter_svg/svg.dart';

class SignupOrSignin extends StatelessWidget {
  const SignupOrSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppVectors.toppattern),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(AppVectors.bottompattern),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(AppImages.authBG),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment
                        .center, //to align all the items in the column to the center vertically
                crossAxisAlignment:
                    CrossAxisAlignment
                        .center, // to alignall the items in the column to the center Horizontally
                children: [
                  SvgPicture.asset(AppVectors.logo),
                  const SizedBox(height: 55),
                  const Text(
                    'Enjoy Listening To Music',
                    style: TextStyle(
                      fontWeight: FontWeight.bold, // font weight of the text
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 21,
                  ), // a layout widget used to give a fixed amount of space or dimension (height and/or width) to its child or to create empty space between widgets.
                  const Text(
                    'Spotify is a proprietary Swedish audio streaming and media services provider',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                      fontSize: 17,
                    ),
                    textAlign:
                        TextAlign
                            .center, // to align the spotify is a proprietary text to the center
                  ),

                  const SizedBox(height: 21),
                  // a layout widget used to give a fixed amount of space or dimension (height and/or width) to its child or to create empty space between widgets
                  Row(
                    children: [
                      Expanded(
                        // used to create the button
                        flex: 1,
                        child: BasicAppButton(
                          // responsible for the green button containingthe text register
                          onPressed: () {},
                          title: 'Register', // text on the button
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ), //layout widget used to give a fixed amount of space or dimension (height and/or width) to its child or to create empty space between widgets
                      Expanded(
                        flex: 1,
                        child: TextButton(
                          // responsible for the button containing the sign in text
                          onPressed: () {},
                          child: Text(
                            'Sign in', //text for Sign in
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
