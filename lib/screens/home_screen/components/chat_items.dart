import 'package:chat_app_ui/constants/colors.dart';
import 'package:flutter/material.dart';

Widget chatItems(
  name,
  message,
  unreadMessageCount,
  unreadMessageTime,
  online, {
  bool isSentByU = false,
  bool isSeenByOther = false,
  required String imgName,
}) {
  return SizedBox(
    height: 80,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            ImageWidget(
              imgName: imgName,
            ),
            online
                ? Positioned(
                    right: 2,
                    bottom: 4,
                    child: Container(
                      height: 14,
                      width: 14,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1,
                              color: Colors.white,
                              spreadRadius: 2)
                        ],
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 0,
            right: 0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 17,
                  height: 1.1,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  isSentByU
                      ? Padding(
                          padding: const EdgeInsets.only(right: 3.0),
                          child: Icon(
                            Icons.done_all_outlined,
                            size: 20,
                            color: isSeenByOther ? Colors.green : null,
                          ),
                        )
                      : SizedBox.shrink(),
                  SizedBox(
                    width: 180,
                    child: Text(
                      message,
                      maxLines: 1,
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: 70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                ),
                child: Text(
                  unreadMessageTime,
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
              unreadMessageCount > 0
                  ? Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [
                              appColors.yellowCol.shade200,
                              appColors.yellowCol.shade800,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                      ),
                      child: Center(
                        child: Text(
                          unreadMessageCount.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ],
    ),
  );
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.imgName,
    this.radius,
    this.width,
    this.height,
  });
  final String imgName;
  final double? radius;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius ?? 25,
      child: ClipOval(
        child: Image.asset(
          imgName,
          fit: BoxFit.cover,
          width: width ?? 60,
          height: height ?? 60,
        ),
      ),
    );
  }
}
