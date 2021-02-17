

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_info_app/components/backdrop_rating.dart';
import 'package:movie_info_app/components/genres.dart';
import 'package:movie_info_app/components/title_duration_and_fav_btn.dart';
import 'package:movie_info_app/constants.dart';
import 'package:movie_info_app/models/movie.dart';
import 'cast_and_crew.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // it will provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BackdropAndRating(size: size, movie: movie),
          SizedBox(height: kDefaultPadding / 2),
          TitleDurationAndFabBtn(movie: movie),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2,
              horizontal: kDefaultPadding,
            ),
            child: Text(
              "Plot Summary",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              movie.plot,
              style: TextStyle(
                color: Color(0xFF737599),
              ),
            ),
          ),
           CastAndCrew(casts: movie.cast),
        ],
      ),
    );
  }
}

