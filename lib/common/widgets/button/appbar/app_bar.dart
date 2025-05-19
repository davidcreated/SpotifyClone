import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/button/helpers/is_darkmode.dart';

class BasicAppbar extends StatelessWidget {
  const BasicAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:
          Colors
              .transparent, // color of the background surrounding the back button
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: Container(
          height: 50, // height of the environment containing the back buttton
          width: 50, // width of the environment containing the back buttton
          decoration: BoxDecoration(
            // ignore: deprecated_member_use
            color: Colors.white.withOpacity(0.03),
            shape:
                BoxShape
                    .circle, // environment that will contain the back button
          ),

          child: Icon(
            Icons.arrow_back_ios_new,
            size: 15,
            color:
                context.isDarkMode
                    ? Colors.white
                    : Colors
                        .black, // color implementation for the back button on switching of the app theme
          ), // the back button using the ios type back button
        ),
      ),
    );
  }
}
