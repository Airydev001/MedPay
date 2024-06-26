import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 180,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            padding: EdgeInsets.all(16),
            child: ListView(
              children: [
                SizedBox(height: 30),
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/profile_image.png"),
                  ),
                  title: Text(
                    "Mary Wilson",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  subtitle: Text("marywilson@gmail.com"),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(16),child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notifications"),
                trailing: Switch(
                  value: true,
                  onChanged: (value){},
                  activeColor: Colors.white,
                  activeTrackColor: Colors.green.shade300,
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.sunny),
                title: Text("Dark mode"),
                trailing: Switch(
                  value: false,
                  onChanged: (value){},
                  activeColor: Colors.white,
                  activeTrackColor: Colors.grey,
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.live_help),
                title: Text("Help/Support"),
              ),
              Divider(),
              ListTile(
                leading: Image.asset("assests/images/about_us.png"),
                title: Text("About Us"),
              ),
              Divider()
            ],
          ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "Logout",
                style: TextStyle(
                  color: Colors.orange
                ),
              ),
              Image.asset("assets/images/logout_icon.png")
            ],
          )
        ],
      ),
    );
  }
}