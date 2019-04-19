import 'package:flutter/material.dart';

class ThirdTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Icon(
                Icons.airport_shuttle,
                size: 200.0,
                color: Colors.white,
              ),
              Text(
                'Third Tab',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
