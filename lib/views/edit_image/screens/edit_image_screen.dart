import 'package:flutter/material.dart';
import 'dart:io';

import 'package:pics_lab/views/edit_image/widgets/add_new_text_fab.dart';

class EditImageScreen extends StatefulWidget {
  final String selectedImage;

  const EditImageScreen({
    Key? key,
    required this.selectedImage,
  }) : super(key: key);

  @override
  State<EditImageScreen> createState() => _EditImageScreenState();
}

class _EditImageScreenState extends State<EditImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.file(
        File(widget.selectedImage),
      ),
      floatingActionButton: addNewTextFAB(),
    );
  }
}
