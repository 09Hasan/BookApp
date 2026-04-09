import 'package:booklyapp/constants.dart';
// import 'package:booklyapp/feature/Splash/presentation/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/duration_extensions.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Duration(seconds: 3).delay().then((context) {
      debugPrint('Go to Home View');
      // Get.offNamed('/homeView');
    });
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          kLogoApp,
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width * 0.5,
        ),
        Center(
          child: Text(
            'Bookly',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
