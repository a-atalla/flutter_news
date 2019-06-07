import 'package:flutter/material.dart';

class CardWithImage extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  CardWithImage({this.title, this.description, this.image});

  @override
  Widget build(BuildContext context) {
    TextStyle _titleStyle = TextStyle(
      color: Colors.white,
      fontSize: 32,
      fontWeight: FontWeight.w700,
    );
    TextStyle _descriptionStyle = TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    );
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage(this.image),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Text(
              this.title,
              style: _titleStyle,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32),
            child: Text(
              this.description,
              style: _descriptionStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
