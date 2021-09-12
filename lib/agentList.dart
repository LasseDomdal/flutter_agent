import 'package:agent/agentListCard.dart';
import 'package:flutter/material.dart';
import 'agent.dart';

class AgentList extends StatefulWidget {
  const AgentList({Key? key}) : super(key: key);

  @override
  _AgentListState createState() => _AgentListState();
}

class _AgentListState extends State<AgentList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("007 Agents",
        style: Theme.of(context).textTheme.headline6,
      ),
    ),
      body: SafeArea(
          child: ListView.builder(
            itemCount: Agent.list.length,
            itemBuilder: (BuildContext context, int index) {
              return AgentListCard(
                agent: Agent.list[index],
              );
            },
            ),
          ),
    );
  }
}
