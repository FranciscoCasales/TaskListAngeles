import 'package:flutter/material.dart';
import 'package:task_list_angeles/screens/about_screen.dart';

class AppMenuItem extends StatefulWidget {
  @override
  State createState() {
    return _AppMenuItem();
  }
}

class _AppMenuItem extends State<AppMenuItem> {
  @override
  Widget build(BuildContext context) {

    final iconDescriptionItem = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 50,
            margin: EdgeInsets.only(right: 10),
            child: Icon(Icons.person),
          ),
          Text(
            'About Me',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );

    final arrowForward = Container(
      margin: EdgeInsets.only(
        right: 20
      ),
      child: Icon(Icons.arrow_forward),
    );

    return Container(
      margin: EdgeInsets.only(left: 20),
      width: double.infinity,
      height: 50,
      child: InkWell(
        onTap: () {
          Navigator.of(context).pop();
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => AboutScreen(),
          ));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            iconDescriptionItem,
            arrowForward,
          ],
        ),
      ),
    );
  }
}
