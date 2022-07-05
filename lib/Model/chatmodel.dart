class ChatBoxList {
  String imagepath;
  String fromPerson;
  String orderno;
  String dateandtime;
  ChatBoxList({
    required this.imagepath,
    required this.fromPerson,
    required this.orderno,
    required this.dateandtime,
  });
}

List<ChatBoxList> chatboxlisttile = [
  ChatBoxList(
      imagepath: "",
      fromPerson: 'Kaana support',
      orderno: 'You: order 351',
      dateandtime: "Nov 11, 11:41 AM"),
];
