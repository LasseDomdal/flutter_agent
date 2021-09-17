
import 'package:flutter/material.dart';
import 'agent.dart';

class AgentDetailsView extends StatelessWidget {
  static const valueKey = ValueKey('AgentDetailsView');

  final Agent agent;

  const AgentDetailsView({Key? key, required this.agent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Agent Details')),
        body: Center(child: Text('Hello, ${agent.name}')));
  }
}