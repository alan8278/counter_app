import 'package:flutter/material.dart';
class SecondScreeen extends StatelessWidget {
  const SecondScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text("Back to previos state"),
        ),
      ),
    );
  }
}
