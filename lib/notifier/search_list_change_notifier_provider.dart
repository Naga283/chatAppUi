import 'package:chat_app_ui/screens/home_screen/components/members_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchListChangeNotifier extends ChangeNotifier {
  List<UserList> filteredSearch = [];
  String searchQuery = "";
  void addfilterdSearch(List<UserList> fileter, String searchQu) {
    print(fileter.map((e) => e.imgName));
    searchQuery = searchQu;
    filteredSearch = fileter;
    notifyListeners();
  }
}

final searchListChangeNotifierProvider =
    ChangeNotifierProvider.autoDispose<SearchListChangeNotifier>(
  (ref) => SearchListChangeNotifier(),
);
