import 'package:flutter/material.dart';
import 'agent.dart';
import 'agentListCard.dart';

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