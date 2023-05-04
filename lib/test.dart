import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyImagePicker extends StatefulWidget {
  @override
  _MyImagePickerState createState() => _MyImagePickerState();
}

class _MyImagePickerState extends State<MyImagePicker> {
  File? _imageFile;
  final picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await picker.getImage(source: source);
    setState(() {
      _imageFile = File(pickedFile!.path);
    });
  }

  String? _validateImage(File? image) {
    if (image == null) {
      return 'Please select an image';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Image Picker'),
      ),
      body: Column(
        children: [
          if (_imageFile != null)
            Image.file(
              _imageFile!,
              height: 200,
            ),
          ElevatedButton(
            child: Text('Pick Image'),
            onPressed: () {
              _pickImage(ImageSource.gallery);
            },
          ),
          ElevatedButton(
            child: Text('Take Photo'),
            onPressed: () {
              _pickImage(ImageSource.camera);
            },
          ),
          ElevatedButton(
            child: Text('Submit'),
            onPressed: () {

              // Image is valid, do something here
            },
          ),
        ],
      ),
    );
  }
}