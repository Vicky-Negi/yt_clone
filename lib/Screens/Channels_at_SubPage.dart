import 'package:flutter/material.dart';
class Channels_as_circ extends StatelessWidget {
  final String thumbno;
  final String Ch_name;
  const Channels_as_circ({required this.thumbno,required this.Ch_name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[ Column(
        mainAxisSize: MainAxisSize.min,
        children:[
          CircleAvatar(
            maxRadius: 25,
            backgroundImage: AssetImage("assests/ProfilePic/$thumbno.png"),
          ),
          SizedBox(height: 3,),
          Flexible(child: Text(Ch_name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12.0),)),
          ]
      ),
        SizedBox(width:5),
    ]
    );
  }
}
