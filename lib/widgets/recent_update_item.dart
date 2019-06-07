import 'package:flutter/material.dart';
import 'package:flutter_news/widgets/tag.dart';

class RecentUpdatesItem extends StatelessWidget {
  final String image;
  final String title;
  final String time;
  final String tagName;
  final Color tagColor;

  RecentUpdatesItem(
      {this.image, this.tagName, this.tagColor, this.title, this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image(image: ExactAssetImage(this.image), fit: BoxFit.cover),
            Tag(name: this.tagName, color: this.tagColor),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 16),
              child: Text(
                this.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 16),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Icon(Icons.timer, color: Colors.grey),
                  ),
                  Text(
                    this.time,
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
