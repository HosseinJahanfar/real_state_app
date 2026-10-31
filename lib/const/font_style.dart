import 'package:flutter/material.dart';


TextStyle getCaptionsStyle(BuildContext context, {Color? color, FontWeight? fontWeight}) {
  return TextStyle(
    fontSize: 12,
    fontFamily:fontWeight ==null? 'regular': 'bold',
    fontWeight: fontWeight ?? FontWeight.normal,
    color: color ?? Colors.black,
  );
}

TextStyle getSmallBodyStyle(BuildContext context, {Color? color, FontWeight? fontWeight}) {
  return TextStyle(
    fontSize: 14,
     fontFamily:fontWeight ==null? 'regular': 'bold',
    fontWeight: fontWeight ?? FontWeight.normal,

    color: color ?? Colors.black,
  );
}

TextStyle getBodyStyle(BuildContext context, {Color? color, FontWeight? fontWeight}) {
  return TextStyle(
    fontSize: 16,
     fontFamily:fontWeight ==null? 'regular': 'bold',
    fontWeight: fontWeight ?? FontWeight.normal,
    color: color ?? Colors.black,
  );
}

TextStyle getLargeBodyStyle(BuildContext context, {Color? color, FontWeight? fontWeight}) {
  return TextStyle(
    fontSize: 18,
     fontFamily:fontWeight ==null? 'regular': 'bold',
    fontWeight: fontWeight ?? FontWeight.normal,
    color: color ?? Colors.black,
  );
}

TextStyle getSmallTitleStyle(BuildContext context, {Color? color, FontWeight? fontWeight}) {
  return TextStyle(
    fontSize: 20,
     fontFamily:fontWeight ==null? 'regular': 'bold',
    fontWeight: fontWeight ?? FontWeight.normal,
    color: color ?? Colors.black,
  );
}

TextStyle getTitleStyle(BuildContext context, {Color? color, FontWeight? fontWeight}) {
  return TextStyle(
    fontSize: 22,
     fontFamily:fontWeight ==null? 'regular': 'bold',
    fontWeight: fontWeight ?? FontWeight.normal,
    color: color ?? Colors.black,
  );
}

TextStyle getLargeTitleStyle(BuildContext context, {Color? color, FontWeight? fontWeight}) {
  return TextStyle(
    fontSize: 24,
     fontFamily:fontWeight ==null? 'regular': 'bold',
    fontWeight: fontWeight ?? FontWeight.normal,
    color: color ?? Colors.black,
  );
}
TextStyle getHeadStyle(BuildContext context, {Color? color, FontWeight? fontWeight}) {
  return TextStyle(
    fontSize: 96,
     fontFamily:fontWeight ==null? 'regular': 'bold',
    fontWeight: fontWeight ?? FontWeight.normal,
    color: color ?? Colors.black,
  );
}
