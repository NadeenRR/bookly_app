// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageUrl,
          // errorWidget: (context, url, error) => const Icon(Icons.error),
        ),

        // Container(
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(16),
        //       color: Colors.red,
        //       image: DecorationImage(
        //           fit: BoxFit.fill, image: NetworkImage(imageUrl))),
        // ),
      ),
    );
  }
}
