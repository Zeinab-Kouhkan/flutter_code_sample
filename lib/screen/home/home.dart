import 'package:flutter/material.dart';

import '../../base/resourceful_state.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ResourcefulState<HomePage> with SingleTickerProviderStateMixin {
  late AnimationController _zoomController;
  late Animation<double> _zoomAnimation;

  @override
  void initState() {
    super.initState();

    // Create a new animation controller
    _zoomController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    // Create a new zoom-in animation
    _zoomAnimation = Tween<double>(
      begin: 1.0,
      end: 1.5,
    ).animate(_zoomController);
  }

  @override
  void dispose() {
    // Clean up the animation controller when the widget is disposed
    _zoomController.dispose();
    super.dispose();
  }

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