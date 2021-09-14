import 'package:flutter/material.dart';
import 'agentTheme.dart';
import 'movies.dart';

class MovieListCard extends StatelessWidget {
  const MovieListCard({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      //16px padding på alle sider, kan også laves med left, top osv.
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(10),
      //Boxen kan minimum blive ned til 350x450px, ellers kan layoutet ikke ses
      constraints: const BoxConstraints.expand(width: 350, height: 450),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/' + movie.poster, ),
          fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
        Colors.black.withOpacity(0.4), BlendMode.darken),
        ),
        //Runde hjørner på kassen
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white70,
      ),
      child: Stack(
        children: [
          Text(
            movie.title,
            style: AgentTheme.darkTextTheme.headline1,
          ),
          Positioned(
            child: Text(
              movie.year,
              style: AgentTheme.darkTextTheme.headline2,
            ),
            top: 35,
          ),
          Positioned(
            child: Text(
               movie.agent.name + " " + movie.agent.active,
              style: AgentTheme.darkTextTheme.headline2,
            ),
            bottom: 30,
            right: 0,
          ),
        ],
      ),
    );
  }
}
