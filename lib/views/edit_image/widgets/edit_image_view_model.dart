import 'package:flutter/material.dart';
import 'package:pics_lab/views/edit_image/screens/edit_image_screen.dart';

abstract class EditImageViewModel extends State<EditImageScreen> {
  // controllers
  TextEditingController textEditingController = TextEditingController();

  // add new dialog
  addNewDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Add New Text'),
        content: TextField(
          controller: textEditingController,
          maxLines: 5,
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.edit),
            filled: true,
            hintText: 'Your Text Here...',
          ),
        ),
      ),
    );
  }
// add new dialog end
}
