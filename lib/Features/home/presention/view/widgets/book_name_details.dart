import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_action.dart';

class BookNameDetails extends StatelessWidget {
  const BookNameDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('The Jungle Book',
            style: Styles.tetxStyle30.copyWith(fontWeight: FontWeight.w800)),
        SizedBox(
          height: MediaQuery.of(context).size.height / 80,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.tetxStyle20
              .copyWith(fontWeight: FontWeight.w500, color: Colors.grey),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 80,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('⭐ 4.8 ', style: Styles.tetxStyle16),
            Text(
              '(2367)',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 25,
        ),
        const BookAction(),
      ],
    );
  }
}
