import 'package:flutter/material.dart';

var height = 0.0, width = 0.0;
var defaultPadding = 0;
BoxDecoration circularEdge = BoxDecoration(
  borderRadius: BorderRadius.circular(50),
);

TextStyle basicText(context) {
  return Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: Colors.white,
      fontFamily: 'RobotoC',
      fontSize: 16,
    );

} 