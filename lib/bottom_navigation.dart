import 'package:flutter/material.dart';
import 'package:flutter_navigation_tabs/tabs/tabs.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation() : super();

  final String title = 'Bottom Navigation Demo';

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: TabBarView(
        children: <Widget>[
          FirstTab(),
          SecondTab(),
          ThirdTab(),
        ],
        controller: controller,
      ),
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.favorite,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.add,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.airport_shuttle,
              ),
            ),
          ],
          controller: controller,
        ),
      ),
    );
  }
}
