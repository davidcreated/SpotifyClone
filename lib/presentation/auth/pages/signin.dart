import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/button/appbar/app_bar.dart';
import 'package:flutter_application_1/common/widgets/button/basic_app_button.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signinText(context),
      appBar: BasicAppbar(), // the empty page that all items will be built upon
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(), // the widget for the register text is implemented here
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [_clickhereText(context), _click()],
            ), //this implements the space between the register text and the Textfield , the spacing goes for an amount of 50
            const SizedBox(height: 25),

            const SizedBox(height: 20),
            _enteremailField(
              // the widget for the enter email text field was implemented here
              context,
            ),
            const SizedBox(
              height: 20,
            ), // Responsible for the spacing beteenthe 2 textfields
            _passwordField(
              context,
            ), // the widget for the enterpassword text field was implemented here
            const SizedBox(height: 20),
            BasicAppButton(
              onPressed: () {},
              title: 'Create Account',
            ), // the button containing the Create Account text was implemented here
          ],
        ),
      ),
    );
  }

  Widget _registerText() {
    // this is the widget responsible for the register text and all its its properties
    return const Text(
      'Sign In',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      textAlign: TextAlign.center,
    );
  }

  Widget _clickhereText(BuildContext context) {
    // this is the widget responsible for the if you need any support text and all its its properties
    return const Text(
      'If You Need Any Support',
      style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
      textAlign: TextAlign.center,
    );
  }

  Widget _click() {
    // this is the widget responsible for the click here text and all its its properties
    return const Text(
      ' Click Here',
      style: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 12,
        color: Color(0xff42C83C),
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _signinText(BuildContext context) {
    // this is the widget responsible for the Do you have an account text and all its its properties
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Not a Member ?',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: () {},
            child: Text('Register Now'),
          ), // responsible for the sign in text
        ],
      ),
    );
  }

  // Not that the changes , styling and adjustments of this widget and its text field takes place in the app theme page for both the light theme and dark theme

  Widget _enteremailField(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText:
            'Enter Username Or Email', // responsible for the hinttext enteremail or Username contained in the textfield
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    ); // this represents widgets the textfield where the user enteremal will be placed and all its proprties including its fill color , border radius
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText:
            'Enter Password', // responsible for the hinttext fullname contained in the textfield
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    ); // this represents widgets the textfield where the user fullname will be placed and all its proprties including its fill color , border radius
  }
}
