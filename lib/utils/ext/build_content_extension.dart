import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension BuildContentExtension on BuildContext {
  void showLoading(){
    showDialog(context: this, builder: (context) => Material(
      child: Center(
        child: CircularProgressIndicator(
          color: Theme.of(this).colorScheme.primary,
        ),
      ),
    ),);
  }

  void hideLoading(){
    Navigator.of(this).pop();
  }
}