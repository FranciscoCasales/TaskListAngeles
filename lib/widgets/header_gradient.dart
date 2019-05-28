import 'package:flutter/material.dart';

class HeaderGradient extends StatelessWidget {
  final double height;
  final List<Color> colores;
  final Widget user;

  const HeaderGradient({
    this.height,
    this.colores,
    this.user,
  });

  @override
  Widget build(BuildContext context) {
    final headerGradient = Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.1, 0.5, 0.9],
          colors: colores,
        ),
      ),
      child: user ?? Text(''),
    );

    return headerGradient;
  }
}

