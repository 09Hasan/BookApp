import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/app_router.dart';
import 'package:booklyapp/feature/Splash/presentation/widgets/sliding_text.dart';
// import 'package:booklyapp/feature/homePage/presentation/view/home_page.dart';
// import 'package:booklyapp/feature/Splash/presentation/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:get/get.dart';

class BodySplashView extends StatefulWidget {
  const BodySplashView({super.key});

  @override
  State<BodySplashView> createState() => _BodySplashViewState();
}

class _BodySplashViewState extends State<BodySplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingText;
  @override
  void initState() {
    super.initState();
    initAnimation();
    transtionToHomePage();
  }

  @override
  void dispose() {
    animationController.dispose();
    // Navigator.pop(context);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Duration(seconds: 3).delay().then((context) {
    //   debugPrint('Go to Home View');
    // });
    Future.delayed(kTranstionDuration, () {
      // Navigator.push(context, (route))
      // Navigator.push(
      //   // ignore: use_build_context_synchronously
      //   context,
      //   MaterialPageRoute(builder: (context) => HomePage()),
      // );
    });
    // Duration(seconds: 3);
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
      begin: Offset(0, 4),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
    //if we did not use  AnimatedBuilder write like this
    // slidingText.addListener(() {
    //   setState(() {});
    // });
  }

  void transtionToHomePage() {
    Future.delayed(kTranstionDuration, () {
      // ignore: use_build_context_synchronously
      GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
      // Get.to(HomePage(), transition: Transition.downToUp);
      // Navigator.pop(context);
    });
  }
}
