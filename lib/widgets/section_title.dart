
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;


  SectionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        this.title,
        style: TextStyle(
            color: Colors.grey.shade700,
            fontWeight: FontWeight.w600,
            fontSize: 16),
      ),
    );
  }
}
