import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_info_app/constants.dart';
import 'package:movie_info_app/models/movie.dart';
import 'package:movie_info_app/screens/home/components/categories.dart';
import 'dart:math' as math;
import 'genre_card.dart';
import 'genres.dart';
import 'movie_card.dart';
import 'movie_carousel.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // it enable scroll on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CategoryList(),
          Genres(),
          MovieCarousel(),
        ],
      ),
    );
  }
}