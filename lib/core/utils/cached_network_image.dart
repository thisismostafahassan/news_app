import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

CachedNetworkImage myCachedNetworkImage(
    {required String imageUrl, required Widget placeHolder}) {
  return CachedNetworkImage(
    imageUrl: imageUrl,
    placeholder: (context, url) => placeHolder,
    errorWidget: (context, url, error) => Icon(Icons.error),
  );
}
