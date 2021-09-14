import 'package:agent/agentListCard.dart';
import 'package:agent/movieListCard.dart';
import 'package:flutter/material.dart';
import 'agent.dart';
import 'movies.dart';

class AgentList extends StatefulWidget {
  const AgentList({Key? key}) : super(key: key);

  @override
  _AgentListState createState() => _AgentListState();
}

class _AgentListState extends State<AgentList> {

  int _selectedIndex = 0;

  static List<Widget> pages = [
    AgentListBuilderWidget(),
    MovieListBuilderWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("007 Agents",
          style: Theme
              .of(context)
              .textTheme
              .headline6,
        ),
      ),
      body: SafeArea(
        child: pages[_selectedIndex],

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Agents',),
          const BottomNavigationBarItem(
              icon: Icon(Icons.movie), label: 'movies',),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme
            .of(context)
            .textSelectionTheme
            .selectionColor,
        onTap: _onItemTapped,

      ),
    );
  }
}

class AgentListBuilderWidget extends StatelessWidget {
  const AgentListBuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Agent.list.length,
      itemBuilder: (BuildContext context, int index) {
        return AgentListCard(
          agent: Agent.list[index],);
      },
    );
  }
}

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


