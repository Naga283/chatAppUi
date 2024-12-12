import 'package:chat_app_ui/constants/colors.dart';
import 'package:flutter/material.dart';

Widget buildInput() {
  return Container(
    width: double.infinity,
    height: 60.0,
    decoration: BoxDecoration(color: Colors.white),
    child: Row(
      children: <Widget>[
        // Edit text
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[300]?.withOpacity(0.6) ?? Colors.red,
                      blurRadius: 2,
                      spreadRadius: 4)
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  50,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Icon(Icons.attach_file, color: Colors.grey),
                    SizedBox(width: 4),
                    Flexible(
                      child: TextField(
                        style: TextStyle(color: Colors.black, fontSize: 15.0),
                        decoration: InputDecoration(
                          // hasFloatingPlaceholder: false,
                          border: InputBorder.none,
                          hintText: 'Type your message...',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Icon(
                        Icons.mic,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Icon(
                        Icons.send,
                        color: appColors.yellowCol.shade900,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
