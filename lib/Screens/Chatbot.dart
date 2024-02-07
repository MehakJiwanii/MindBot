import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CombinedChatScreen extends StatefulWidget {
  @override
  _CombinedChatScreenState createState() => _CombinedChatScreenState();
}

class _CombinedChatScreenState extends State<CombinedChatScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  TextEditingController _messageController = TextEditingController();
  List<String> chatHistory = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  Future<void> _sendMessage(String message, String apiUrl) async {
    try {
      final response = await http.get(Uri.parse(apiUrl + Uri.encodeComponent(message)));

      if (response.statusCode == 200) {
        String botResponse = response.body;
        setState(() {
          chatHistory.add("You: $message");
          chatHistory.add("Bot: $botResponse");
        });
      } else {
        print("Error: ${response.statusCode}");
        // Handle other status codes if needed
      }
    } catch (e) {
      print("Error: $e");
      // Handle the error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Combined Chatbot'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Bot 1'),
            Tab(text: 'Bot 2'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildChatBotView(
            apiUrl: 'https://api.cohere.ai/v1/chat',
          ),
          _buildChatBotView(
            apiUrl: 'http://192.168.43.181:5000/predict?user_input=',
          ),
        ],
      ),
    );
  }

  Widget _buildChatBotView({required String apiUrl}) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: chatHistory.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(chatHistory[index]),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _messageController,
                  decoration: InputDecoration(hintText: 'Type a message...'),
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  String message = _messageController.text.trim();
                  if (message.isNotEmpty) {
                    _sendMessage(message, apiUrl);
                    _messageController.clear();
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
