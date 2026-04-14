import 'package:booklyapp/constants.dart';
import 'package:booklyapp/feature/Splash/presentation/widgets/sliding_text.dart';
// import 'package:booklyapp/feature/Splash/presentation/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/duration_extensions.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingText;
  @override
  void initState() {
    super.initState();
    initAnimation();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Duration(seconds: 3).delay().then((context) {
      debugPrint('Go to Home View');
    });
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          kLogoApp,
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width * 0.5,
        ),
        SlidingText(slidingText: slidingText),
      ],
    );
  }

  void initAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    slidingText = Tween<Offset>(
      begin: Offset(0, 5),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
    //if we did not use  AnimatedBuilder write like this
    // slidingText.addListener(() {
    //   setState(() {});
    // });
  }
}
