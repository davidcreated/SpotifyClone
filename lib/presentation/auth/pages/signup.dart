import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/button/appbar/app_bar.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BasicAppbar(), // the empty page that all items will be built upon
      body: Column(children: []),
    );
  }
}
