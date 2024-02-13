import 'package:flutter/material.dart';

class MailMsg extends StatefulWidget {
  const MailMsg({super.key});

  @override
  State<StatefulWidget> createState() => _MailMsgState();
}

class _MailMsgState extends State<MailMsg> {
  var messages = const [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemCount: messages.length,
          separatorBuilder: (context, index) => const Divider(
                color: Colors.transparent,
              ),
          itemBuilder: (BuildContext context, int index) {
            var message = messages[index];
            return ListTile(
              leading: CircleAvatar(child: Text("A")),
              title: Text(message['subject'].toString()),
              subtitle: Text(
                message['body'].toString(),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            );
          }),
    );
  }
}
