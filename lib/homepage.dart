import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30;
    var day = 'tuesday';
    const fi= 34;
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
