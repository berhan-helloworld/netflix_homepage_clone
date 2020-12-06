import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix_clone/screens/Home/home.dart';
import 'package:netflix_clone/screens/search/search_bar.dart';

class NetflixTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Theme(
        data: ThemeData(brightness: Brightness.dark),
        child: Scaffold(
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                icon: Icon(FontAwesomeIcons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.search),
                text: "Search",
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.download),
                text: "Downloads",
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.bars),
                text: "More",
              ),
            ],
            unselectedLabelColor: Color(0xff999999),
            labelColor: Colors.white,
            indicatorColor: Colors.transparent,
          ),
          body: TabBarView(children: [
            Home(),
            SearchBar(),
            Center(child: Text("Downloads")),
            Center(child: Text("More on Setting")),
          ]),
        ),
      ),
    );
  }
}
