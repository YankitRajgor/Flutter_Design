import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePicker_Screen extends StatefulWidget {
  const ImagePicker_Screen({super.key});

  @override
  State<ImagePicker_Screen> createState() => _ImagePicker_ScreenState();
}

class _ImagePicker_ScreenState extends State<ImagePicker_Screen> {
  File? imagefile;
  bool isimage = false;

  _opengallery(BuildContext context) async {
    PickedFile? image = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxHeight: 2000,
      maxWidth: 2000,
    );
    setState(() {
      imagefile = File(image!.path);
      isimage = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Image Picker"),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                isimage == false
                    ? Container(
                        height: 100,
                        width: 100,
                        // child: Image.asset("assets/City.jpg"),
                      )
                    : Container(
                        height: 100,
                        width: 100,
                        child: Image.file(
                          imagefile!,
                          fit: BoxFit.cover,
                        ),
                      ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    _opengallery(context);
                  },
                  child: Text("Upload photo"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
