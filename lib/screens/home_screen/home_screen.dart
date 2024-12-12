import 'package:chat_app_ui/constants/colors.dart';
import 'package:chat_app_ui/constants/dummy_message_data.dart';
import 'package:chat_app_ui/notifier/search_list_change_notifier_provider.dart';
import 'package:chat_app_ui/screens/home_screen/components/members_list.dart';
import 'package:chat_app_ui/services/searching.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColors.yellowCol,
        title: Text("ChatMe"),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Flexible(
                        child: TextFormField(
                          onChanged: (v) {
                            searchUsers(v, userList, ref);
                          },
                          decoration: InputDecoration(
                            hintText: "Search Message or Name",
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 16),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(40)),
                            suffixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                      //
                    ],
                  ),
                ),
                SizedBox(height: 22),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                    right: 15,
                  ),
                  child: Text(
                    "Messages",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.2,
                      fontSize: 16,
                      height: 1.2,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                MemebersList(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
