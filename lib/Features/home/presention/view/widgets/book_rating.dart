import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        Text(
          '4.8 ',
          style: Styles.tetxStyle16,
        ),
        Text(
          '(2369)',
          style: Styles.tetxStyle14,
        )
      ],
    );
  }
}
