import 'package:flutter/material.dart';
import 'package:workshop/presentation/widgets/default_text.dart';

class FinalsScreen extends StatelessWidget {
  const FinalsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DefaultText(text: 'Finals'),
      ),
    );
  }
}
