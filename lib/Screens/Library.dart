import 'package:flutter/material.dart';
import 'App_bar.dart';
import 'package:clone_yt/components/libraryrecentvideocard.dart';
import 'package:clone_yt/Data.dart';
import 'package:clone_yt/VideoCard.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  String dropDown = 'Recently Added';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBars(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12.0, 16.0, 12.0, 12.0),
              child: Container(
                child: Text(
                  'Recent',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          // SliverToBoxAdapter(
          //   child: Container(
          //     height: 170.0,
          //     child: LibraryRecentVideoCard(
          //         desc: "BB Ki Vines·50M views·1 month ago",
          //         title: "Dhindora | EP 01: Lag Gayi | BB Ki Vines",
          //         profno: "1",
          //         thumno: "1"),
          //   ),
          // )
          SliverToBoxAdapter(
            child: Container(
              height: 170.0,
              child: ListView.builder(
                  padding: EdgeInsets.all(12.0),
                  scrollDirection: Axis.horizontal,
                  itemCount: videos.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Stack(children: [
                          FittedBox(
                            fit: BoxFit.fitHeight,
                            child: LibraryRecentVideoCard(
                                obscureText: false,
                                profno: videos[index].profno,
                                title: videos[index].title,
                                desc: videos[index].desc,
                                thumno: videos[index].thumno),
                          ),
                          Positioned.fill(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  color: Colors.black.withOpacity(0.7),
                                  child: Text(
                                    videos[index].title,
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 2.0),
                                  color: Colors.black.withOpacity(0.7),
                                  child: Text(
                                    channelName[index],
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  // child: Al,
                                )
                              ],
                            ),
                          ),
                        ]),
                        SizedBox(
                          width: 20.0,
                        )
                      ],
                    );
                  }),
            ),
          ),

          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: Colors.white38,
                  height: 1.0,
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.history,
                          size: 30.0,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 16.0,
                        ),
                        child: Text(
                          'History',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.play_circle_outline_outlined,
                          size: 30.0,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 16.0,
                        ),
                        child: Text(
                          'Your Videos',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.vertical_align_bottom,
                          size: 30.0,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 16.0,
                        ),
                        child: Text(
                          'Downloads',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.local_movies_outlined,
                          size: 30.0,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 16.0,
                        ),
                        child: Text(
                          'Your Movies',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.history_toggle_off,
                          size: 30.0,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 16.0,
                        ),
                        child: Text(
                          'Watch Later',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white38,
                  height: 1.0,
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          'Playlists',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                      Container(
                        child: DropdownButton<String>(
                          value: dropDown,
                          underline: Container(),
                          icon: Icon(Icons.keyboard_arrow_down),
                          items: [
                            DropdownMenuItem(
                              child: Text('Recently Added'),
                              value: 'Recently Added',
                            ),
                            DropdownMenuItem(
                              child: Text('A-Z'),
                              value: 'A-Z',
                            ),
                          ],
                          onChanged: (value) {
                            setState(() {
                              dropDown = value!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.add,
                          size: 30.0,
                          color: Colors.blueAccent,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 16.0,
                        ),
                        child: Text(
                          'New Playlist',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.thumb_up_off_alt,
                          size: 25.0,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 16.0,
                        ),
                        child: Text(
                          'Liked videos',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // SliverList
        ],
      ),
    );
  }
}
