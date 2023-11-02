import 'package:flutter/material.dart';
class SuperScreen extends StatelessWidget {
  const SuperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Super"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Super"),
      ),
    );
  }
}
