import 'package:flutter/material.dart';
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(AppVectors.logo),
                const SizedBox(height: 55),
                const Text(
                  'Enjoy Listening To Music',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(height: 21),
                const Text(
                  'Spotify is a proprietary Swedish audio streaming and media services provider',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey,
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
