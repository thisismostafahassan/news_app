import 'package:flutter/material.dart';

SliverAppBar theAppBar({required VoidCallback onTap}) {
  return SliverAppBar(
    leading: GestureDetector(onTap: onTap),
    centerTitle: true,
    elevation: 0.0,
    floating: true,
    pinned: true,
    title: GestureDetector(
      onTap: onTap,
      child: Text.rich(
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
    ),
  );
}
