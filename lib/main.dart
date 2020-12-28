import 'package:flutter/material.dart';
import 'package:music_app/themes/colors.dart';
import 'package:music_app/themes/themes.dart';
import 'file:///C:/Users/Admin/AndroidStudioProjects/music_app/lib/common/genre.dart';
import 'file:///C:/Users/Admin/AndroidStudioProjects/music_app/lib/resources/strings.dart';

import 'common/icons.dart';

void main() {
  runApp(
    MaterialApp(
      theme:Themes.lightTheme,
      home:Dashboard(),
    ),
  );
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.COLOR_BLACK,
      appBar: AppBar(
        title: Center(
          child: Text('The Harmony',),
        ),
        leading: Icon(
          Icons.settings,
          color: AppColors.COLOR_WHITE,
        ),
        backgroundColor: AppColors.COLOR_GREEN,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            Strings.greetings,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          SizedBox(height: 10),
          Text(
            Strings.yourTopGenre,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          Container(
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Journals(
                  genreTitle: '2020 Wrapped',
                  genreColor: AppColors.COLOR_RED,
                ),
                Journals(
                  genreTitle: 'Happy Holidays',
                  genreColor: AppColors.COLOR_PINK,
                ),
                Journals(
                  genreTitle: 'Malayalam',
                  genreColor: AppColors.COLOR_AMBER,
                ),
                Journals(
                  genreTitle: 'Tamil',
                  genreColor: AppColors.COLOR_INDIGO,
                ),
                Journals(
                  genreTitle: 'Bollywood',
                  genreColor: AppColors.COLOR_TEAL,
                ),
                Journals(
                  genreTitle: 'Sleep',
                  genreColor: AppColors.COLOR_PURPLE,
                ),
              ],
            ),
          ),
          Text(
            Strings.recentlyPlayed,
            style: Theme.of(context).textTheme.headline6,
          ),
          Container(
            height: 100.0,
            width: 300.0,
            margin: const EdgeInsets.only(
              left: 50.0,
              right: 50.0,
            ),
            child: Card(
              color: AppColors.COLOR_BLUE,
              child: Row(
                children: <Widget>[
                  Image(
                      image: NetworkImage(
                          'https://www.incimages.com/uploaded_files/image/1920x1080/getty_129714169_970647970450099_67857.jpg')),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Strings.recentlyPlayedTitle,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 120.0,
            width: 407.0,
            margin: const EdgeInsets.only(
              top: 37.0,
            ),
            child: Card(
              color: AppColors.COLOR_LIGHTBLACK,
              child: Row(
                children: <Widget>[
                  Image(image: AssetImage('images/snow.jpg')),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Strings.playListSongName,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(
                          Strings.playListArtistName,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                  BottomIcons(
                      iconType: Icons.play_arrow, iconColor: AppColors.COLOR_WHITE),
                  BottomIcons(
                    iconType: Icons.pause,
                    iconColor: AppColors.COLOR_WHITE,
                  ),
                  BottomIcons(
                    iconType: Icons.favorite_border,
                    iconColor: AppColors.COLOR_PINK,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.COLOR_TEAL,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: Strings.bottomNavHome,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: Strings.bottomNavSearch,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: Strings.bottomNavLibrary,
          ),
        ],
        selectedItemColor: AppColors.COLOR_BLACK,
      ),
    );
  }
}
