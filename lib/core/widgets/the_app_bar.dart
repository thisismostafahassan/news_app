import 'package:flutter/material.dart';

PreferredSizeWidget theAppBar() {
  return AppBar(
    centerTitle: true,
    elevation: 0.0,
    title: Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'News',
            style: TextStyle(color: Colors.blueGrey),
          ),
          TextSpan(
            text: 'App',
            style: TextStyle(color: Colors.orange),
          ),
        ],
      ),
    ),
  );
}
