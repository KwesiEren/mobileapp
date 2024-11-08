import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileScrn extends StatefulWidget {
  const ProfileScrn({super.key});

  @override
  State<ProfileScrn> createState() => _ProfileScrnState();
}

class _ProfileScrnState extends State<ProfileScrn> {
  String? imagePath = "asset/bg2.png";
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: screen.width,
          height: screen.height,
          decoration: const BoxDecoration(
            color: Colors.white,
            // gradient: LinearGradient(
            //   begin: Alignment.bottomRight,
            //   end: Alignment.topLeft,
            //   colors: [Colors.white, Colors.blueAccent],
          ),
          child: Column(
            children: [
              Container(
                  width: screen.width,
                  decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadiusDirectional.circular(4)),
                  //height: 200,
                  // color: Colors.red,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                          shadowColor: Colors.blueGrey,
                          elevation: 10,
                          shape: const CircleBorder(
                            side: BorderSide(
                                width: 1.0,
                                color: Colors.blue,
                                style: BorderStyle.none),
                          ),
                          child: Container(
                            width: screen.width * 0.250,
                            height: screen.width * 0.250,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.lightGreen, width: 3.0),
                            ),
                            child: Center(
                              child: CircleAvatar(
                                backgroundImage: AssetImage(imagePath!),
                                radius: 80,
                              ),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 30.0),
                        child: SizedBox(
                            width: screen.width * 0.50,
                            child: const Text(
                              "Cersgis Mobile Application Training",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  overflow: TextOverflow.clip),
                            )),
                      )
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      width: screen.width,
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name : ',
                            style: TextStyle(fontSize: 18),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              'Edwin Kpoh',
                              style: TextStyle(fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      width: screen.width,
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Age : ',
                            style: TextStyle(fontSize: 18),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              '58',
                              style: TextStyle(fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      width: screen.width,
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Company : ',
                            style: TextStyle(fontSize: 18),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              'CERSGIS',
                              style: TextStyle(fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/getpoint');
                  },
                  child: const Text(
                    'Get Points',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
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
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      color: Colors.red,
                      decorationColor: Colors.red),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
