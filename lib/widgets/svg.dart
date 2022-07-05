import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Svg extends StatelessWidget {
  final String imagePath;
  const Svg({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(imagePath);
  }
}