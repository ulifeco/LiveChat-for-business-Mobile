import 'package:flutter/material.dart';

class ShareLibrary {
  static String appName = "Exans";

  static const color = Color.fromARGB(242, 242, 242, 255);

  static const colors = {
    "background" : Color.fromARGB(242, 242, 242, 255),
    "main__darked" : Color.fromRGBO(56,152,151,1),
    "main" : Color.fromRGBO(75,185,184,1),
    "text_color" : Color.fromRGBO(79, 79, 79, 1),
  };

  static var phone = "+237676999971";

  static String getAppName() {
    return appName;
  }

  static Color getMainColor() {
    return color;
  }

  static double getIconSize() {
    return 18;
  }

  static EdgeInsets appMargin() {
    return EdgeInsets.fromLTRB(10, 20, 10, 0);
  }

  static Color getBodyBG() {
    return Color.fromARGB(255, 247, 247, 247);
  }

  static Widget drawer(context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: ShareLibrary.color,
              image: DecorationImage(
                image: AssetImage("assets/geometric-background_87374-47.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.launch),
            title: Text('Visiter le site web',
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(71, 71, 71, 1))),
            onTap: () async {

              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Partager l\'application',
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(71, 71, 71, 1))),
            onTap: () async {

              Navigator.pop(context);
            },
          ),

          Divider(),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Support et aide sur github',
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(71, 71, 71, 1))),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),

          Divider(),
          ListTile(
            leading: Icon(Icons.open_in_browser),
            title: Text('Contribuer a l\'application',
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(71, 71, 71, 1))),
            onTap: () {

              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.update),
            title: Text('Mettre a jour l\'application',
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(71, 71, 71, 1))),
            onTap: () {
              // redirect to google store
              Navigator.pop(context);
            },
          ),
          Divider(),
          Container(
            margin: EdgeInsets.fromLTRB(0, 70, 0, 0),
            child: Text(
              'Ulife RC v0.0.1',
              style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'SourceSansPro',
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[500]),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }

}
