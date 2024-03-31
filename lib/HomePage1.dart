import 'package:flutter/material.dart';
import 'package:whatsapp/CallsWidget.dart';
import 'package:whatsapp/ChatsWidget.dart';
import 'package:whatsapp/SplashScreen.dart';
import 'package:whatsapp/StatusWidget.dart';

void main(){
  runApp(const MaterialApp(home: SplashScreen(),));
}

class HomePage1 extends StatelessWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(125),
            child: AppBar(
              elevation: 0,
              title: const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "LGTVHD+App",
                  style: TextStyle(fontSize: 21,
                  fontWeight: FontWeight.w500
                  ,color: Colors.white),
                ),
              ),
              actions: [
                const Padding(
                  padding: EdgeInsets.only(top: 12, right: 15),
                  child: Icon(
                    Icons.search,
                    size: 28,
                  ),
                ),
                PopupMenuButton(
                  onSelected: (result) {
                    // if someone clicks on value number 5 means click on setting
                    if (result == 5) {
                        Navigator.pushNamed(context, "settingsPage");
                    }
                  },
                  elevation: 10,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  iconSize: 28,
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 1,
                      child: Text(
                        "New Group",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 2,
                      child: Text(
                        "New broadcast",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 3,
                      child: Text(
                        "Linked devices",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 4,
                      child: Text(
                        "Starred messages",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 5,
                      child: Text(
                        "Settings",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                )
              ],
              bottom: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 4,
                labelStyle: const TextStyle(
                  //fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                tabs: [
                  //tab 1
                  Container(
                    //width: 25,
                    child: const Tab(
                      child: Row(
                        children: [
                          Icon(Icons.camera_alt),
                        ],
                      ),
                    ),
                  ),
                  //tab 2
                  Container(
                    //width: 90,
                    child: Tab(
                      child: Row(
                        children: [
                          const Text("CHATS "),
                          const SizedBox(
                           // width: 20,
                          ),
                          Container(
                            //padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: const Text(
                              "10",
                              style: TextStyle(
                                color: Color(0xFF075E55),
                                fontSize: 12,
                              ),
                            ),
                          )
                          // Container(
                          //   alignment: Alignment.center,
                          //   padding: EdgeInsets.all(10),
                          //   height: 22,
                          //   width: 22,
                          //   decoration: BoxDecoration(
                          //     color: Colors.white,
                          //     borderRadius: BorderRadius.circular(20),
                          //   ),
                          //   child: Text("10",
                          //     style: TextStyle(
                          //         color: Color(0xFF075E55),
                          //         fontSize: 14
                          //     ),),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  //tab 3
                  Container(
                    //width: 85,
                    child: const Tab(
                      text: "STATUS",
                    ),
                  ),
                  //tab 4
                  Container(
                    width: 85,
                    child: const Tab(
                      text: "CALLS",
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              //tab 1 camera
              Container(
                color: Colors.black,
              ),
              //tab 2 Chats
              const ChatsWidget(),
              //tab 3 Status
              const StatusWidget(),
              //tab 4 Calls
              const CallsWidget(),
            ],
          ),
        )
    );
  }
}
