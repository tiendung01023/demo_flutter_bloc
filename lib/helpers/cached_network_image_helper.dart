import 'package:flutter/material.dart';

class CachedNetworkImageHelper {
  CachedNetworkImageHelper._();

  static Widget placeholder() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  static Widget error() {
    return const Center(
      child: Icon(Icons.panorama),
    );
  }
}
