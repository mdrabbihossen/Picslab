import 'package:flutter/material.dart';

FloatingActionButton  addNewTextFAB({VoidCallback? onPressed}) => FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: Colors.white,
      tooltip: 'Add New Text',
      child: Icon(
        Icons.edit,
        color: Colors.black,
      ),
    );
