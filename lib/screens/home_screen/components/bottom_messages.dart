import 'package:flutter/material.dart';

class BottomRow extends StatelessWidget {
  const BottomRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16, top: 12, right: 8),
          child: Column(
            children: [
              Icon(Icons.home, color: Colors.grey.shade400),
              SizedBox(height: 3),
              Text(
                "Home",
                style: TextStyle(
                  color: Colors.grey.shade400,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16, top: 12, right: 8),
          child: Column(
            children: [
              Icon(Icons.supervisor_account, color: Colors.grey.shade400),
              SizedBox(height: 3),
              Text(
                "Friends",
                style: TextStyle(
                  color: Colors.grey.shade400,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16, top: 12, right: 8),
          child: Column(
            children: [
              Icon(Icons.message, color: Colors.green.shade600),
              SizedBox(height: 3),
              Text(
                "Messages",
                style: TextStyle(
                  color: Colors.green.shade600,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16, top: 12, right: 8),
          child: Column(
            children: [
              Icon(Icons.settings, color: Colors.grey.shade400),
              SizedBox(height: 3),
              Text(
                "Settings",
                style: TextStyle(
                  color: Colors.grey.shade400,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
