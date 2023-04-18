import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    int days = 30;
    var day = 'tuesday';

    return  Scaffold(
      appBar: AppBar(
        title: Text('catalog app'),
      ),
      body: Center(
        child: Container(
            child: Text("welcome bro the world od app dev; day $days today is $day")

        ),
      ),
      drawer: Drawer(),
    );
  }
}
