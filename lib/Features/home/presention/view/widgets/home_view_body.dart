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
              style: Styles.tetxStyle18,
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 30),
            const BestSellerListViewItem()
          ],
        ),
      ),
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return BestSellerListViewItem();
          }),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.red,
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/test.png'))),
              ),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width / 30),
          Expanded(
            flex: 3,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Harry Potter \nand the Goblet of Fire',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 80),
                const Text(
                  'J.K. Rowling',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      '19.99 €',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Spacer(),
                    Text(
                      '⭐ 4.8 ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      '(2367)',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
