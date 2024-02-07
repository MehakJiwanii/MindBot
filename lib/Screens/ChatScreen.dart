import 'package:chatbot/Screens/NavBar.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController _messageController = TextEditingController();
  List<ChatMessage> messages = [];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Navigate to the NavbarScreen when the back button is pressed
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => NavBar(
                    displayName: '',
                    email: '',
                  )),
        );
        return false; // Prevents default behavior (popping the route)
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, // Remove default back arrow icon
          backgroundColor: Color(0xFF343A48),
          title: Text('ChatBot'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) => messages[index],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: GradientBoxBorder(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFFF69170),
                              Color(0xFF7D96E6),
                            ],
                          ),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      ),
                      child: TextField(
                        controller: _messageController,
                        decoration: InputDecoration(
                          hintText: 'Type a message...',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  MaterialButton(
                    onPressed: () {
                      sendMessage();
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0),
                    ),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFF69170),
                            Color(0xFF7D96E6),
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      ),
                      child: Container(
                        constraints: BoxConstraints(
                          minWidth: 85.0,
                          minHeight: 42.0,
                        ),
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void sendMessage() {
    String message = _messageController.text;
    _messageController.clear();

    // Add the user's message to the chat
    setState(() {
      messages.add(ChatMessage(
        text: message,
        isUser: true,
      ));
    });

    // Send the message to the Flask API
    sendMessageToFlask(message).then((response) {
      // Add the API response to the chat
      setState(() {
        messages.add(ChatMessage(
          text: response,
          isUser: false,
        ));
      });
    });
  }
}

class ChatMessage extends StatelessWidget {
  final String text;
  final bool isUser;

  ChatMessage({required this.text, required this.isUser});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Align(
        alignment: isUser ? Alignment.topRight : Alignment.topLeft,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: isUser ? Color(0xFFF69170) : Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isUser ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

Future<String> sendMessageToFlask(String message) async {
  final response = await http.post(
    Uri.parse('https://api.cohere.ai/v1/chat'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      "Authorization": "Bearer fhjc1GUJR2j8IG89k8btRQcHt2ex5bVpDw9h7F9P"
    },
    body: jsonEncode(<String, String>{
      'message': message,
    }),
  );

  if (response.statusCode == 200) {
    print(jsonDecode(response.body)['text']);
    return jsonDecode(response.body)['text'];
  } else {
    throw Exception('Failed to load response');
  }
}
