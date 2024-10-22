import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobileapp/components/textinput.dart';

class ProfileScrn extends StatefulWidget {
  const ProfileScrn({super.key});

  @override
  State<ProfileScrn> createState() => _ProfileScrnState();
}

class _ProfileScrnState extends State<ProfileScrn> {
  TextEditingController nameinput = TextEditingController();
  TextEditingController ageinput = TextEditingController();
  TextEditingController companyinput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: screen.width,
        height: screen.height,
        decoration: const BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [Colors.white, Colors.blueAccent],
            )),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.only(left: 130, top: 10, bottom: 10),
              width: screen.width,
              //height: 200,
              //color: Colors.red,
              child: const CircleAvatar(
                backgroundImage: AssetImage('asset/bg2.png'),
                radius: 80,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              width: screen.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Name : ',
                    style: TextStyle(fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: InputField(
                      displaytxt: 'Enter Name Here',
                      hidetxt: false,
                      borderRadius: 5,
                      contrlr: nameinput,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              width: screen.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Age : ',
                    style: TextStyle(fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: InputField(
                      displaytxt: 'Enter your Age',
                      hidetxt: false,
                      borderRadius: 5,
                      contrlr: ageinput,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              width: screen.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Company : ',
                    style: TextStyle(fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: InputField(
                      displaytxt: 'eg. JohnDoe Ltd',
                      hidetxt: false,
                      borderRadius: 5,
                      contrlr: companyinput,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              width: screen.width,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/getpoint');
                    },
                    child: const Text(
                      'Get Points',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('Last Point Collected :'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                SystemNavigator.pop();
              },
              child: const Text(
                'Exit',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                    color: Colors.red,
                    decorationColor: Colors.red),
              ),
            )
          ],
        ),
      ),
    );
  }
}
