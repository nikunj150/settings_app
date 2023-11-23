import 'package:flutter/cupertino.dart';


class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
                child: const Icon(CupertinoIcons.back)),
            const Text(
              "Contacts",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        trailing: const Text("Edit",style: TextStyle(color: CupertinoColors.activeBlue),),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 90),
             Align(
               alignment: Alignment.center,
               child: Container(
                 height: 100,
                 width: 100,
                 decoration: BoxDecoration(color: CupertinoColors.systemGrey,borderRadius: BorderRadius.circular(50)),
                 child: const Align(alignment: Alignment.center,child: Text("JA",style: TextStyle(color: CupertinoColors.white,fontSize: 33),)),
               ),
             ),
              const SizedBox(height: 10,),
              const Align(
                alignment: Alignment.center,
                  child: Text("John AppleSeed",style: TextStyle(fontSize: 30),)),
               const SizedBox(height: 30),
               const Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Icon(CupertinoIcons.chat_bubble_fill,color: CupertinoColors.activeBlue),
                   Icon(CupertinoIcons.phone_fill,color: CupertinoColors.activeGreen,),
                   Icon(CupertinoIcons.mail_solid,color: CupertinoColors.systemBlue),
                 ],
               ),
              const SizedBox(height: 40),
              const Text("mobile",style: TextStyle(fontSize: 18),),
              const SizedBox(height: 10),
              const Text("(888) 555-5512",style: TextStyle(fontSize: 20,color: CupertinoColors.systemBlue),),
              const SizedBox(height: 20,),
              const Text("home",style: TextStyle(fontSize: 18),),
              const SizedBox(height: 10),
              const Text("(888) 333-5532",style: TextStyle(fontSize: 20,color: CupertinoColors.systemBlue),),
              const SizedBox(height: 40),
              const Text("work",style: TextStyle(fontSize: 18),),
              const SizedBox(height: 9),
              const Text("johnappleseed@gmail.com",style: TextStyle(fontSize: 20,color: CupertinoColors.systemBlue),),
              const SizedBox(height: 40),
              const Text("work",style: TextStyle(fontSize: 18),),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const Text("1234 san_fraccisco\nAtlanta GA 30303\nUSA",style: TextStyle(fontSize: 20),),
                  const Spacer( ),
                  Image.asset("assets/images/map1.jpg",height: 80,width: 80,),
                ],
              ),
              const SizedBox(height: 40,),
              const Text("birthday",style: TextStyle(fontSize: 18),),
              const SizedBox(height: 10,),
              const Text("June 22,1980",style: TextStyle(fontSize: 20,color: CupertinoColors.systemBlue),),
              const SizedBox(height: 40,),
              const Text("Notes",style: TextStyle(fontSize: 18),),
              const SizedBox(height: 10,),
              const Text("College roommate",style: TextStyle(fontSize: 20),),
              const SizedBox(height: 70,),
              const Text("Send Massage",style: TextStyle(fontSize: 20,color: CupertinoColors.systemBlue),),
              const SizedBox(height: 18,),
              const Text("Share Contact",style: TextStyle(fontSize: 20,color: CupertinoColors.systemBlue),),
              const SizedBox(height: 18,),
              const Text("Add to Favorite",style: TextStyle(fontSize: 20,color: CupertinoColors.systemBlue),),
              const SizedBox(height: 50),
              const Text("Add to Emergency Contact",style: TextStyle(fontSize: 20,color: CupertinoColors.systemBlue),),
              const SizedBox(height: 30),
              const Text("Share My Contact",style: TextStyle(fontSize: 20,color: CupertinoColors.systemBlue),),
              const SizedBox(height: 30),
              const Text("Add to List",style: TextStyle(fontSize: 20,color: CupertinoColors.systemBlue),),

            ],
          ),
        ),
      ),
    );
  }
}
