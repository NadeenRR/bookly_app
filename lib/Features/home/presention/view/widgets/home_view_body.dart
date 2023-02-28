import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'best_seller_list_view.dart';
import 'custome_app_bar.dart';
import 'featured_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: SafeArea(
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
                    style: Styles.tetxStyle18,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 75),
                ],
              ),
            ),
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
