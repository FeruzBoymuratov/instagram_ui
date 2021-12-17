import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'feed_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _pages = [
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        centerTitle: true,
        title: Text(
          "Instagram",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            FeatherIcons.camera,
            color: Colors.grey,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              FeatherIcons.tv,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesome.send_o,
              color: Colors.grey,
            ),
          ),
        ],
      ),

      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (i){
          setState(() {
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Foundation.home),
              label: "Feed",
          ),
          BottomNavigationBarItem(
              icon: Icon(FeatherIcons.search),
              label: "Search",
          ),
          BottomNavigationBarItem(
              icon: Icon(FeatherIcons.plusSquare),
              label: "Upload",
          ),
          BottomNavigationBarItem(
              icon: Icon(FeatherIcons.heart),
              label: "Likes",
          ),
          BottomNavigationBarItem(
              icon: Icon(FeatherIcons.user),
              label: "Account",
          ),
        ],
      ),
    );
  }
}