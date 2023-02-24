import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/bookDetailsView');
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 6,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.red,
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/test.png'))),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width / 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height / 70),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: const Text(
                      'Harry Potter and the Goblet of Fire',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.tetxStyle20,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 80),
                  const Text(
                    'J.K. Rowling',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 80),
                  Row(
                    children: const [
                      Text(
                        '19.99 €',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
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
                            fontSize: 16),
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
