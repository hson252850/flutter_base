import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SupportivePage extends StatelessWidget {
  const SupportivePage({Key? key, required this.title, required this.content})
      : super(key: key);

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(content),
      ),
    );
  }
}
