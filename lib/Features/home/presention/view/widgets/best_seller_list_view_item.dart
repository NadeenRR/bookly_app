// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:bookly_app/Features/home/data/models/book_models/book_models.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_book_image.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    Key? key,
    required this.book,
  }) : super(key: key);

  final BookModels book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/bookDetailsView', extra: book);
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 6,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? " "),
            SizedBox(width: MediaQuery.of(context).size.width / 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height / 70),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Text(
                      book.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.tetxStyle20,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 80),
                  Text(
                    book.volumeInfo.authors![0],
                    style: const TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 80),
                  Row(
                    children: const [
                      Text(
                        'Free',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Spacer(),
                      // BookRating()
                      Text(
                        '⭐ 4.8 ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        '(2367)',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
