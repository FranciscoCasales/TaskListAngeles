import 'package:flutter/material.dart';
import 'package:task_list_angeles/widgets/image_galery.dart';

Widget textFileAngeles({String text}) {
  return Container(
    width: 240,
    child: TextField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hasFloatingPlaceholder: true,
        icon: Icon(Icons.face),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
//      border: InputBorder.none,
        contentPadding: EdgeInsets.all(10),
        labelText: text,
        alignLabelWithHint: false,
      ),
    ),
  );
}

Future<bool> alertShowReview(context) {
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Container(
            height: 460,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 150,
                    ),
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                        color: Color(0xFF3F51B5),
                      ),
                    ),
                    Positioned(
                      top: 50.0,
                      left: 94.0,
                      child: ImageGallery(),
                    ),
                  ],
                ),
                textFileAngeles(
                  text: 'Empresa Cliente',
                ),
                SizedBox(height: 10.0),
                textFileAngeles(
                  text: 'Direccion',
                ),
                SizedBox(height: 10.0),
                textFileAngeles(
                  text: 'A quien dirigirse',
                ),
                SizedBox(height: 10.0),
                textFileAngeles(
                  text: 'Direccion',
                ),
                SizedBox(height: 10.0),
                textFileAngeles(
                  text: 'Direccion',
                ),
                SizedBox(height: 15.0),
                Container(
                  width: 100,
                  child: FlatButton(
                    child: Center(
                      child: Text(
                        'Okey',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    color: Color(0xFFFF5252),
                  ),
                )
              ],
            ),
          ),
        );
      });
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
      });
}
