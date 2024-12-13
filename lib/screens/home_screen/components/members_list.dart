import 'package:chat_app_ui/constants/dummy_message_data.dart';
import 'package:chat_app_ui/modal/message_data.dart';
import 'package:chat_app_ui/notifier/search_list_change_notifier_provider.dart';
import 'package:chat_app_ui/screens/chat_screen/chat_screen.dart';
import 'package:chat_app_ui/screens/home_screen/components/chat_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MembersList extends ConsumerWidget {
  const MembersList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filterdData = ref.watch(searchListChangeNotifierProvider);
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
          right: 15,
          // bottom: 50,
        ),
        child: filterdData.searchQuery.isNotEmpty &&
                filterdData.filteredSearch.isEmpty
            ? Text("Search Not Found")
            : ListView.builder(
                itemCount: filterdData.filteredSearch.isNotEmpty
                    ? filterdData.filteredSearch.length
                    : userList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return ChatScreen(
                              userList: filterdData.filteredSearch.isNotEmpty
                                  ? filterdData.filteredSearch[index]
                                  : userList[index],
                            );
                          },
                        ),
                      );
                    },
                    child: filterdData.filteredSearch.isNotEmpty
                        ? chatItems(
                            filterdData.filteredSearch[index].name,
                            filterdData.filteredSearch[index].lastMessage,
                            filterdData
                                .filteredSearch[index].unreadMessageCount,
                            filterdData.filteredSearch[index].lastTime,
                            filterdData.filteredSearch[index].isOnline,
                            isSeenByOther:
                                filterdData.filteredSearch[index].isSeenByOther,
                            isSentByU:
                                filterdData.filteredSearch[index].isSentByU,
                            imgName: filterdData.filteredSearch[index].imgName,
                          )
                        : chatItems(
                            userList[index].name,
                            userList[index].lastMessage,
                            userList[index].unreadMessageCount,
                            userList[index].lastTime,
                            userList[index].isOnline,
                            isSeenByOther: userList[index].isSeenByOther,
                            isSentByU: userList[index].isSentByU,
                            imgName: userList[index].imgName,
                          ),
                  );
                }),
      ),
    );
  }
}

class UserList {
  final String name;
  final String lastMessage;
  final int unreadMessageCount;
  final bool isOnline;
  final String lastTime;
  final bool isSentByU;
  final bool isSeenByOther;
  final String imgName;
  final List<MessageData> listChat;

  UserList({
    required this.name,
    required this.lastMessage,
    required this.unreadMessageCount,
    required this.isOnline,
    required this.lastTime,
    this.isSeenByOther = false,
    this.isSentByU = false,
    required this.imgName,
    required this.listChat,
  });
}
