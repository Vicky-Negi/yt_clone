import 'package:clone_yt/Screens/Channels_at_SubPage.dart';
import 'package:flutter/material.dart';
import 'package:clone_yt/Data.dart';
import 'package:clone_yt/Screens/Categry.dart';
import 'package:clone_yt/Screens/App_bar.dart';
import 'package:clone_yt/VideoCard.dart';
class Subscriptions extends StatelessWidget {
  const Subscriptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
          slivers: [
            AppBars(),
            SliverToBoxAdapter(
                child: Container(
                  height: 90.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: channels.length,
                    itemBuilder: (context, index1) {
                      return  Channels_as_circ(thumbno: channels[index1].channel_pic,Ch_name: channels[index1].channel_name,);
                    },
                  ),
                )),
            SliverToBoxAdapter(
                child: Container(
                  height: 40.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ctgry.length-1,
                    itemBuilder: (context, index1) {
                      return Center(child: Categry(ctgry[index1+1].category,ctgry[index1+1].isExp));
                    },
                  ),
                )),
            SliverList(delegate: SliverChildBuilderDelegate((context, index) {
              return VideoCard(profno: videos[index].profno, title: videos[index].title, desc:videos[index].desc, thumno: videos[index].thumno);
            },
              childCount: videos.length,
            )
            )
          ]
      ),
    );
  }
}
