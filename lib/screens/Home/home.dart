import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix_clone/data/logged_user.dart';
import 'package:netflix_clone/screens/Home/widgets/continue_watching.dart';
import 'package:netflix_clone/screens/Home/widgets/genre.dart';
import 'package:netflix_clone/screens/Home/widgets/genre_list.dart';
import 'package:netflix_clone/screens/Home/widgets/originals.dart';
import 'package:netflix_clone/screens/Home/widgets/section_title.dart';

import '../../styles.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF111111),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                headerSection(context),
                mainContent(),
              ],
            ),
          ),
        ));
  }

  Widget mainContent() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          SectionTitle(title: "Netflix Originals"),
          Originals(),
          SectionTitle(title: "Continue Watching for ${currentUser.name} "),
          ContinueWatching(),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SectionTitle(title: "Explore by Genres"),
              Icon(Icons.keyboard_arrow_down, color: Colors.white)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Genres(genreName: "ACTION"),
              Genres(genreName: "ADVENTURE"),
              Genres(genreName: "COMEDY"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          GenreList("Popular on Netflix",
              firstimage: "p1", secondImage: "p2", thridImage: "p3"),
          GenreList("Romantic",
              firstimage: "l1", secondImage: "l2", thridImage: "l3"),
          GenreList("Drama",
              firstimage: "d1", secondImage: "d2", thridImage: "d3"),
          GenreList("Series",
              firstimage: "s1", secondImage: "s2", thridImage: "s3"),
        ],
      ),
    );
  }
}

Widget headerSection(BuildContext context) {
  return Container(
      height: MediaQuery.of(context).size.height / 2 - 50,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/13RW-Poster.jpg'),
            fit: BoxFit.fill),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height / 10 * .8,
                    width: MediaQuery.of(context).size.width / 8 * .8,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: Image(
                          image: AssetImage('assets/images/Netflix_Logo.png')),
                    ),
                  ),
                  menuItem("Tv Shows"),
                  menuItem("Movies"),
                  menuItem("My List"),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 18, bottom: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Column(
                      children: <Widget>[
                        Icon(FontAwesomeIcons.plus),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "My List",
                        )
                      ],
                    ),
                  ),
                  FlatButton(
                    color: Color(0xFFE50914),
                    onPressed: () {},
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.play_arrow,
                          size: 30,
                          color: Colors.white,
                        ),
                        Text(
                          "Play",
                          style: kTitleStyle.copyWith(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  FlatButton(
                      onPressed: () {},
                      child: Column(
                        children: <Widget>[
                          Icon(FontAwesomeIcons.infoCircle),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Info",
                          )
                        ],
                      ))
                ],
              ),
            )
          ]));
}

FlatButton menuItem(String itemName) {
  return FlatButton(
    onPressed: () {},
    child: Text(
      itemName,
    ),
  );
}
