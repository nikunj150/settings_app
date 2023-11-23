import 'package:flutter/material.dart';

class ContactInfoScreen extends StatefulWidget {
  const ContactInfoScreen({super.key});

  @override
  State<ContactInfoScreen> createState() => _ContactInfoScreenState();
}

class _ContactInfoScreenState extends State<ContactInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          leading: IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
          title: Text("Information Screen",style: TextStyle(color: Colors.white),),
          actions: [
            Icon(Icons.edit,color: Colors.white,),
            SizedBox(width: 10,),
            Icon(Icons.more_vert,color: Colors.white,),
          ],
          centerTitle: true,
        ),
        body:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    radius: 80,
                    child: Text("D",style: TextStyle(color: Colors.white,fontSize: 50),),
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: ()  {},
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.green),
                              child: const Icon(
                                Icons.call,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text("Call"),
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: ()  {},
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.blue),
                              child: const Icon(
                                Icons.sms_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text("Text"),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red),
                            child: const Icon(
                              Icons.mail,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text("Mail"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.54,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Contact info",
                                style: TextStyle(fontSize: 19),
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.star_border))
                            ],
                          ),
                          const SizedBox(height: 40),
                          Row(
                            children: [
                              const Icon(Icons.phone),
                              const SizedBox(width: 10),
                              Text(
                                "91+ 38484 49494",
                                style: const TextStyle(fontSize: 21),
                              ),
                              Spacer(),
                               Icon(Icons.videocam),
                               SizedBox(width: 20),
                               Icon(Icons.sms_outlined),
                            ],
                          ),
                          SizedBox(height: 30),
                          Row(
                            children: [
                              Image.asset("assets/images/whatsapp.png",height: 25,width: 25,),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Massage +91 32156 75548",style: TextStyle(fontSize: 18),),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Image.asset("assets/images/whatsapp.png",height: 25,width: 25,),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Massage +91 32156 75548",style: TextStyle(fontSize: 18),),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Image.asset("assets/images/whatsapp.png",height: 25,width: 25,),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Massage +91 32156 75548",style: TextStyle(fontSize: 18),),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              Text(
                                "davidgomez123@gmail.com",
                                style: const TextStyle(fontSize: 20),
                              ),
                              const Spacer(),
                              IconButton(
                                  onPressed: ()  {
                                  },
                                  icon: const Icon(Icons.email_outlined)),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.red),
                                child: IconButton(
                                    onPressed: () {

                                    },
                                    icon: const Icon(Icons.delete,color: Colors.white,)),
                              ),
                              SizedBox(width: 20),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.green),
                                child: IconButton(
                                    onPressed: () {

                                      Navigator.pop(context);
                                    },
                                    icon: const Icon(Icons.lock,color: Colors.white,)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
