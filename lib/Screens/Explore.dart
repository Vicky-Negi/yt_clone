import 'package:clone_yt/Screens/App_bar.dart';
import 'package:flutter/material.dart';
import 'package:clone_yt/VideoCard.dart';
import 'package:clone_yt/Data.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBars(),

          SliverToBoxAdapter(
            child: Container(
              height: 190.0,
              child: GridView.builder(
                  padding: EdgeInsets.all(16.0),
                  itemCount: 9,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 12.0,
                    mainAxisExtent: 95.0,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.black26,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          exploreIcons[index],
                          Text(exploreItems[index]),
                        ],
                      ),
                    );
                  }),
            ),
          ),

          // SliverGrid(delegate: delegate, gridDelegate: gridDelegate),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) {
              return VideoCard(
                  profno: videos[index].profno,
                  title: videos[index].title,
                  desc: videos[index].desc,
                  thumno: videos[index].thumno);
            },
            childCount: videos.length,
          ))
        ],
      ),
    );
  }
}
