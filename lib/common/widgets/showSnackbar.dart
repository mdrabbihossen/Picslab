import 'package:flutter/material.dart';

showSnackBar({
  required BuildContext context,
  required String message,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
      duration: Duration(seconds: 3),
    ),
  );
}
