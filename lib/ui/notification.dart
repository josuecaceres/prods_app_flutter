import 'package:flutter/material.dart';

class NotificationServ {
  static GlobalKey<ScaffoldMessengerState> msgKey = GlobalKey<ScaffoldMessengerState>();

  static shoSnackBar(String message) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );

    msgKey.currentState!.showSnackBar(snackBar);
  }
}
