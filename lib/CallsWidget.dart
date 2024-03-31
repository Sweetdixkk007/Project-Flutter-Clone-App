import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallsWidget extends StatelessWidget {
  const CallsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            children: [
              
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                      child: Image.asset("images/n4.jpg",
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("ภูดิสหลับ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(Icons.call_made,
                              color: Color(0xFF075E55),
                              size: 19,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "(1), Today, 10:00",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      child: const Icon(Icons.call_sharp,
                      color: Color(0xFF075E55),
                      ),
                    ),
                  ],
                ),
              ),
              
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset("images/n5.jpg",
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ดรีมมี่บู",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Icon(Icons.call_received,
                                  color: Colors.red,
                                  size: 19,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "(1), Today, 10:00",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        child: const Icon(//CupertinoIcons.videocam_fill,
                          Icons.videocam,
                          color: Color(0xFF075E55),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
    );
  }
}
