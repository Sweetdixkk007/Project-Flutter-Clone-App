import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: const EdgeInsets.only(right: 80),
        child: ClipPath(
          clipper: UpperNipMessageClipperTwo(MessageType.receive),
          child: Container(
            padding: const EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: const Text(
              "อะคะนิสสันจิอ่า นิสสานนนนนนน!!!!",
              style: TextStyle(fontSize: 17),
            ),
          ),
        ),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: const EdgeInsets.only(top: 20,left: 80,bottom: 15),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
              padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
              decoration: const BoxDecoration(
                color: Color(0XFFE4FDCA),
              ),
              child: const Text(
                "อะไรของคุณครับ ถ้ายังทักมาอีกผมจะแจ้ง      \nตำรวจจับแล้วนะครับ มานิสสงนิสสัน",
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        )
        
      ],
    );
  }
}
