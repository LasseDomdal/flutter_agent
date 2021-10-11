import 'package:agent/agentListCard.dart';
import 'package:agent/movieListCard.dart';
import 'package:flutter/material.dart';
import 'agent.dart';
import 'agentDetailWidget.dart';
import 'agentWidget.dart';
import 'movieListWidget.dart';
import 'movies.dart';

class Home extends StatefulWidget {
  const Home({Key? key,}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;


  // har widgets på en liste.
  static List<Widget> pages = [
    AgentListBuilderWidget(didSelectAgent: (agent) {
      Agent? _selectedAgent;
      home:
      Navigator(
        pages: [
          MaterialPage(child: AgentListBuilderWidget(
            didSelectAgent: (agent) {
              setState(() =>
              _selectedAgent = agent
              );
            },)
          ),
          if(_selectedAgent != null)
            MaterialPage(child: AgentDetailsView(agent: _selectedAgent!))
        ],
        onPopPage: (route, result) {
          final page = route.settings as MaterialPage;
          if (page.key == AgentDetailsView.valueKey) {
            _selectedAgent = null;
          }
          return route.didPop(result);
        },
      );
    },),
    MovieListBuilderWidget(),
  ];

  // sørger for det er muligt at skifte selectedindex, når buttomNavigationbar
  // skifter, og dermed skiftes der til den widget som passer med selectedIndex på pages.
  // altså mellem 0 og 1.
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
        // bruger pages listen
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
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,


      ),

    );
  }
}


//
// home: Navigator(
// pages: [
// MaterialPage(child: AgentListBuilderWidget(
// didSelectAgent: (agent) {
// setState((didSelectAgent) => _selectedAgent = agent
// );
// },)
// ),
// if(_selectedAgent != null)
// MaterialPage(child: AgentDetailsView(agent: _selectedAgent!))
// ],
// onPopPage: (route, result) {
// final page = route.settings as MaterialPage;
// if(page.key == AgentDetailsView.valueKey) {
// _selectedAgent = null;
// }
// return route.didPop(result);
// },
// )

