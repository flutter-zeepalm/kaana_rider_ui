import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaana_rider/data/assets_path.dart';

class OrangePointPosition extends StatelessWidget {
  final double top;
  final double left;
  final double right;
  final double bottom;
  const OrangePointPosition({
    Key? key,
    required this.top,
    required this.left,
    required this.right,
    required this.bottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      bottom: right,
      right: bottom,
      child: SizedBox(
          height: 5.h, width: 5.w, child: Image.asset(CustomAssets.orangedot)),
    );
  }
}
