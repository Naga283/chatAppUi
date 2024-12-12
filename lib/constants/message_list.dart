// class MessageData {
//   final bool sendByU;
//   final String message;
//   final String dateTime;

//   MessageData({
//     required this.sendByU,
//     required this.message,
//     required this.dateTime,
//   });
// }

//Conversations
import 'package:chat_app_ui/modal/message_data.dart';

List<MessageData> conversation1 = [
  MessageData(
    sendByU: true,
    message: "Hey, How's the project coming along?",
    dateTime: "2024-12-11T08:45:00",
  ),
  MessageData(
    sendByU: true,
    message: "Hi",
    dateTime: "2024-12-11T08:45:00",
  ),
  MessageData(
    sendByU: false,
    message:
        "Hey, It's going well, just a bit of fine-tuning left. How about you?",
    dateTime: "2024-12-11T08:47:15",
  ),
  MessageData(
    sendByU: true,
    message: "Same here. Trying to wrap things up. Should we catch up later?",
    dateTime: "2024-12-11T08:50:30",
  ),
  MessageData(
    sendByU: false,
    message: "Sure! Let's sync up after lunch.",
    dateTime: "2024-12-11T08:52:00",
  ),
];

List<MessageData> conversation2 = [
  MessageData(
    sendByU: true,
    message: " you seen the new movie everyone is talking about?",
    dateTime: "2024-12-11T09:05:12",
  ),
  MessageData(
    sendByU: false,
    message: "I haven’t yet! I heard it’s amazing. Is it worth watching?",
    dateTime: "2024-12-11T09:07:50",
  ),
  MessageData(
    sendByU: true,
    message:
        "Definitely! The plot twist was insane. You should watch it this weekend!",
    dateTime: "2024-12-11T09:10:25",
  ),
  MessageData(
    sendByU: true,
    message: "Sounds like I need to see it! I’ll plan for Saturday.",
    dateTime: "2024-12-11T09:12:00",
  ),
];

List<MessageData> conversation3 = [
  MessageData(
    sendByU: true,
    message: "You have the report from last week?",
    dateTime: "2024-12-11T10:00:00",
  ),
  MessageData(
    sendByU: false,
    message: "Yes, I do! I’ll send it over shortly. Anything else you need?",
    dateTime: "2024-12-11T10:02:30",
  ),
  MessageData(
    sendByU: true,
    message: "That’s all for now. Thanks!",
    dateTime: "2024-12-11T10:04:00",
  ),
  MessageData(
    sendByU: false,
    message: "You're welcome! Let me know if you need anything else.",
    dateTime: "2024-12-11T10:05:15",
  ),
];

List<MessageData> conversation4 = [
  MessageData(
    sendByU: true,
    message: "Aare we still on for the meeting at 3?",
    dateTime: "2024-12-11T11:00:30",
  ),
  MessageData(
    sendByU: false,
    message: "Yes, we are! I’ll send the agenda shortly.",
    dateTime: "2024-12-11T11:03:10",
  ),
  MessageData(
    sendByU: true,
    message: "Great! I’ll be ready.",
    dateTime: "2024-12-11T11:05:00",
  ),
  MessageData(
    sendByU: true,
    message: "Perfect, see you then!",
    dateTime: "2024-12-11T11:07:00",
  ),
];

List<MessageData> conversation5 = [
  MessageData(
    sendByU: true,
    message: "Did you get the email I sent?",
    dateTime: "2024-12-11T12:15:45",
  ),
  MessageData(
    sendByU: false,
    message:
        "Yes, I just saw it. I'll go through it now and get back to you in an hour.",
    dateTime: "2024-12-11T12:17:20",
  ),
  MessageData(
    sendByU: true,
    message: "Sounds good, thank you!",
    dateTime: "2024-12-11T12:19:00",
  ),
  MessageData(
    sendByU: true,
    message: "You're welcome! Let me know if you need any more info.",
    dateTime: "2024-12-11T12:20:40",
  ),
];

List<MessageData> conversation6 = [
  MessageData(
    sendByU: true,
    message: "How was your weekend?",
    dateTime: "2024-12-11T13:00:00",
  ),
  MessageData(
    sendByU: false,
    message:
        "It was amazing! Went on a road trip with friends. How about yours?",
    dateTime: "2024-12-11T13:02:30",
  ),
  MessageData(
    sendByU: true,
    message: "I stayed in, just relaxed. Sounds like your weekend was fun!",
    dateTime: "2024-12-11T13:05:00",
  ),
  MessageData(
    sendByU: false,
    message: "It definitely was! You should join us next time!",
    dateTime: "2024-12-11T13:07:10",
  ),
];
