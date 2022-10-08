import 'package:flutter/material.dart';

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
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Colors.black,
              ),
              tooltip: 'Increase Font Size',
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.remove,
                color: Colors.black,
              ),
              tooltip: 'Decrease Font Size',
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.format_align_left,
                color: Colors.black,
              ),
              tooltip: 'Align Left',
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.format_align_center,
                color: Colors.black,
              ),
              tooltip: 'Align Center',
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.format_align_right,
                color: Colors.black,
              ),
              tooltip: 'Align Right',
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.format_bold,
                color: Colors.black,
              ),
              tooltip: 'Bold Text',
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.format_italic,
                color: Colors.black,
              ),
              tooltip: 'Italic Text',
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.space_bar,
                color: Colors.black,
              ),
              tooltip: 'Add New Line',
            ),
          ],
        ),
      ),
    );
