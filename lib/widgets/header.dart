import 'package:flutter/material.dart';

header(context, {bool isAppTitle = false, required String titleText}) {
  return AppBar(
    title: Text(
      isAppTitle ? 'ChuksShare' : titleText,
      style: TextStyle(
        color: Colors.white,
        fontSize: isAppTitle ? 50 : 22,
        fontFamily: isAppTitle ? "Signatra" : '',
      ),
    ),
    centerTitle: true,
    backgroundColor: Theme.of(context).accentColor,
  );
}
