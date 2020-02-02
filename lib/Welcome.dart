import 'package:flutter/material.dart';
import 'package:ulife_rc/shared/SharedLibrary.dart';

class Welcome extends StatefulWidget {
  Welcome({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
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

      body: Column(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight,
            child: Container(
              color: ShareLibrary.colors["background"],

              child: Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: ListView(
                  children: [
                    Column(
                      children: <Widget>[
                        Container(
                          child: Image(image: AssetImage("assets/output-onlinepngtools(1).png")),
                          height: 250,
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(16, 15, 16, 0),
                          width: screenWidth * 0.95,
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Welcome to ",
                                  style: TextStyle(
                                      height: 1.7,
                                      fontSize: 22,
                                      fontFamily: "SourceSansPro",
                                      fontWeight: FontWeight.bold,
                                      color: ShareLibrary.colors["text_color"] ),
                                  textAlign: TextAlign.center),
                              Text("Ulife RC",
                                  style: TextStyle(
                                      height: 1.7,
                                      fontSize: 22,
                                      fontFamily: "SourceSansPro",
                                      fontWeight: FontWeight.bold,
                                      color: ShareLibrary.colors["main__darked"]),
                                  textAlign: TextAlign.center),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: screenHeight * .02),
                          padding: const EdgeInsets.fromLTRB(16, 5, 16, 0),
                          width: screenWidth * 0.95,
                          child: new Column(
                            children: <Widget>[
                              Text(
                                "Create a account and start discussing with your costumer from your website for free",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'SourceSansPro',
                                    height: 3,
                                    color: ShareLibrary.colors["text_color"]),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: screenWidth >= 305 ? 305 : screenWidth * 0.8,
                          margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                          child: RaisedButton(
                            elevation: 0,
                            onPressed: () {
                              Navigator.pushNamed(context, "/connexion");
                            },
                            color: ShareLibrary.colors["main__darked"],
                            padding: EdgeInsets.fromLTRB(60, 15, 60, 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(50.0),
                            ),
                            child: const Text('CREATE MY ACCOUNT',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: 'SourceSansPro')),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: Column(
                            children: <Widget>[
                              Text("Do you have an account ? ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'SourceSansPro',
                                      color: Colors.grey)),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    InkWell(
                                      child: Text("LOGIN TO MY ACCOUNT".toUpperCase(),
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontFamily: 'SourceSansPro',
                                              color: Color.fromRGBO(0, 0, 0, 0.75),
                                              fontWeight: FontWeight.bold)),
                                      onTap: () => null,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
