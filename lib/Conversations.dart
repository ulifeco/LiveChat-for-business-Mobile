import 'package:flutter/material.dart';
import 'package:ulife_rc/shared/SharedLibrary.dart';

class Conversation extends StatefulWidget {
  Conversation({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _ConversationState createState() => _ConversationState();
}

class _ConversationState extends State<Conversation> {
  int _counter = 0;
  bool isLoading = false;
  String invalidNumber = "";

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: ShareLibrary.drawer(context),
      appBar: AppBar(
        //titleSpacing: screenWidth * 0.25,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Color.fromRGBO(71, 71, 71, 1),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          "Ulife Realtime Chat",
          style: TextStyle(
              fontSize: 14,
              fontFamily: 'poppins',
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(71, 71, 71, 1)),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[

          Container(
            color: Colors.white,
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Column(
              children: <Widget>[
                /*    Center(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  margin: EdgeInsets.fromLTRB(0,20,0,10),
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(40.0),
                    color: Colors.redAccent,

                  ),
                  child: Text(
                    "New messages",
                    style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                        //fontFamily: "SourceSansPro",
                        color: Colors.white),
                  ),
                ),
              ),
*/
                ListTile(
                  leading: new Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: new BoxDecoration(
                        color: Color.fromARGB(255, 253, 200, 41),
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "J",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w100,
                                fontFamily: 'poppins'),
                          ),
                        ],
                      )),
                  title: Text("Google Best Practise",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                  subtitle: Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      "Free for personal and commercial purpose with attribution for personal and commercial purpose with attribution",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.normal,
                          height: 1.6,
                          fontSize: 12),
                      maxLines: 2,
                    ),
                  ),
                  trailing: Text(
                    "02 min",
                    style: TextStyle(fontSize: 10),
                  ),
                  isThreeLine: true,
                ),

                ListTile(
                  leading: new Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: new BoxDecoration(
                        color: Color.fromARGB(255, 150, 200, 41),
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "J",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w100,
                                fontFamily: 'poppins'),
                          ),
                        ],
                      )),
                  title: Text("Google Best Practise",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w800,
                          fontSize: 16)),
                  subtitle: Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      "Free for personal and commercial purpose with attribution for personal and commercial purpose with attribution",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.bold,
                          height: 1.6,
                          fontSize: 11),
                      maxLines: 2,
                    ),
                  ),
                  trailing: Text(
                    "02 min",
                    style: TextStyle(fontSize: 10),
                  ),
                  isThreeLine: true,
                ),

                ListTile(
                  leading: new Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: new BoxDecoration(
                        color: Color.fromARGB(50, 100, 50, 41),
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "J",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w100,
                                fontFamily: 'poppins'),
                          ),
                        ],
                      )),
                  title: Text("Google Best Practise",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                  subtitle: Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      "Free for personal and commercial purpose with attribution for personal and commercial purpose with attribution",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.normal,
                          height: 1.6,
                          fontSize: 12),
                      maxLines: 2,
                    ),
                  ),
                  trailing: Text(
                    "02 min",
                    style: TextStyle(fontSize: 10),
                  ),
                  isThreeLine: true,
                ),
                ListTile(
                  leading: new Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: new BoxDecoration(
                        color: Color.fromARGB(255, 253, 200, 41),
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "J",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w100,
                                fontFamily: 'poppins'),
                          ),
                        ],
                      )),
                  title: Text("Google Best Practise",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                  subtitle: Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      "Free for personal and commercial purpose with attribution for personal and commercial purpose with attribution",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.normal,
                          height: 1.6,
                          fontSize: 12),
                      maxLines: 2,
                    ),
                  ),
                  trailing: Text(
                    "02 min",
                    style: TextStyle(fontSize: 10),
                  ),
                  isThreeLine: true,
                ),

                ListTile(
                  leading: new Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: new BoxDecoration(
                        color: Color.fromARGB(90, 100, 20, 41),
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "J",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w100,
                                fontFamily: 'poppins'),
                          ),
                        ],
                      )),
                  title: Text("Google Best Practise",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w800,
                          fontSize: 16)),
                  subtitle: Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      "Free for personal and commercial purpose with attribution for personal and commercial purpose with attribution",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.bold,
                          height: 1.6,
                          fontSize: 11),
                      maxLines: 2,
                    ),
                  ),
                  trailing: Text(
                    "02 min",
                    style: TextStyle(fontSize: 10),
                  ),
                  isThreeLine: true,
                ),

                ListTile(
                  leading: new Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: new BoxDecoration(
                        color: Color.fromARGB(255, 253, 200, 41),
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "J",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w100,
                                fontFamily: 'poppins'),
                          ),
                        ],
                      )),
                  title: Text("Google Best Practise",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                  subtitle: Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      "Free for personal and commercial purpose with attribution for personal and commercial purpose with attribution",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.normal,
                          height: 1.6,
                          fontSize: 12),
                      maxLines: 2,
                    ),
                  ),
                  trailing: Text(
                    "02 min",
                    style: TextStyle(fontSize: 10),
                  ),
                  isThreeLine: true,
                ),
                ListTile(
                  leading: new Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: new BoxDecoration(
                        color: Color.fromARGB(255, 253, 200, 41),
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "J",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w100,
                                fontFamily: 'poppins'),
                          ),
                        ],
                      )),
                  title: Text("Google Best Practise",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                  subtitle: Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      "Free for personal and commercial purpose with attribution for personal and commercial purpose with attribution",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.normal,
                          height: 1.6,
                          fontSize: 12),
                      maxLines: 2,
                    ),
                  ),
                  trailing: Text(
                    "02 min",
                    style: TextStyle(fontSize: 10),
                  ),
                  isThreeLine: true,
                ),

                ListTile(
                  leading: new Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: new BoxDecoration(
                        color: Color.fromARGB(255, 253, 200, 41),
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "J",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w100,
                                fontFamily: 'poppins'),
                          ),
                        ],
                      )),
                  title: Text("Google Best Practise",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w800,
                          fontSize: 16)),
                  subtitle: Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      "Free for personal and commercial purpose with attribution for personal and commercial purpose with attribution",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.bold,
                          height: 1.6,
                          fontSize: 11),
                      maxLines: 2,
                    ),
                  ),
                  trailing: Text(
                    "02 min",
                    style: TextStyle(fontSize: 10),
                  ),
                  isThreeLine: true,
                ),

                ListTile(
                  leading: new Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: new BoxDecoration(
                        color: Color.fromARGB(255, 253, 200, 41),
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "J",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w100,
                                fontFamily: 'poppins'),
                          ),
                        ],
                      )),
                  title: Text("Google Best Practise",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                  subtitle: Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      "Free for personal and commercial purpose with attribution for personal and commercial purpose with attribution",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.normal,
                          height: 1.6,
                          fontSize: 12),
                      maxLines: 2,
                    ),
                  ),
                  trailing: Text(
                    "02 min",
                    style: TextStyle(fontSize: 10),
                  ),
                  isThreeLine: true,
                ),

                /*
              //Divider(thickness: 1,),
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: ListTile(
                  leading: new Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: new BoxDecoration(
                        color: Color.fromARGB(255, 253, 200, 41),
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "J",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w100,
                                fontFamily: 'poppins'),
                          ),
                        ],
                      )),
                  title: Text("Google Best Practise",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w800,
                          fontSize: 16)),
                  subtitle: Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      "Free for personal and commercial purpose with attribution for personal and commercial purpose with attribution",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.normal,
                          height: 1.6,
                          fontSize: 12),
                      maxLines: 1,
                    ),
                  ),
                  trailing: Text("02 min", style: TextStyle(
                    fontSize: 10
                  ),),
                  isThreeLine: true,
                ),
              ),
              Divider(),
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: ListTile(
                  leading: new Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: new BoxDecoration(
                        color: Color.fromARGB(255, 253, 200, 41),
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "J",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w100,
                                fontFamily: 'poppins'),
                          ),
                        ],
                      )),
                  title: Text("Google Best Practise",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w800,
                          fontSize: 16)),
                  subtitle: Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      "Free for personal and commercial purpose with attribution for personal and commercial purpose with attribution",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.normal,
                          height: 1.6,
                          fontSize: 12),
                    ),
                  ),
                  trailing: Text("02 min", style: TextStyle(
                      fontSize: 10
                  ),),
                  isThreeLine: true,
                ),
              ),
              Divider(),
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: ListTile(
                  leading: new Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: new BoxDecoration(
                        color: Color.fromARGB(255, 253, 200, 41),
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "J",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w100,
                                fontFamily: 'poppins'),
                          ),
                        ],
                      )),
                  title: Text("Google Best Practise",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w800,
                          fontSize: 16)),
                  subtitle: Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      "Free for personal and commercial purpose with attribution for personal and commercial purpose with attribution",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.normal,
                          height: 1.6,
                          fontSize: 12),
                    ),
                  ),
                  trailing: Text("02 min", style: TextStyle(
                      fontSize: 10
                  ),),
                  isThreeLine: true,
                ),
              ),
              Divider(),
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: ListTile(
                  leading: new Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: new BoxDecoration(
                        color: Color.fromARGB(255, 253, 200, 41),
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "J",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w100,
                                fontFamily: 'poppins'),
                          ),
                        ],
                      )),
                  title: Text("Google Best Practise",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w800,
                          fontSize: 16)),
                  subtitle: Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      "Free for personal and commercial purpose with attribution for personal and commercial purpose with attribution",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.normal,
                          height: 1.6,
                          fontSize: 12),
                    ),
                  ),
                  trailing: Text("02 min", style: TextStyle(
                      fontSize: 10
                  ),),
                  isThreeLine: true,
                ),
              ),
              Divider(),
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: ListTile(
                  leading: new Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: new BoxDecoration(
                        color: Color.fromARGB(255, 253, 200, 41),
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "J",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w100,
                                fontFamily: 'poppins'),
                          ),
                        ],
                      )),
                  title: Text("Google Best Practise",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w800,
                          fontSize: 16)),
                  subtitle: Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      "Free for personal and commercial purpose with attribution for personal and commercial purpose with attribution",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.normal,
                          height: 1.6,
                          fontSize: 12),
                    ),
                  ),
                  trailing: Text("02 min", style: TextStyle(
                      fontSize: 10
                  ),),
                  isThreeLine: true,
                ),
              ),
              Divider(),
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: ListTile(
                  leading: new Container(
                      width: 52.0,
                      height: 52.0,
                      decoration: new BoxDecoration(
                        color: Color.fromARGB(255, 253, 200, 41),
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "J",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'poppins'),
                          ),
                        ],
                      )),
                  title: Text("JohnDoe@gmai.com",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                  subtitle: Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      "Free for personal and commercial purpose with attribution",
                      style: TextStyle(

                          fontFamily: 'SourceSansPro',
                          fontSize: 12),
                    ),
                  ),
                  isThreeLine: true,
                ),
              ),*/
              ],
            ),
          ),

        ],
      ),
    );
  }
}
