import 'package:flutter/material.dart';

import '../../../../../core/utils/asset.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 10, bottom: 20),
      child: Row(
        children: [
          Image.asset(
            AssetData.logo,
            width: MediaQuery.of(context).size.width / 3.5,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
                size: 26,
              ))
        ],
      ),
    );
  }
}
