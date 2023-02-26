import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/asset.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AssetData.logo,
          width: MediaQuery.of(context).size.width / 3.5,
        ),
        const Spacer(),
        IconButton(
            onPressed: () {
              GoRouter.of(context).push('/searchView');
            },
            icon: const Icon(
              Icons.search_rounded,
              size: 26,
            ))
      ],
    );
  }
}
