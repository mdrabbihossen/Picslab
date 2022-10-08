import 'package:flutter/material.dart';
import 'package:pics_lab/common/widgets/deafult_button.dart';
import 'package:pics_lab/model/text_info.dart';
import 'package:pics_lab/views/edit_image/screens/edit_image_screen.dart';

abstract class EditImageViewModel extends State<EditImageScreen> {
  // controllers and variables
  TextEditingController textEditingController = TextEditingController();
  List<TextInfo> texts = [];

  // add new text

  addNewText(BuildContext context) {
    setState(() {
      texts.add(
        TextInfo(
          text: textEditingController.text,
          left: 0,
          top: 0,
          color: Colors.black,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
          fontSize: 20,
          textAlign: TextAlign.left,
        ),
      );
      Navigator.of(context).pop();
    });
  }

  // add new text end

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
        actions: [
          DefaultButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Back'),
            bgColor: Colors.white,
            textColor: Colors.black,
          ),
          DefaultButton(
            onPressed: () {},
            child: Text('Add Text'),
            bgColor: Colors.red,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
// add new dialog end
}
