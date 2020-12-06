import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/Home/widgets/section_title.dart';

class GenreList extends StatelessWidget {
  final String title;

  final String firstimage;
  final String secondImage;
  final String thridImage;

  const GenreList(
    this.title, {
    Key key,
    this.firstimage,
    this.secondImage,
    this.thridImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        SectionTitle(title: title),
        SizedBox(
          height: 100,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              horizontalItem(firstimage),
              horizontalItem(secondImage),
              horizontalItem(thridImage),
            ],
          ),
        )
      ],
    );
  }
}

Widget horizontalItem(String imageName) {
  return Container(
    margin: EdgeInsets.only(right: 20),
    decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/$imageName.jpg"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(5)),
    //height: 200,
    width: 200,
  );
}
