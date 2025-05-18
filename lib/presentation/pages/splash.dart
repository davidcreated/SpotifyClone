import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/configs/theme/assets/app_vectors.dart';
import 'package:flutter_application_1/presentation/intro/pages/get_started.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    redirect(); // navigation process for the next page which is the getstarted page
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: SvgPicture.asset(AppVectors.logo)));
  }

  Future<void> redirect() async {
    await Future.delayed((const Duration(seconds: 7)));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder:
            (BuildContext context) =>
                GetStartedPage(), // Navigation to the next page which is the GetStartedPage
      ), // Navigation to getstarted Page after a brief 2 mins delay
    );
  }
}
