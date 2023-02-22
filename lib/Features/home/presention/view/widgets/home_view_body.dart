import 'dart:ui';

import 'package:bookly_app/core/utils/asset.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import 'custome_app_bar.dart';
import 'featured_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: const [CustomeAppBar(), FeaturedBookListView()],
      ),
    );
  }
}


        //test.png