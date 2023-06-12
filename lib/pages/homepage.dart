import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      appBar: AppBar(title: Text('NearBy'),
      actions:[IconButton(
        icon:
          Icon(Icons.search),onPressed:(){},
      ),
      ],
      ),

      floatingActionButton:
          FloatingActionButton(
            onPressed: (){},
            child: Icon(Icons.card_giftcard),


          ),
      drawer: Drawer(),
    );
  }
}
