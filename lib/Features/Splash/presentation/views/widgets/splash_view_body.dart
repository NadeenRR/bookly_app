import 'package:bookly_app/core/utils/asset.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AssetData.logo,
            width: MediaQuery.of(context).size.width / 1.5,
          )
        ],
      ),
    );
  }
}
