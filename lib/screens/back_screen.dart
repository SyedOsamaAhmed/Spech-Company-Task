import 'package:flutter/material.dart';

class BackScreen extends StatelessWidget {
  const BackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Previous Screen"),
      ),
    );
  }
}
