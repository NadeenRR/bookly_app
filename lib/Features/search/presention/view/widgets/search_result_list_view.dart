import 'package:flutter/material.dart';

import '../../../../home/presention/view/widgets/best_seller_list_view_item.dart';


class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 7),
            child: BestSellerListViewItem(),
          );
        });
  }
}
