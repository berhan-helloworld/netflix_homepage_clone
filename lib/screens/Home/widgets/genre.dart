import 'package:flutter/material.dart';

class Genres extends StatelessWidget {
  final String genreName;
  const Genres({Key key, this.genreName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      color: Color(0xFFE50914),
      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Text(
        genreName,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.white,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
