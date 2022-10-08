import 'package:flutter/material.dart';
import 'package:pics_lab/common/widgets/showSnackbar.dart';

import 'package:pics_lab/model/text_info.dart';
import 'package:pics_lab/views/edit_image/screens/edit_image_screen.dart';
import 'package:pics_lab/views/edit_image/widgets/default_button.dart';
import 'package:screenshot/screenshot.dart';

abstract class EditImageViewModel extends State<EditImageScreen> {
  // controllers and variables
  TextEditingController textEditingController = TextEditingController();
  TextEditingController creatorText = TextEditingController();
  ScreenshotController screenshotController = ScreenshotController();
  List<TextInfo> texts = [];
  int currentIndex = 0;

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
            onPressed: () => addNewText(context),
            child: Text('Add Text'),
            bgColor: Colors.red,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }

// add new dialog end

  // set current index
  setCurrentIndex(BuildContext context, int index) {
    setState(() {
      currentIndex = index;
    });
    showSnackBar(context: context, message: 'Selected For Styling');
  }

// set current index end
// change text color
  changeTextColor(Color color) {
    setState(() {
      texts[currentIndex].color = color;
    });
  }

// change text color end
// increase font size
  increaseFontSize() {
    setState(() {
      texts[currentIndex].fontSize += 1;
    });
  }

// increase font size end
// decrease font size
  decreaseFontSize() {
    setState(() {
      texts[currentIndex].fontSize -= 1;
    });
  }

// decrease font size end
  // align text left
  alignTextLeft() {
    setState(() {
      texts[currentIndex].textAlign = TextAlign.left;
    });
  }

// align text left end
// align text center
  alignTextCenter() {
    setState(() {
      texts[currentIndex].textAlign = TextAlign.center;
    });
  }

// align text center end
// align text right
  alignTextRight() {
    setState(() {
      texts[currentIndex].textAlign = TextAlign.right;
    });
  }

// align text right end
  // bold text
  boldText() {
    setState(() {
      if (texts[currentIndex].fontWeight == FontWeight.bold) {
        texts[currentIndex].fontWeight = FontWeight.normal;
      } else {
        texts[currentIndex].fontWeight = FontWeight.bold;
      }
    });
  }

// bold text end
// italic text
  italicText() {
    setState(() {
      if (texts[currentIndex].fontStyle == FontStyle.italic) {
        texts[currentIndex].fontStyle = FontStyle.normal;
      } else {
        texts[currentIndex].fontStyle = FontStyle.italic;
      }
    });
  }

// italic text end
  // add lines
  addLinesToText() {
    setState(() {
      if (texts[currentIndex].text.contains('\n')) {
        texts[currentIndex].text =
            texts[currentIndex].text.replaceAll('\n', ' ');
      } else {
        texts[currentIndex].text =
            texts[currentIndex].text.replaceAll(' ', '\n');
      }
    });
  }

// add lines end
  // delete text
  deleteText(BuildContext context) {
    setState(() {
      texts.removeAt(currentIndex);
      currentIndex = 0;
    });
    showSnackBar(context: context, message: 'Text Deleted Successfully');
  }
// delete text end

// save image to gallery
 saveImageToGallery(BuildContext context)async{

 }
// save image to gallery end
}
