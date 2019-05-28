import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageGallery extends StatefulWidget {
  @override
  _ImageGallery createState() => _ImageGallery();
}

class _ImageGallery extends State<ImageGallery> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    final imagePick = InkWell(
      onTap: getImage,
      child: Container(
        height: 90.0,
        width: 90.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(45.0),
          border: Border.all(
            color: Colors.white,
            style: BorderStyle.solid,
            width: 2.0,
          ),
          image: DecorationImage(
            image: _image == null
                ? AssetImage('assets/img/avatar_icon.png')
                : FileImage(_image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );

    return imagePick;
  }
}
