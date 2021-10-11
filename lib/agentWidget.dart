import 'package:flutter/material.dart';
import 'agent.dart';
import 'agentListCard.dart';

class AgentListBuilderWidget extends StatelessWidget {
  final ValueChanged didSelectAgent;

  const AgentListBuilderWidget({Key? key, required this.didSelectAgent }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Users'),
    ),
    body: ListView.builder(
      itemCount: Agent.list.length,
      itemBuilder: (context, index) {
        return AgentListCard(
            agent: Agent.list[index], didSelectAgent: (agent) {
          final agent = Agent.list[index];
              child: ListTile(
                // title: Text( agent),
                onTap: () => didSelectAgent(agent),
              );
        });
    )
    ));
  }
}