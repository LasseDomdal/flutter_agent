import 'package:agent/home.dart';
import 'package:agent/agentTheme.dart';
import 'package:agent/agentDetailWidget.dart';
import 'package:agent/agentListCard.dart';
import 'package:flutter/material.dart';
import 'package:agent/agentDetailWidget.dart';

import 'agentWidget.dart';


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
      home: const Home(),
    );
  }
}


