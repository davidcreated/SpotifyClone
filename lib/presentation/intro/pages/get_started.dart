import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/button/basic_app_button.dart';
import 'package:flutter_application_1/core/configs/theme/app_colors.dart';
import 'package:flutter_application_1/core/configs/theme/assets/app_images.dart';
import 'package:flutter_application_1/core/configs/theme/assets/app_vectors.dart';
import 'package:flutter_application_1/presentation/choose_mode/pages/choose_mode.dart';
import 'package:flutter_svg/svg.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

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
                  AppImages.introBG,
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
                  "Enjoy Listening to Music",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 21), // Text syling
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey,
                    fontSize: 13,
                  ),
                  textAlign:
                      TextAlign
                          .center, // aligning the text to the center of the screen
                ),
                SizedBox(height: 20),
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
