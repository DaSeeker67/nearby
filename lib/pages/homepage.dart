import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopr Seller Dashboard'),
        backgroundColor: Colors.green, // Green theme color
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome, Seller',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Container(
              height: 200,
              child: buildSalesGraph(),
            ),
            SizedBox(height: 16),
            buildDashboardCard(
              context,
              icon: Icons.shopping_cart,
              title: 'Orders',
              subtitle: 'Manage your orders and track their status',
              onTap: () {
                // Handle orders tap
              },
            ),
            SizedBox(height: 16),
            buildDashboardCard(
              context,
              icon: Icons.inventory,
              title: 'Products',
              subtitle: 'Add, edit, and manage your products',
              onTap: () {
                // Handle products tap
              },
            ),
            SizedBox(height: 16),
            buildDashboardCard(
              context,
              icon: Icons.analytics,
              title: 'Analytics',
              subtitle: 'Track your sales and performance',
              onTap: () {
                // Handle analytics tap
              },
            ),
            SizedBox(height: 16),
            buildDashboardCard(
              context,
              icon: Icons.settings,
              title: 'Settings',
              subtitle: 'Manage your shop settings',
              onTap: () {
                // Handle settings tap
              },
            ),
            SizedBox(height: 16),
            Card(
              color: Colors.green[50], // Green theme color
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.lightbulb,
                  color: Colors.green, // Green theme color
                ),
                title: Text(
                  'Seller Tips',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Get valuable tips and insights to boost your sales',
                ),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  // Handle tip menu tap
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSalesGraph() {
    return LineChart(
      LineChartData(
        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(0, 1),
              FlSpot(1, 1.5),
              FlSpot(2, 2),
              FlSpot(3, 1.8),
              FlSpot(4, 2.5),
              FlSpot(5, 3),
            ],
            // colors: [Colors.green], // Green theme color
            barWidth: 3,
            isCurved: true,
            dotData: FlDotData(show: false),
          ),
        ],
        // Additional chart configuration here
      ),
    );
  }

  Widget buildDashboardCard(
      BuildContext context, {
        required IconData icon,
        required String title,
        required String subtitle,
        required VoidCallback onTap,
      }) {
    // Custom implementation of the dashboard card
    // Add your own styling and design here
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.green, // Green theme color
          ),
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(subtitle),
          trailing: Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}