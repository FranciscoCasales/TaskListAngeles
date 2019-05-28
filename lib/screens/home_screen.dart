import 'package:flutter/material.dart';
import 'package:task_list_angeles/widgets/date_card.dart';
import 'package:task_list_angeles/util/new_date.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    final taskCard = Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: (MediaQuery.of(context).size.height - 180.0),
              child: ListView(
                children: <Widget>[
                  DateCard(),
                  DateCard(),
                  DateCard(),
                  DateCard(),
                  DateCard(),
                  DateCard(),
                  DateCard(),
                  DateCard(),
                  DateCard(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: 20,
                right: 20,
              ),
              child: FloatingActionButton(
                onPressed: () {
                  alertShowReview(context);
                },
                child: Icon(Icons.add),
                elevation: 10,
                disabledElevation: 5,
              ),
            ),
          ],
        ),
      ),
    );

    final homePage = Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

        ],
      ),
    );
    return taskCard;
  }
}

Future<bool> showReview(context) {
  return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Container(
            height: 350,
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
                              topRight: Radius.circular(10.0)
                          ),
                          color: Colors.teal
                      ),
                    ),
                    Positioned(
                      top: 50.0,
                      left: 94.0,
                      child: Container(
                        height: 90.0,
                        width: 90.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45.0),
                            border: Border.all(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            image: DecorationImage(
                              image: NetworkImage('https://avatars.slack-edge.com/2019-04-04/600895799716_c11cdc4aada6e244c0a7_192.png'),
                              fit: BoxFit.cover,
                            )
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Texto de prueba',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                FlatButton(
                  child: Center(
                    child: Text(
                      'Okey',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 14.0,
                          color: Colors.teal
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  color: Colors.transparent,
                )
              ],
            ),
          ),
        );
      }
  );
}