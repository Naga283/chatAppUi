import 'dart:async';

import 'package:chat_app_ui/screens/chat_screen/components/message_format.dart';
import 'package:chat_app_ui/screens/chat_screen/components/send_text_input.dart';
import 'package:chat_app_ui/screens/home_screen/components/chat_items.dart';
import 'package:chat_app_ui/screens/home_screen/components/members_list.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final UserList userList;

  const ChatScreen({super.key, required this.userList});
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool showTime = false;
  ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    // /Timer is used to take the starting point of chats at the bottom
    Timer.run(() => controller.jumpTo(controller.position.maxScrollExtent));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ImageWidget(
              imgName: widget.userList.imgName,
              radius: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  widget.userList.name,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  widget.userList.isOnline
                      ? "Online"
                      : widget.userList.lastTime,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ],
        ),
      ),
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: 129,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.green.shade200,
                    borderRadius: BorderRadius.circular(
                      18,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: ListView.builder(
                              itemCount: widget.userList.listChat.length,
                              itemBuilder: (context, index) {
                                return messageFormatting(
                                  widget.userList.listChat[index].message,
                                  widget.userList.listChat[index].sendByU,
                                  context,
                                  showTime:
                                      widget.userList.listChat[index].dateTime,
                                );
                              }),
                        )
                      ],
                    ),
                  ),
                  buildInput()
                ],
              ),
            ],
          )),
    );
  }
}
