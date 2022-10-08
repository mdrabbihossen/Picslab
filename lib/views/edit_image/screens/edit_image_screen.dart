import 'package:flutter/material.dart';
import 'dart:io';

import 'package:pics_lab/views/edit_image/widgets/add_new_text_fab.dart';

import 'package:pics_lab/views/edit_image/widgets/edit_image_view_model.dart';
import 'package:pics_lab/views/edit_image/widgets/image_text.dart';
import 'package:screenshot/screenshot.dart';

class EditImageScreen extends StatefulWidget {
  final String selectedImage;

  const EditImageScreen({
    Key? key,
    required this.selectedImage,
  }) : super(key: key);

  @override
  State<EditImageScreen> createState() => _EditImageScreenState();
}

class _EditImageScreenState extends EditImageViewModel {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar(),
      body: Screenshot(
        controller: screenshotController,
        child: SafeArea(
          child: SizedBox(
            height: size.height * 0.3,
            child: Stack(
              children: [
                selectedImage,
                for (int i = 0; i < texts.length; i++)
                  Positioned(
                    left: texts[i].left,
                    top: texts[i].top,
                    child: GestureDetector(
                      onLongPress: () {
                        setState(() {
                          currentIndex = i;
                          deleteText(context);
                        });
                      },
                      onTap: () => setCurrentIndex(context, i),
                      child: Draggable(
                        feedback: ImageText(
                          textInfo: texts[i],
                        ),
                        child: ImageText(
                          textInfo: texts[i],
                        ),
                        onDragEnd: (drag) {
                          final renderBox =
                              context.findRenderObject() as RenderBox;
                          Offset off = renderBox.globalToLocal(drag.offset);
                          setState(() {
                            texts[i].top = off.dy - 96;
                            texts[i].left = off.dx;
                          });
                        },
                      ),
                    ),
                  ),
                creatorText.text.isNotEmpty
                    ? Positioned(
                        left: 0,
                        bottom: 0,
                        child: Text(
                          creatorText.text,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(
                              0.3,
                            ),
                          ),
                        ),
                      )
                    : SizedBox.shrink()
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: addNewTextFAB(
        onPressed: () => addNewDialog(context),
      ),
    );
  }

  // selected image
  Widget get selectedImage => Center(
        child: Image.file(
          File(
            widget.selectedImage,
          ),
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
        ),
      );

  // appbar
  AppBar appBar() => AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: SizedBox(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.save,
                  color: Colors.black,
                ),
                tooltip: 'Save Image',
              ),
              IconButton(
                onPressed: increaseFontSize,
                icon: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                tooltip: 'Increase Font Size',
              ),
              IconButton(
                onPressed: decreaseFontSize,
                icon: Icon(
                  Icons.remove,
                  color: Colors.black,
                ),
                tooltip: 'Decrease Font Size',
              ),
              IconButton(
                onPressed: alignTextLeft,
                icon: Icon(
                  Icons.format_align_left,
                  color: Colors.black,
                ),
                tooltip: 'Align Left',
              ),
              IconButton(
                onPressed: alignTextCenter,
                icon: Icon(
                  Icons.format_align_center,
                  color: Colors.black,
                ),
                tooltip: 'Align Center',
              ),
              IconButton(
                onPressed: alignTextRight,
                icon: Icon(
                  Icons.format_align_right,
                  color: Colors.black,
                ),
                tooltip: 'Align Right',
              ),
              IconButton(
                onPressed: boldText,
                icon: Icon(
                  Icons.format_bold,
                  color: Colors.black,
                ),
                tooltip: 'Bold Text',
              ),
              IconButton(
                onPressed: italicText,
                icon: Icon(
                  Icons.format_italic,
                  color: Colors.black,
                ),
                tooltip: 'Italic Text',
              ),
              IconButton(
                onPressed: addLinesToText,
                icon: Icon(
                  Icons.space_bar,
                  color: Colors.black,
                ),
                tooltip: 'Add New Line',
              ),
              Tooltip(
                message: 'Red',
                child: GestureDetector(
                  onTap: () => changeTextColor(
                    Colors.red,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                ),
              ),
              SizedBox(width: 5),
              Tooltip(
                message: 'White',
                child: GestureDetector(
                  onTap: () => changeTextColor(
                    Colors.white,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(width: 5),
              Tooltip(
                message: 'Black',
                child: GestureDetector(
                  onTap: () => changeTextColor(
                    Colors.black,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                  ),
                ),
              ),
              SizedBox(width: 5),
              Tooltip(
                message: 'Blue',
                child: GestureDetector(
                  onTap: () => changeTextColor(
                    Colors.blue,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                  ),
                ),
              ),
              SizedBox(width: 5),
              Tooltip(
                message: 'Yellow',
                child: GestureDetector(
                  onTap: () => changeTextColor(
                    Colors.yellow,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.yellow,
                  ),
                ),
              ),
              SizedBox(width: 5),
              Tooltip(
                message: 'Green',
                child: GestureDetector(
                  onTap: () => changeTextColor(
                    Colors.green,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                  ),
                ),
              ),
              SizedBox(width: 5),
              Tooltip(
                message: 'Orange',
                child: GestureDetector(
                  onTap: () => changeTextColor(
                    Colors.orange,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.orange,
                  ),
                ),
              ),
              SizedBox(width: 5),
              Tooltip(
                message: 'Pink',
                child: GestureDetector(
                  onTap: () => changeTextColor(
                    Colors.pink,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.pink,
                  ),
                ),
              ),
              SizedBox(width: 5),
            ],
          ),
        ),
      );
}
