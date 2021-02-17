import 'dart:ffi';

import 'package:flutter/material.dart';

import 'dart:math' as math;

import 'package:movie_info_app/models/movie.dart';

import '../constants.dart';
import 'movie_card.dart';


class MovieCarousel extends StatefulWidget {
  @override
  _MovieCarouselState createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  PageController _pageController;
  int initialPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      // so that I can have small  portion left and right side
      viewportFraction: 0.8,
      // by default my movie poster
      initialPage: initialPage,


    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: 0.95,
        child: PageView.builder(
          onPageChanged: (value) {
            setState(() {
              initialPage = value;
            });
          },
          controller: _pageController,
          physics: ClampingScrollPhysics(),
          itemCount: movies.length,
          itemBuilder: (context, index) => buildMovieSlider(index),
        ),
      ),
    );
  }

  Widget buildMovieSlider(int index) => AnimatedBuilder(
    animation: _pageController,
    builder: (context, child) {
      double value = 0;
      if(_pageController.position.haveDimensions){
        value = index - _pageController.page;
        // I use 0.038 because 180*0.038 = 7 almost and I need to rotate our poster 7 degree
        // I use clamp so that our value vary from -1 to  1
        value = (value * 0.038).clamp(-1, 1);

      }
      return  AnimatedOpacity(
        duration: Duration(milliseconds: 350),
        opacity: initialPage == index ? 1 : 0.4,
        child: Transform.rotate(
          angle: math.pi * value,
          child: MovieCard(movie: movies[index]),
        ),
      );
    },
  );
}

