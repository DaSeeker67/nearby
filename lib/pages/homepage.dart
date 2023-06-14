import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seller Homepage'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Important Sales Data',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                IconButton(
                  icon: Icon(Icons.notifications),
                  color: Colors.white,
                  onPressed: () {
                    // Handle notifications button press
                  },
                ),
              ],
            ),
          ),
          // Sales-related content
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.inventory),
              onPressed: () {
                // Navigate to inventory page
              },
            ),
            IconButton(
              icon: Icon(Icons.payment),
              onPressed: () {
                // Navigate to payments page
              },
            ),
            IconButton(
              icon: Icon(Icons.account_balance),
              onPressed: () {
                // Navigate to accounts page
              },
            ),
            IconButton(
              icon: Icon(Icons.mail),
              onPressed: () {
                // Navigate to contact us page
              },
            ),
          ],
        ),
      ),
    );
  }
}