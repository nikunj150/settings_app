import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settings_app/screen/provider/contact_provider.dart';

class ContactInfoScreen extends StatefulWidget {
  const ContactInfoScreen({super.key});

  @override
  State<ContactInfoScreen> createState() => _ContactInfoScreenState();
}

class _ContactInfoScreenState extends State<ContactInfoScreen> {
  ContactProvider? providerr;
  ContactProvider? providerw;

  @override
  Widget build(BuildContext context) {
    providerr = context.read<ContactProvider>();
    providerw = context.watch<ContactProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          title: const Text(
            "Information Screen",
            style: TextStyle(color: Colors.white),
          ),
          actions: const [
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ],
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  const CircleAvatar(
                    backgroundColor: Colors.orange,
                    radius: 80,
                    child: Text(
                      "D",
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () {},
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
                            onTap: () {},
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
                  const SizedBox(height: 40),
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.65,
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
                              const Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.star_border))
                            ],
                          ),
                          const SizedBox(height: 40),
                          const Row(
                            children: [
                              Icon(Icons.phone),
                              SizedBox(width: 10),
                              Text(
                                "91+ 38484 49494",
                                style: TextStyle(fontSize: 21),
                              ),
                              Spacer(),
                              Icon(Icons.videocam),
                              SizedBox(width: 20),
                              Icon(Icons.sms_outlined),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/whatsapp.png",
                                height: 25,
                                width: 25,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "Massage +91 32156 75548",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/whatsapp.png",
                                height: 25,
                                width: 25,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "Massage +91 32156 75548",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/whatsapp.png",
                                height: 25,
                                width: 25,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "Massage +91 32156 75548",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              const Text(
                                "davidgomez123@gmail.com",
                                style: TextStyle(fontSize: 20),
                              ),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.email_outlined)),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Date - ${providerw!.Date!.day}/${providerw!.Date!.month}/${providerw!.Date!.year}",
                                style: const TextStyle(fontSize: 20),
                              ),
                              const Spacer(),
                              IconButton(
                                  onPressed: () async {
                                    DateTime? d1 = await showDatePicker(
                                      context: context,
                                      initialDate: providerr!.Date!,
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2050),
                                    );
                                    providerr!.changedate(d1!);
                                  },
                                  icon: const Icon(Icons.calendar_month)),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Time : ${providerw!.Time!.hour} : ${providerw!.Time!.minute} ",
                                style: const TextStyle(fontSize: 20),
                              ),
                              const Spacer(),
                              IconButton(
                                  onPressed: () async {
                                    TimeOfDay? d2 = await showTimePicker(
                                      context: context,
                                      initialTime: TimeOfDay.now(),
                                      initialEntryMode:
                                          TimePickerEntryMode.dial,
                                    );
                                    providerr!.changeTime(d2!);
                                  },
                                  icon: const Icon(Icons.timer)),
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
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                    )),
                              ),
                              const SizedBox(width: 20),
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
                                    icon: const Icon(
                                      Icons.lock,
                                      color: Colors.white,
                                    )),
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
