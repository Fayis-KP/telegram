import 'package:flutter/material.dart';
import 'chat.dart';
// Import your ChatScreen

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, dynamic>> chatData = [
    {
      'name': 'Alice',
      'profileImage': 'assets/name.jpeg',
      'unreadMessages': 0,
      'lastSeen': '2:33 PM',
      'lastRead': 'Hey, are you coming to the party?',
    },
    {
      'name': 'Grace',
      'profileImage': 'assets/name5.png',
      'unreadMessages': 8,
      'lastSeen': '1:50 PM',
      'lastRead': 'Can you pick up the kids today?',
    },
    {
      'name': 'Leo',
      'profileImage': 'assets/name5.png',
      'unreadMessages': 0,
      'lastSeen': '1:01 PM',
      'lastRead': 'Are we still on for dinner?',
    },
    {
      'name': 'Karen',
      'profileImage': 'assets/name4.png',
      'unreadMessages': 10,
      'lastSeen': '9:48 PM',
      'lastRead': 'Happy Birthday! 🎉',
    },
    {
      'name': 'Mia',
      'profileImage': 'assets/name1.png',
      'unreadMessages': 7,
      'lastSeen': 'yesterday',
      'lastRead': 'Thanks for your help!',
    },
    {
      'name': 'Bob',
      'profileImage': 'assets/name.png',
      'unreadMessages': 5,
      'lastSeen': 'yesterday',
      'lastRead': 'Don’t forget to bring the documents.',
    },
    {
      'name': 'Henry',
      'profileImage': 'assets/name1.png',
      'unreadMessages': 6,
      'lastSeen': 'yesterday',
      'lastRead': 'The meeting has been rescheduled.',
    },
    {
      'name': 'Quinn',
      'profileImage': 'assets/name1.png',
      'unreadMessages': 0,
      'lastSeen': 'yesterday',
      'lastRead': 'Good luck with your presentation!',
    },
    {
      'name': 'Charlie',
      'profileImage': 'assets/name1.png',
      'unreadMessages': 0,
      'lastSeen': '01.05.23',
      'lastRead': 'I’ll call you later today.',
    },
    {
      'name': 'David',
      'profileImage': 'assets/name2.png',
      'unreadMessages': 11,
      'lastSeen': '25.04.23',
      'lastRead': 'Can you send me the report?',
    },
    {
      'name': 'Eve',
      'profileImage': 'assets/name3.png',
      'unreadMessages': 3,
      'lastSeen': '20.04.23',
      'lastRead': 'I’m running late, see you soon.',
    },
    {
      'name': 'Frank',
      'profileImage': 'assets/name4.png',
      'unreadMessages': 0,
      'lastSeen': '10.04.23',
      'lastRead': 'Let’s catch up over coffee.',
    },
    {
      'name': 'Ivy',
      'profileImage': 'assets/name2.png',
      'unreadMessages': 1,
      'lastSeen': '09.04.23',
      'lastRead': 'I’m excited about our trip!',
    },
    {
      'name': 'Jack',
      'profileImage': 'assets/name3.png',
      'unreadMessages': 4,
      'lastSeen': '02.04.23',
      'lastRead': 'Did you get my email?',
    },



    {
      'name': 'Nina',
      'profileImage': 'assets/name5.png',
      'unreadMessages': 0,
      'lastSeen': '03.03.23',
      'lastRead': 'Let’s plan the project details.',
    },
    {
      'name': 'Oscar',
      'profileImage': 'assets/name3.png',
      'unreadMessages': 9,
      'lastSeen': '05.02.23',
      'lastRead': 'I’ll be there in 10 minutes.',
    },
    {
      'name': 'Paul',
      'profileImage': 'assets/name4.png',
      'unreadMessages': 1,
      'lastSeen': '25.01.23',
      'lastRead': 'Did you complete the assignment?',
    },
    {
      'name': 'Steve',
      'profileImage': 'assets/name2.png',
      'unreadMessages': 12,
      'lastSeen': '20.01.23',
      'lastRead': 'Let me know if you need anything.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1d2733),
        appBar: AppBar(
          backgroundColor: Color(0xff252d3a),
          elevation: 0,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.menu, color: Colors.white),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          title: Text('Telegram', style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {
                // Handle search action
              },
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Color(0xff1c242f),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xff233040),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/name4.png'),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'User Name',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '+1234567890',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                          Row(
                            children: [
                              Spacer(),
                              Icon(Icons.keyboard_arrow_down, color: Colors.white),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.person, color: Colors.white),
                title: Text('My Profile', style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.group, color: Colors.white),
                title: Text('New Group',
                  style: TextStyle(
                    color: Colors.white,


                  ),),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.contacts, color: Colors.white),
                title: Text('Contacts',
                  style: TextStyle(
                    color: Colors.white,


                  ),),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.call, color: Colors.white),
                title: Text('Calls',
                  style: TextStyle(
                    color: Colors.white,


                  ),),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.location_on, color: Colors.white),
                title: Text('People Nearby',
                  style: TextStyle(
                    color: Colors.white,


                  ),),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.bookmark, color: Colors.white),
                title: Text('Saved Messages',
                  style: TextStyle(
                    color: Colors.white,


                  ),),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.white),
                title: Text('Settings',
                  style: TextStyle(
                    color: Colors.white,


                  ),),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.person_add, color: Colors.white),
                title: Text('Invite Friends',
                  style: TextStyle(
                    color: Colors.white,


                  ),),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.info, color: Colors.white),
                title: Text('Telegram Features',
                  style: TextStyle(
                    color: Colors.white,


                  ),),
                onTap: () {},
              ),
              // Add other ListTiles
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: chatData.length,
          itemBuilder: (context, index) {
            final chat = chatData[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(chat['profileImage']),
              ),
              title: Text(
                chat['name'],
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                chat['lastRead'],
                style: TextStyle(color: Color(0xff85adc7)),
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    chat['lastSeen'],
                    style: TextStyle(color: Colors.white70),
                  ),
                  if (chat['unreadMessages'] > 0)
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: Color(0xff415065),
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        '${chat['unreadMessages']}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatScreen(
                      name: chat['name'],
                      profileImage: chat['profileImage'],
                    ),
                  ),
                );
              },
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Handle new chat action
          },
          backgroundColor: Colors.blue,
          child: Icon(Icons.edit, color: Colors.white),
        ),
      ),
    );
  }
}
