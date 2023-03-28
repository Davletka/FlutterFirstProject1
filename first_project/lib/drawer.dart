import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                currentAccountPicture: Container(
                  alignment: Alignment.topLeft,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://avatars.mds.yandex.net/i?id=5376538ef38b39960854a7ba6913aba1d511d611-8356716-images-thumbs&n=13"),
                  ),
                ),
                otherAccountsPictures: [
                  IconButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, '/');
                      },
                      icon: Icon(Icons.exit_to_app)),
                ],
                accountEmail: const Text(
                  "Davletka@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
                accountName: const Text(
                  "Davletka",
                  style: TextStyle(color: Colors.black),
                ),
              )),
          ListTile(
            title: Text("Settings"),
            leading: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.popAndPushNamed(context, '/test');
            },
          ),
          ListTile(
            title: Text("Shop"),
            leading: Icon(
              Icons.shop,
              color: Colors.black,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.black,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text("About Company"),
            leading: Icon(
              Icons.book,
              color: Colors.black,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.black,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text("Help"),
            leading: Icon(
              Icons.help,
              color: Colors.black,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.black,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
