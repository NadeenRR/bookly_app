import 'dart:ui';

import 'package:bookly_app/core/utils/asset.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import 'custome_app_bar.dart';
import 'featured_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomeAppBar(),
            SizedBox(height: MediaQuery.of(context).size.height / 35),
            const FeaturedBookListView(),
            SizedBox(height: MediaQuery.of(context).size.height / 18),
            const Text(
              'Best Seller',
              style: Styles.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}


        //test.png