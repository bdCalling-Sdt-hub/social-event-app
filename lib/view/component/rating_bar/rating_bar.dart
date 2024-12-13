import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Widget ratingBar({itemSize=17, bool ignoreGesture=true}) {
  return RatingBar.builder(
    initialRating: 5,
    minRating: 1,
    direction: Axis.horizontal,
    itemCount: 5,
    ignoreGestures: ignoreGesture,
    itemSize:itemSize,
    itemPadding: const EdgeInsets.symmetric(horizontal: 1),
    itemBuilder: (context, _) => const Icon(
      Icons.star,
      color: Colors.amber,
    ),
    onRatingUpdate: (rating) {},
  );
}
