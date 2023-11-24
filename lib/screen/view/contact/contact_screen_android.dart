import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "Contact List",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                      child: Text(
                    "copy",
                    style: TextStyle(fontSize: 20),
                  )),
                  PopupMenuItem(
                      child: Text(
                    "Share",
                    style: TextStyle(fontSize: 20),
                  )),
                  PopupMenuItem(
                      child: Text(
                    "Favorite",
                    style: TextStyle(fontSize: 20),
                  )),
                  PopupMenuItem(
                      child: Text(
                    "Edit",
                    style: TextStyle(fontSize: 20),
                  )),
                ];
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(6),
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade300,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 15),
                      Text(
                        "Search",
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue.shade500,
                    child: Text(
                      "D",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "David Gomez",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("91+ 13645 55765", style: TextStyle(fontSize: 17)),
                    ],
                  ),
                  trailing: Icon(Icons.phone),
                  onTap: () {
                    Navigator.pushNamed(context, 'information');
                  },
                ),
                SizedBox(height: 20),
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.orange,
                    child: Text(
                      "K",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kate Bell",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("91+ 45724 12357", style: TextStyle(fontSize: 17)),
                    ],
                  ),
                  trailing: Icon(Icons.phone),
                  onTap: () {
                    Navigator.pushNamed(context, 'information');
                  },
                ),
                SizedBox(height: 20),
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.green,
                    child: Text(
                      "A",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Anna Hero",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("91+ 13645 55765", style: TextStyle(fontSize: 17)),
                    ],
                  ),
                  trailing: Icon(Icons.phone),
                  onTap: () {
                    Navigator.pushNamed(context, 'information');
                  },
                ),
                SizedBox(height: 20),
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.pink,
                    child: Text(
                      "T",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Taylor Swift",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("91+ 23576 97890", style: TextStyle(fontSize: 17)),
                    ],
                  ),
                  trailing: Icon(Icons.phone),
                  onTap: () {
                    Navigator.pushNamed(context, 'information');
                  },
                ),
                SizedBox(height: 20),
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.purple,
                    child: Text(
                      "Z",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hank M.Zakroff",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("91+ 13645 55765", style: TextStyle(fontSize: 17)),
                    ],
                  ),
                  trailing: Icon(Icons.phone),
                  onTap: () {
                    Navigator.pushNamed(context, 'information');
                  },
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  height: MediaQuery.sizeOf(context).height * 0.18,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "Do You want To Add Contact?",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                              ),
                              child: Text(
                                "Yes",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                          SizedBox(width: 20),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                              ),
                              child: Text(
                                "No",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
