import 'package:flutter/material.dart';
import 'package:kaana_rider/data/data.dart';

class ChatBoxTextFeild extends StatelessWidget {
  final String hinttext;
  final TextEditingController controller;
  const ChatBoxTextFeild({
    Key? key,
    required this.hinttext,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.next,
      controller: controller,
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: kHeadingStyle.copyWith(
            color: CustomColor.ksubtextColor, fontWeight: kRegularWeight),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: CustomColor.ksubtextColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: CustomColor.ksubtextColor),
        ),
      ),
    );
  }
}
