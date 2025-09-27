
  import 'package:flutter/material.dart';

void buildErrorBar(BuildContext context, String msg) {
     ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg) , backgroundColor: Colors.red,)
    );
  }