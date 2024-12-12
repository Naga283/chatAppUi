import 'package:intl/intl.dart';

String convertTo12HourFormat(String isoDateTime) {
  // Parse the ISO 8601 date-time string
  DateTime dateTime = DateTime.parse(isoDateTime);

  // Format the DateTime object to the required format (12-hour format with AM/PM)
  String formattedDateTime = DateFormat('yyyy-MM-dd hh:mm a').format(dateTime);

  return formattedDateTime;
}
