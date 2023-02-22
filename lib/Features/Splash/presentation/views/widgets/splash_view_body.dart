import 'package:bookly_app/core/utils/asset.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    slidingAimation = Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedBuilder(
              animation: slidingAimation,
              builder: (context, _) {
                return SlideTransition(
                  position: slidingAimation,
                  child: Image.asset(
                    AssetData.logo,
                    width: MediaQuery.of(context).size.width / 1.7,
                  ),
                );
              }),
          // SizedBox(
          //   height: MediaQuery.of(context).size.height / 35,
          // ),
          // const Text(
          //   'Read Free Books',
          //   style: TextStyle(fontSize: 15),
          // )
        ],
      ),
    );
  }
}
