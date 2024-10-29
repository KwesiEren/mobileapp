import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileScrn extends StatefulWidget {
  const ProfileScrn({super.key});

  @override
  State<ProfileScrn> createState() => _ProfileScrnState();
}

class _ProfileScrnState extends State<ProfileScrn> {
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
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [Colors.white, Colors.blueAccent],
              )),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
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
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      width: screen.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Name : ',
                            style: TextStyle(fontSize: 18),
                          ),
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                width: screen.width * 0.55,
                                height: screen.height * 0.05,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text(
                                    'Edwin Kpoh',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      width: screen.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Age : ',
                            style: TextStyle(fontSize: 18),
                          ),
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                width: screen.width * 0.6,
                                height: screen.height * 0.05,
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text(
                                    '56',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      width: screen.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Company : ',
                            style: TextStyle(fontSize: 18),
                          ),
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                width: screen.width * 0.5,
                                height: screen.height * 0.05,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text(
                                    'CERSGIS',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ))
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
      ),
    );
  }
}
