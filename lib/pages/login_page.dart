import 'package:flutter/material.dart';
import '';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Center(
          child: Text("login Page",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.cyan,
          ),
          ),
      ),
    );
  }
}
