import 'package:flutter/material.dart';
import 'app_menu_item.dart';

class AppMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: Container(
        child: ListView(
          children: <Widget>[
            Image.network(
              'https://www.imefmex.mx/files/.logo%20imef%202-02-lw-scaled.png.png',
              height: 60,
            ),
            AppMenuItem()
          ],
        ),
        //color: Color(0xFF5c6bc0),
        color: Colors.white,
      )
    );
  }
}