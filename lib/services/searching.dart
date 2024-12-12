// Search function to filter users based on name or last message
import 'package:chat_app_ui/notifier/search_list_change_notifier_provider.dart';
import 'package:chat_app_ui/screens/home_screen/components/members_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

List<UserList> searchUsers(String query, List<UserList> users, WidgetRef ref) {
  query = query.toLowerCase(); // Make search case-insensitive
  final filtersList = users.where((user) {
    return user.name.toLowerCase().contains(query) ||
        user.lastMessage.toLowerCase().contains(query);
  }).toList();
  ref
      .read(searchListChangeNotifierProvider)
      .addfilterdSearch(filtersList, query);
  // Filter users by name or last message
  return filtersList;
}
