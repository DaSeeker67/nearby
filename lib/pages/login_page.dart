import 'package:ecommerce_app/pages/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [

            Image.asset("assets/undraw_heavy_box_agqi.png",fit: BoxFit.cover,),
            SizedBox(
              height: 20,
            ),
            Text("Let's sign you in first",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(
              height: 20,
            ),

           Padding(
             padding: const EdgeInsets.all(16.0),
             child: Column(
               children: [
                 TextFormField(
                   decoration: InputDecoration(
                     hintText: "Enter Username",
                     labelText: "Username",
                   ),

                 ),
                 TextFormField(
                   obscureText: true,
                   decoration: InputDecoration(
                     hintText: "Enter Password",
                     labelText: "Password",
                   ),
                 ),
                 SizedBox(
                   height: 20,
                 ),
                 ElevatedButton(onPressed: (){Navigator.pushNamed(context, MyRoutes.homeRoute);}, child: Text("Login"))
               ],
             ),
           )
          ],
        ),
      )
    );
  }
}
