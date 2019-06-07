
import 'package:flutter/material.dart';
import 'package:flutter_news/widgets/card_with_image.dart';
import 'package:flutter_news/widgets/recent_update_item.dart';
import 'package:flutter_news/widgets/section_title.dart';
import 'package:flutter_news/widgets/top_stories.dart';

class WhatsNew extends StatefulWidget {
  @override
  _WhatsNewState createState() => _WhatsNewState();
}

class _WhatsNewState extends State<WhatsNew> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CardWithImage(
              title: 'Breaking News',
              description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent',
              image: 'assets/images/placeholder_bg.png'
            ),
            SectionTitle('Top Stories'),
            TopStories(),
            SectionTitle('Recent Updates'),
            RecentUpdatesItem(
              image: 'assets/images/placeholder_bg.png',
              title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent',
              time: '15 min',
              tagName: 'SPORT',
              tagColor: Colors.teal,
            ),
            RecentUpdatesItem(
              image: 'assets/images/placeholder_bg.png',
              title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent',
              time: '45 min',
              tagName: 'EVENT',
              tagColor: Colors.redAccent,
            ),
            SizedBox(height: 48,)
          ],
        ),
      )
    );
  }
}
