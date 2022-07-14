import 'package:flutter/material.dart';

class TranslatePage extends StatelessWidget{
  const TranslatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(204,255,255, 1),
      ),
      child: Scaffold(
        appBar: AppBar(title: Text('Translate')),
        body: Center(child: Text('Translate')),
      )
    );
  }
}
