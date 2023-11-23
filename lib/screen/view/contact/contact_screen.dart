import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Row(
          children: [
            Icon(CupertinoIcons.back),
            Text(
              "Lists",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoButton(
                child: Icon(Icons.add),
                onPressed: () {
                  showCupertinoModalPopup(
                    context: context,
                    builder: (context) {
                      return CupertinoActionSheet(
                        title: Text("you want to add contact?",style: TextStyle(fontSize: 20),),

                        actions: [
                          CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Yes'),
                            isDefaultAction: true,
                          ),
                          CupertinoActionSheetAction(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('No',style: TextStyle(color: Colors.red),),
                              isDefaultAction: false),
                        ],
                        cancelButton: CupertinoActionSheetAction(
                          onPressed: () {
                            Navigator.pop(context);
                          },child: Text("cancel"),
                        ),
                      );
                    },
                  );
                }),
            CupertinoButton(child: Icon(CupertinoIcons.calendar), onPressed: () {

              },),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 90),
              const Text(
                "Contacts",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const CupertinoSearchTextField(),
              const SizedBox(height: 35),
              const Text(
                "A",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'info');
                },
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        "John",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "  Appleseed",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 35),
              const Text(
                "B",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'info');
                },
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        "Kate",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "  Bell",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 35),
              const Text(
                "H",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'info');
                },
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        "Anna",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        " Haro",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'info');
                },
                child: Container(
                  color: Colors.white,
                  child: const Row(
                    children: [
                      Text(
                        "David",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        " Higgins",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 35),
              const Divider(
                thickness: 2,
              ),
              const Text(
                "T",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'info');
                },
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        "Denish",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        " Taylor",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 35),
              const Divider(
                thickness: 2,
              ),
              const Text(
                "Z",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'info');
                },
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        "Hank M.",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        " Zakroff",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
*  CupertinoActionSheet(
            title: Text("you want to add contact?"),
            actions: [
              CupertinoActionSheetAction(onPressed: () {}, child: Text('thing 1'),
                isDefaultAction: true,),
              CupertinoActionSheetAction(onPressed: () {

              }, child: Text('thing 1'),
                  isDefaultAction: false),
            ],
          );*/
