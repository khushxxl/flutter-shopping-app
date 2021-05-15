import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountEmail: Text("khushaal.choithramani@gmail.com"),
                accountName: Text("Khushaal Choithramani"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                      "https://yt3.ggpht.com/yti/ANoDKi7eRc59wY1PNpge8vf8FOJrOnGFZJ0bNd7PJGegd08=s88-c-k-c0x00ffffff-no-rj-mo"),
                ),
              ),
            ),
            MyListTile(
              icon: CupertinoIcons.home,
              mytitle: "Home",
            ),
            MyListTile(mytitle: "E-mail", icon: CupertinoIcons.mail),
            MyListTile(
                mytitle: "Profile", icon: CupertinoIcons.profile_circled),
          ],
        ),
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  MyListTile({@required this.mytitle, @required this.icon});

  final String mytitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        mytitle,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
