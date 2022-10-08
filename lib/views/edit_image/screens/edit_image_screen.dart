import 'package:flutter/material.dart';
import 'dart:io';

import 'package:pics_lab/views/edit_image/widgets/add_new_text_fab.dart';
import 'package:pics_lab/views/edit_image/widgets/edit_image_view_model.dart';
import 'package:pics_lab/views/edit_image/widgets/image_text.dart';

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
      body: SafeArea(
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
                      print('Long Press');
                    },
                    onTap: () {
                      print('singlepress');
                    },
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
}
