import 'package:flutter/material.dart';

import '../../../../home/presention/view/widgets/best_seller_list_view_item.dart';
import 'custom_search_text_field.dart';
import 'search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const CustomSearchTextField(),
          SizedBox(
            height: MediaQuery.of(context).size.height / 70,
          ),
          const Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
