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
            Tooltip(
              message: 'Red',
              child: GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                ),
              ),
            ),
            SizedBox(width: 5),
            Tooltip(
              message: 'White',
              child: GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            SizedBox(width: 5),
            Tooltip(
              message: 'Black',
              child: GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                ),
              ),
            ),
            SizedBox(width: 5),
            Tooltip(
              message: 'Blue',
              child: GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
              ),
            ),
            SizedBox(width: 5),
            Tooltip(
              message: 'Yellow',
              child: GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  backgroundColor: Colors.yellow,
                ),
              ),
            ),
            SizedBox(width: 5),
            Tooltip(
              message: 'Green',
              child: GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                ),
              ),
            ),
            SizedBox(width: 5),
            Tooltip(
              message: 'Orange',
              child: GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  backgroundColor: Colors.orange,
                ),
              ),
            ),
            SizedBox(width: 5),
            Tooltip(
              message: 'Pink',
              child: GestureDetector(
                onTap: () {},
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
