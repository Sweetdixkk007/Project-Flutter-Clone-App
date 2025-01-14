import 'package:flutter/material.dart';

class settingsPage extends StatelessWidget {
  const settingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leadingWidth: 80,
        title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "Settings",
            style: TextStyle(
               // fontSize: 20,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset("images/n1.jpg",
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "เกตัวพ่อ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "รักแท้แพ้ชุดแบทแมน",
                          style: TextStyle(
                              fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black45,
                          ),
                        )
                      ],
                    ),
                    )
                  ],
                ),
              ),
              const Divider(),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.key),
                ),
                title: Text(
                  "Account",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text(
                  "Privacy, Security. change number",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.message),
                ),
                title: Text(
                  "Chats",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text(
                  "Theme, wallpapers, chat history",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.notifications),
                ),
                title: Text(
                  "Notifications",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text(
                  "Message, group & call tones",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.circle_outlined),
                ),
                title: Text(
                  "Storage and Data",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text(
                  "Network usage, auto-download",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.help_outline_outlined),
                ),
                title: Text(
                  "Help",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text(
                  "Help centre, contact us, privacy policy",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.people_alt),
                ),
                title: Text(
                  "Invite a Friend",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}
