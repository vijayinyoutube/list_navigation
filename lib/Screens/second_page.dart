import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Second Page")));
  }
}
