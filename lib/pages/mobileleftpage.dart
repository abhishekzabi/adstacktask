import 'package:adstackdashboard/config/images.dart';
import 'package:adstackdashboard/widgets/usedwidgets.dart';
import 'package:flutter/material.dart';

class MobileLeftPage extends StatefulWidget {
  const MobileLeftPage({super.key});

  @override
  State<MobileLeftPage> createState() => _MobileLeftPageState();
}

class _MobileLeftPageState extends State<MobileLeftPage> {
   UsedWidgets _usedWidgets = UsedWidgets();
  @override
  Widget build(BuildContext context) {
    return 
    
       Scaffold(
        appBar: AppBar(),
         body: SingleChildScrollView(
               child: Container(
                        ////////////////////////////////////////////////////////////left
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30)),
                            color: Color.fromARGB(255, 255, 255, 255)),
                        height: MediaQuery.of(context).size.height,
                         width: MediaQuery.of(context).size.width,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 50,
                                width: 100,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            AssetsImage.adstackmedialogo),
                                        fit: BoxFit.fill)),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Divider(
                                thickness: 2,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              _usedWidgets.circularImage(), /////circularimage
               
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                "Pooja MIshra",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              _usedWidgets.adminButton(),
                              const SizedBox(
                                height: 8,
                              ),
                              const Divider(
                                thickness: 2,
                              ),
               
                              _usedWidgets.customButton(
                                  "Home",
                                  Icons.home_filled,
                                  const Color.fromRGBO(241, 241, 239, 1),
                                  FontWeight.bold),
                              _usedWidgets.customButton(
                                  "Employees",
                                  Icons.people_alt_outlined,
                                  Colors.white,
                                  FontWeight.w500),
                              _usedWidgets.customButton(
                                  "Attandance",
                                  Icons.content_paste_go_sharp,
                                  Colors.white,
                                  FontWeight.w500),
                              _usedWidgets.customButton(
                                  "Summary",
                                  Icons.calendar_month,
                                  Colors.white,
                                  FontWeight.w500),
                              _usedWidgets.customButton("Information", Icons.info,
                                  Colors.white, FontWeight.w500),
                              Container(
                                  height: 50,
                                  width: 300,
                                  color: const Color.fromRGBO(227, 233, 254, 1),
                                  child: const Center(
                                      child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "WORKSPACES",
                                        style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 0.6),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Icon(Icons.add)
                                    ],
                                  ))),
                              Container(
                                height: 40,
                                width: 300,
                                color: const Color.fromARGB(255, 255, 255, 255),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 90,
                                    ),
                                    Text("Adstacks"),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Icon(Icons.keyboard_arrow_down_outlined)
                                  ],
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 300,
                                color: const Color.fromARGB(255, 255, 255, 255),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 90,
                                    ),
                                    Text(" Finance "),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Icon(Icons.keyboard_arrow_down_outlined)
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 60,
                              ),
                              TextButton.icon(
                                onPressed: () {
                                  // Action when button is pressed
                                },
                                icon: const Icon(
                                  Icons.settings,
                                  color: Color.fromRGBO(0, 0, 0, 0.6),
                                  size: 24,
                                ),
                                label: const Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'Setting',
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 0.6),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0, vertical: 8.0), // Padding
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextButton.icon(
                                onPressed: () {
                                  // Action when button is pressed
                                },
                                icon: const Icon(
                                  Icons.logout,
                                  color: Color.fromRGBO(0, 0, 0, 0.6),
                                  size: 24,
                                ),
                                label: const Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'Logout',
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 0.6),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0, vertical: 8.0), // Padding
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
             ),
       );
  }
}