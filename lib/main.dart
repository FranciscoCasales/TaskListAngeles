import 'package:flutter/material.dart';
import 'package:task_list_angeles/screens/home_screen.dart';
import 'package:task_list_angeles/widgets/app_menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          primaryColorDark: Color(0xFF303F9F),
          primaryColorLight: Color(0xFFC5CAE9),
          accentColor: Color(0xFFFF5252),
          primaryColor: Color(0xFF3F51B5),
          dividerColor: Color(0xFFBDBDBD),
          iconTheme: IconThemeData(color: Color(0xFFFF5252))),
      home: MyHomePage(title: 'Task List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            children: <Widget>[
              Text(
                "Ing. Maria De Los Angeles 👷🏻‍",
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
      drawer: AppMenu(),
      body: HomeScreen(),
    );
  }
}
