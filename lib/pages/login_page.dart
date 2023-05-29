import 'package:ecommerce_app/pages/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  @override
  Widget build(BuildContext context){
    return  Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/undraw_heavy_box_agqi.png",fit: BoxFit.cover,),
            SizedBox(
              height: 20,
            ),

            Text("Let's sign you in first, $name",
            style: TextStyle(
              fontSize: 24,
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

                   onChanged: (value){
                     name = value;
                     setState(() {
                     }
                     );
                   }

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
                InkWell(
                  hoverColor: Colors.deepPurpleAccent,
                  onTap: (){Navigator.pushNamed(context, MyRoutes.homeRoute);},
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: 150,

                    height: 40,
                    alignment: Alignment.center,
                    child: Text("Login",
                    style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18,
                    )
                    ),

                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(8,)
                    ),
                  ),
                ),
                // ElevatedButton(onPressed: (){Navigator.pushNamed(context, MyRoutes.homeRoute);}, child: Text("Login"))
               ],
             ),
           )
          ],
        ),
      )
    );
  }
}
