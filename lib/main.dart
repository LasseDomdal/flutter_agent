import 'package:agent/agentList.dart';
import 'package:agent/agentTheme.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(Agent());
}

class Agent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = AgentTheme.dark();
    return MaterialApp(
      theme: theme,
      title: 'Agents',
      home: AgentList(),
    );
  }
}

