import 'package:flutter/material.dart';
class Video{
  final String title;
  final String desc;
  final String thumno;
  final String profno;
  const Video({required this.desc,required this.title,required this.profno,required this.thumno});
}
final List<Video> videos=[
  Video(desc:"BB Ki Vines·50M views·1 month ago", title: "Dhindora | EP 01: Lag Gayi | BB Ki Vines", profno: "1", thumno: "1"),
  Video(desc:"AnimeUS·700k views·1 month ago", title: "JUJUTSU KAISEN 0 Movie - Official Trailer | English Sub", profno: "3", thumno: "2"),
  Video(desc:"OneRepublic·999M views·8 years ago", title: "OneRepublic - If I Lose Myself (Official Music Video)", profno: "2", thumno: "3"),
  Video(desc:"GuitarZer2Hero·20k views·3 days ago", title: "The Joker And The Queen Guitar Tutorial Ed Sheeran Guitar Lesson ", profno: "4", thumno: "4"),
];
class Category{
  final String category;
  final int isExp;
  const Category({required this.category,required this.isExp});
}
final List<Category> ctgry=[
  Category(category: "Explore",isExp: 1),
  Category(category: "All",isExp: 0),
  Category(category: "Chords",isExp: 0),
  Category(category: "Elden ring",isExp: 0),
  Category(category: "Valorant",isExp: 0),
  Category(category: "Flutter",isExp: 0),
  Category(category: "Jordan Peele",isExp: 0),
];
class Channels{
  final String channel_pic;
  final String channel_name;
  const Channels({required this.channel_pic,required this.channel_name});
}
final List<Channels> channels=[
  Channels(channel_pic: "1",channel_name: "BB ki Vines"),
  Channels(channel_pic: "2",channel_name: "OneRepublic"),
  Channels(channel_pic: "3",channel_name: "AnimeUS"),
  Channels(channel_pic: "4",channel_name: "GuitarZer2Hero"),
  Channels(channel_pic: "1",channel_name: "BB ki Vines"),
  Channels(channel_pic: "2",channel_name: "OneRepublic"),
  Channels(channel_pic: "3",channel_name: "AnimeUS"),
  Channels(channel_pic: "4",channel_name: "GuitarZer2Hero"),
];