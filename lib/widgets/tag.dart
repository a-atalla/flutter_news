
import 'package:flutter/material.dart';

class Tag extends StatelessWidget{
  final String name;
  final Color color;

  Tag({this.name, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 32, right: 32, top: 4, bottom: 4),
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        this.name,
        style: TextStyle(
          color: Colors.white
        ),
      ),
    );
  }
}
