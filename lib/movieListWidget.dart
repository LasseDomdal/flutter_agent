import 'package:flutter/material.dart';
import 'movieListCard.dart';
import 'movies.dart';

// listview.builder skaber det ønskede array, og putter det på en liste.
// itemcount = listens længde. bruger movielistCard og tager enkelte index og sætter på listen.
class MovieListBuilderWidget extends StatelessWidget {
  const MovieListBuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Movie.movies.length,
      itemBuilder: (BuildContext context, int index) {
        return MovieListCard(
          movie: Movie.movies[index],);
      },
    );
  }
}