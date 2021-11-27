import 'package:flutter/material.dart';

class AddPopup extends StatelessWidget {
  const AddPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        color: Colors.grey[900],
      ),
      height: 280.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Create',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(primary: Colors.grey).copyWith(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.all(0.0),
                  ),
                  fixedSize: MaterialStateProperty.all(
                    Size(30.0, 30.0),
                  ),
                  minimumSize: MaterialStateProperty.all(
                    Size(30.0, 30.0),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.close,
                  size: 30.0,
                ),
              )
            ],
          ),
          ListTile(
            leading: Container(
              // padding: EdgeInsets.all(8.0),
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Icon(Icons.local_play),
            ),
            title: Text(
              'Create a short',
              style: TextStyle(fontSize: 18.0),
            ),
            trailing: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.0),
                color: Colors.blue,
              ),
              padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
              child: Text(
                'Beta',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ),
          ListTile(
            leading: Container(
              // padding: EdgeInsets.all(8.0),
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Icon(Icons.upload),
            ),
            title: Text(
              'Upload a video',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          ListTile(
            leading: Container(
              // padding: EdgeInsets.all(8.0),
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Icon(Icons.leak_add_outlined),
            ),
            title: Text(
              'Go live',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        ],
      ),
    );
  }
}
