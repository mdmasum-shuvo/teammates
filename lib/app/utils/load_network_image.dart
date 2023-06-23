import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

Widget loadNetworkImage(String img) {
  return CachedNetworkImage(
    fit: BoxFit.cover,
    imageUrl: img,
    placeholder: (context, url) => const Padding(
      padding: EdgeInsets.all(5),
      child: SpinKitCircle(
        color: Colors.black,
        size: 30.0,
      ),
    ),
    errorWidget: (context, url, error) => const Icon(Icons.error),
  );
}
