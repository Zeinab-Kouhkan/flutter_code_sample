import 'package:flutter/material.dart';

import '../../base/resourceful_state.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ResourcefulState<HomePage> with SingleTickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: const Text('Home'),
    );
  }
}