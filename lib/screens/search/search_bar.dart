import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Container(
        padding: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Color(0xFF1c1c1c),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: TextField(
          style: TextStyle(
            color: Color(0xFF5a5a5a),
            fontSize: 14,
          ),
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            hintText: 'Search TV Shows, Videos and Movies',
            icon: Icon(
              Icons.search,
              color: Color(0xFF5a5a5a),
            ),
            hintStyle: TextStyle(
              color: Color(0xFF5a5a5a),
              fontSize: 14,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
