import 'package:agent/home.dart';
import 'package:agent/agentTheme.dart';
import 'package:flutter/material.dart';
import 'package:agent/agentDetailWidget.dart';


void main() {
  runApp(Agent());
}

class Agent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? _selectedAgent;

    final theme = AgentTheme.dark();
    return MaterialApp(
      theme: theme,
      title: 'Agents',
      home: Navigator(
        pages: [
          MaterialPage(child: Home(
            didSelectAgent: (user) {
              setState(() => _selectedAgent = user
              );
            },)
          ),
          if(_selectedAgent != null)
            MaterialPage(child: AgentDetailsView(user: _selectedAgent!))
        ],
      )
    );
  }
}

