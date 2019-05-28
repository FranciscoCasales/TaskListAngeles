import 'package:flutter/material.dart';
import 'package:task_list_angeles/screens/about_screen.dart';

class DateCard extends StatefulWidget {

  @override
  State createState() {
    return _DateCard();
  }
}

class _DateCard extends State<DateCard> {

  @override
  Widget build(BuildContext context) {
    final avatar = Container(
      margin: EdgeInsets.all(5),
      height: 80.0,
      width: 80.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.scaleDown,
          image: AssetImage('assets/img/avatar_icon.png'),
        ),
        shape: BoxShape.circle,
      ),
    );

    final description = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 20,
            left: 10,
            bottom: 2,
          ),
          child: Text(
            'Vendor',
            style: TextStyle(
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 10,
          ),
          child: InkWell(
            child: Text(
              'Paseo de la reforma #34',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );

    final avatarDescription = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        avatar,
        description,
      ],
    );

    final content = Container(
      height: 88,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          avatarDescription,
          Center(
            child: Icon(Icons.arrow_forward_ios),
          )
        ],
      ),
    );

    final cont = InkWell(
      onTap: () {
//        Navigator.push(context, MaterialPageRoute(
//          builder: (context) => AboutScreen(),
//        ));
        infoDialog(context);
      },
      child: Container(
        child: content,
        height: 88,
        width: double.infinity,
        //width: double.infinity,
        margin: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 10,
          bottom: 10,
        ),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                //color: Colors.black54,
                color: Color(0xFF3F51B5).withAlpha(80),
                blurRadius: 5.0,
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
    );

    return cont;
  }
}

Future<bool> infoDialog(context) {
  return showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Review'),
        content: Text('Review Prueba'),
        actions: <Widget>[
          FlatButton(
            child: Text('Okey'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      );
    }
  );
}
