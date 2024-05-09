import 'package:flutter/material.dart';

class MyCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ttle"),
      ),
      body: Center(
        child: Container(
          color: Colors.green,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello'),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Hello'),
              ),
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
            ],
          ),
        ),
      ),
    );
  }
}