import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/button/helpers/is_darkmode.dart';
import 'package:flutter_application_1/core/configs/theme/assets/app_vectors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BasicAppbar extends StatelessWidget implements PreferredSizeWidget {
  // seek line 48 and 49
  final Widget? title; // seek line 17
  const BasicAppbar({this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:
          Colors
              .transparent, // color of the background surrounding the back button
      elevation: 0,
      centerTitle: true, // Aligns the spotify logo to the middle
      title: SvgPicture.asset(
        AppVectors
            .logo, // Note that the logo was placed as a title as the top of th screen
        height: 40,
        width: 40,
      ), // reponsible for the logo on top of the screen in this page
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context); // the action for the back button
        },
        icon: Container(
          height: 50, // height of the environment containing the back buttton
          width: 50, // width of the environment containing the back buttton
          decoration: BoxDecoration(
            // ignore: deprecated_member_use
            color:
                context.isDarkMode
                    // ignore: deprecated_member_use
                    ? Colors.white.withOpacity(0.03)
                    // ignore: deprecated_member_use
                    : Colors.black.withOpacity(0.04),
            shape:
                BoxShape
                    .circle, // environment that will contain the back button
          ),

          child: Icon(
            Icons.arrow_back_ios_new,
            size: 15,
            color: context.isDarkMode ? Colors.white : Colors.black, // c
          ), // the back button using the ios type back button
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); // has to do with the implemented Preffered size widget above on line 4
}
