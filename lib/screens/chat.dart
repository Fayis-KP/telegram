import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final String name;
  final String profileImage;

  const ChatScreen({super.key, required this.name, required this.profileImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff252d3a),
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images.jpeg', // Replace with your background image asset
              fit: BoxFit.cover,
            ),
          ),
          // Chat content
          Column(
            children: [
              AppBar(
                title: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(profileImage),
                    ),
                    SizedBox(width: 10),
                    Text(name, style: TextStyle(color: Colors.white)),
                  ],
                ),
                backgroundColor: Color(0xff252d3a),
                actions: [
                  IconButton(
                    icon: Icon(Icons.search, color: Colors.white),
                    onPressed: () {
                      // Handle search action
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.more_vert, color: Colors.white),
                    onPressed: () {
                      // Handle more options action
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => _buildBottomSheet(context),
                      );
                    },
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  reverse: true,
                  itemCount: 2, // Replace with your messages count
                  itemBuilder: (context, index) {
                    bool isSent = index % 2 == 0;
                    return Align(
                      alignment: isSent ? Alignment.centerRight : Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: isSent ? Color(0xff1a73e8) : Color(0xff333a47),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: isSent ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                          children: [
                            Text(
                              index % 2 == 0 ? 'Hello there!' : 'How are you?',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.attach_file, color: Colors.white),
                      onPressed: () {
                        // Handle file attachment
                      },
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          hintText: 'Type a message...',
                          hintStyle: TextStyle(color: Colors.white70),
                          filled: true,
                          fillColor: Color(0xff333a47),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    IconButton(
                      icon: Icon(Icons.send, color: Colors.blue),
                      onPressed: () {
                        // Handle send action
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBottomSheet(BuildContext context) {
    return Wrap(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.info, color: Colors.black),
          title: Text('View Contact'),
          onTap: () {
            // Handle view contact
          },
        ),
        ListTile(
          leading: Icon(Icons.phone, color: Colors.black),
          title: Text('Voice Call'),
          onTap: () {
            // Handle voice call
          },
        ),
        ListTile(
          leading: Icon(Icons.video_call, color: Colors.black),
          title: Text('Video Call'),
          onTap: () {
            // Handle video call
          },
        ),
        ListTile(
          leading: Icon(Icons.delete, color: Colors.red),
          title: Text('Delete Chat'),
          onTap: () {
            // Handle delete chat
          },
        ),
      ],
    );
  }
}
