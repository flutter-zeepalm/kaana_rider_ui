import 'package:flutter/material.dart';
import 'package:kaana_rider/Model/chatmodel.dart';
import 'package:kaana_rider/data/data.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class ChatBoxListTile extends StatelessWidget {
  final ChatBoxList chatBoxList;
  const ChatBoxListTile({
    Key? key,
    required this.chatBoxList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage(CustomAssets.accountdp),
      ),
      title: CustomText(
          text: chatBoxList.fromPerson, //"Kaana support",
          textStyle: kHeadingStyle,
          color: CustomColor.ktextcolor,
          fontWeight: kSemiBoldFontWeight),
      subtitle: CustomText(
          text: chatBoxList.orderno, //"You: order 351",
          textStyle: ksmallTextStyle,
          color: CustomColor.ksubtextColor,
          fontWeight: kRegularWeight),
      trailing: CustomText(
          text: chatBoxList.dateandtime, //"Nov 11, 11:41 AM",
          textStyle: ksmallTextStyle,
          color: CustomColor.ksubtextColor,
          fontWeight: kRegularWeight),
    );
  }
}
