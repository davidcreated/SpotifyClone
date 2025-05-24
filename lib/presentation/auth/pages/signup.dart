import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/button/appbar/app_bar.dart';
import 'package:flutter_application_1/common/widgets/button/basic_app_button.dart';
import 'package:flutter_application_1/data/models/auth/create_user_req.dart';
import 'package:flutter_application_1/domain/usecases/auth/signup.dart';
import 'package:flutter_application_1/presentation/auth/pages/signin.dart';
import 'package:flutter_application_1/service_locator.dart';

class Signup extends StatelessWidget {
  Signup({super.key});
  // Here Controllers for the textfields were created

  final TextEditingController _fullName = TextEditingController();
  final TextEditingController _enteremail = TextEditingController();
  final TextEditingController _password = TextEditingController();

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
            _fullNameField(
              context,
            ), // the widget for the fullname text field was implemented here
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
              onPressed: () async {
                var result = await sl<SignupUseCase>().call(
                  params: CreateUserReq(
                    fulName: _fullName.text.toString(),
                    email: _enteremail.text.toString(),
                    password: _password.text.toString(),
                  ),
                );
                result.fold((1){},(r){});
              },
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
      'Register',
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
            'Do You Have An Account ? ',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                // Naviagtion for the register button to the next page
                context,
                MaterialPageRoute(builder: (BuildContext context) => Signin()),
              );
            },
            child: Text('Sign In'),
          ), // responsible for the sign in text
        ],
      ),
    );
  }

  // Not that the changes , styling and adjustments of this widget and its text field takes place in the app theme page for both the light theme and dark theme
  Widget _fullNameField(BuildContext context) {
    return TextField(
      controller: _fullName,
      decoration: const InputDecoration(
        hintText:
            'Full Name', // responsible for the hinttext fullname contained in the textfield
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    ); // this represents widgets the textfield where the user fullname will be placed and all its proprties including its fill color , border radius
  }

  Widget _enteremailField(BuildContext context) {
    return TextField(
      controller: _enteremail,
      decoration: const InputDecoration(
        hintText:
            'Enter Email', // responsible for the hinttext enteremail contained in the textfield
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    ); // this represents widgets the textfield where the user enteremal will be placed and all its proprties including its fill color , border radius
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      controller: _password,
      decoration: const InputDecoration(
        hintText:
            'Enter Password', // responsible for the hinttext fullname contained in the textfield
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    ); // this represents widgets the textfield where the user fullname will be placed and all its proprties including its fill color , border radius
  }
}
