import 'package:flutter/material.dart';

SliverAppBar theAppBar() {
  return SliverAppBar(
    centerTitle: true,
    elevation: 0.0,
    floating: true,
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
