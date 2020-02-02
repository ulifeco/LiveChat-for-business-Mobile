import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ulife_rc/shared/SharedLibrary.dart';

class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
      body: ListView(
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
                          child: Image(
                              image: AssetImage(
                                  "assets/output-onlinepngtools(1).png")),
                          height: 150,
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(16, 15, 16, 0),
                          width: screenWidth * 0.95,
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Login to ",
                                  style: TextStyle(
                                      height: 1.7,
                                      fontSize: 22,
                                      fontFamily: "SourceSansPro",
                                      fontWeight: FontWeight.bold,
                                      color: ShareLibrary.colors["text_color"]),
                                  textAlign: TextAlign.center),
                              Text("Ulife RC",
                                  style: TextStyle(
                                      height: 1.7,
                                      fontSize: 22,
                                      fontFamily: "SourceSansPro",
                                      fontWeight: FontWeight.bold,
                                      color:
                                          ShareLibrary.colors["main__darked"]),
                                  textAlign: TextAlign.center),
                            ],
                          ),
                        ),
                        /*Container(
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
                        ),*/
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 40, 0, 20),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border(
                                    top: BorderSide(
                                        width: 0, color: Color.fromRGBO(0, 0, 0, 0.15)),
                                    left: BorderSide(
                                        width: 0, color: Color.fromRGBO(0, 0, 0, 0.15)),
                                    right: BorderSide(
                                        width: 0, color: Color.fromRGBO(0, 0, 0, 0.15)),
                                    bottom: BorderSide(
                                        width: 0, color: Color.fromRGBO(0, 0, 0, 0.15)),
                                  ),
                                  borderRadius: new BorderRadius.circular(0.0),
                                ),
                                child: TextField(
                                  //controller: password,
                                  keyboardType: TextInputType.emailAddress,

                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                    border: InputBorder.none,
                                      icon: new Icon(Icons.mail, color: Colors.grey.withOpacity(0.2),)
                                  ),
                                  style: TextStyle(fontFamily: "SourceSansPro"),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border(
                                    top: BorderSide(
                                        width: 0, color: Color.fromRGBO(0, 0, 0, 0.15)),
                                    left: BorderSide(
                                        width: 0, color: Color.fromRGBO(0, 0, 0, 0.15)),
                                    right: BorderSide(
                                        width: 0, color: Color.fromRGBO(0, 0, 0, 0.15)),
                                    bottom: BorderSide(
                                        width: 0, color: Color.fromRGBO(0, 0, 0, 0.15)),
                                  ),
                                  borderRadius: new BorderRadius.circular(5.0),
                                ),
                                child: TextField(
                                  //controller: password,
                                  obscureText: true,
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    border: InputBorder.none,
                                      icon: new Icon(Icons.lock, color: Colors.grey.withOpacity(0.2),)

                                  ),
                                  style: TextStyle(fontFamily: "SourceSansPro"),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: screenWidth >= 305 ? 305 : screenWidth * 0.8,
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
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
                            child: const Text('LOGIN TO MY ACCOUNT',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: 'SourceSansPro')),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Column(
                            children: <Widget>[
                              Divider(),
                              Text("Do you have an account ? ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'SourceSansPro',
                                      color: Colors.grey)),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    InkWell(
                                      child: Text(
                                          "CREATE MY ACCOUNT".toUpperCase(),
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontFamily: 'SourceSansPro',
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.75),
                                              fontWeight: FontWeight.bold)),
                                      onTap: () => null,
                                    )
                                  ],
                                ),
                              ),

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
