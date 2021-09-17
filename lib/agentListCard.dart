import 'package:flutter/material.dart';
import 'agentTheme.dart';
import 'agent.dart';

class AgentListCard extends StatelessWidget {
  final ValueChanged didSelectAgent;

  const AgentListCard({Key? key, required this.agent, required this.didSelectAgent}) : super(key: key);

  final Agent agent;

  // final String agentName = agent.name;
  // final String active = '2006';
  // final String latestMovie = agent.latestMovie;
  // final String latestMovieYear = agent.latestMovieYear;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => didSelectAgent(agent),
      child: Container(
        //16px padding på alle sider, kan også laves med left, top osv.
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.all(10),
        //Boxen kan minimum blive ned til 350x450px, ellers kan layoutet ikke ses
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/' + agent.imageURL),
            fit: BoxFit.fitHeight,
          ),
          //Runde hjørner på kassen
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white70,
        ),
        child: Stack(
          children: [
            Text(
              agent.name,
              style: AgentTheme.darkTextTheme.headline1,
            ),
            Positioned(
              child: Text(
                agent.active,
                style: AgentTheme.darkTextTheme.headline2,
              ),
              top: 35,
            ),
            Positioned(
              child: Text(
                agent.latestMovie,
                style: AgentTheme.darkTextTheme.headline2,
              ),
              bottom: 30,
              right: 0,
            ),
            Positioned(
              child: Text(
                agent.latestMovieYear,
                style: AgentTheme.darkTextTheme.headline3,
              ),
              bottom: 10,
              right: 0,
            ),
          ],
        ),
      ),
    );
  }
}
