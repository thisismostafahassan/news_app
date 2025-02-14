import 'package:flutter/material.dart';

class CustomeCircularIndicator extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  const CustomeCircularIndicator({super.key, required this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
