import 'package:flutter/material.dart';

class Journals extends StatelessWidget {
  final String genreTitle;
  final Color genreColor;
  Journals({
    this.genreTitle,this.genreColor
});
  @override
  Widget build(BuildContext context) {
   return Container(
      margin: const EdgeInsets.only(
          left: 10.0, right: 10.0, top: 20.0, bottom: 20.0),
      width: 200,
      color: genreColor,
      child: Center(
        child: Text(
          genreTitle,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24),
        ),
      ),
    );
  }
}