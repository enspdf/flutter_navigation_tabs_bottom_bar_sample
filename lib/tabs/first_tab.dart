import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Icon(
                Icons.favorite,
                size: 200.0,
                color: Colors.white,
              ),
              Text(
                'First Tab',
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
