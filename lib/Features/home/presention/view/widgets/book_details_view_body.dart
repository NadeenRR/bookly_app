import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          SizedBox(
            height: MediaQuery.of(context).size.height / 60,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 5),
            child: const CustomBookImage(),
          )
        ],
      ),
    );
  }
}
