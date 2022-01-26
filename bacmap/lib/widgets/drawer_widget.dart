import 'package:bacmap/constants/app_constants.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppConstants.homeColor,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Row(
                    children: const <Widget>[
                      FlutterLogo(size: 200),
                      Spacer(),
                      Text(
                        AppConstants.appName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      )
                    ],
                  ),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppConstants.homeColor,
                        AppConstants.appBarColor,
                        AppConstants.appColor
                      ],
                    ),
                  ),
                ),
                ListTile(
                  style: ListTileStyle.drawer,
                  title: Row(
                    children: [
                      Image.asset(AppConstants.whatsAppIcon,
                          width: 40, height: 40),
                      const Spacer(),
                      const Text("WhatsApp",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                  onTap: () {
                    _openRL("https://chat.whatsapp.com/KSy6hnnf8WCJH2NK4uzAsl");
                  },
                ),
                ListTile(
                  style: ListTileStyle.drawer,
                  title: Row(
                    children: [
                      Image.asset(AppConstants.telegram, width: 35, height: 35),
                      const Spacer(),
                      const Text('Telegram',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  onTap: () {
                    _openRL("https://t.me/+uN0GGl6q7B81NTM0");
                  },
                ),
                ListTile(
                  style: ListTileStyle.drawer,
                  title: Row(
                    children: [
                      Image.asset(AppConstants.linkdInIcon,
                          width: 30, height: 30),
                      const Spacer(),
                      const Text('LinkdIn',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  onTap: () {
                    _openRL("https://wa.link/jeg0ts");
                  },
                ),
              ],
            ),
          ),
          const Center(child: Text("© 2022 BacMap")),
        ],
      ),
    );
  }

  void _openRL(String url) {
    null;
  }
}
