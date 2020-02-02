import 'package:flutter/material.dart';
import 'package:ulife_rc/shared/SharedLibrary.dart';

class Messages extends StatefulWidget {
  Messages({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  final myController = TextEditingController(text: "");
  ScrollController _controller = ScrollController();
  bool isLoading = false;
  String invalidNumber = "";
  List messages = [
    "This call to setState tells the Flutter framework that something has changed in this State, which causes it to rerun the build method below",
    "This call to setState tells the Flutter framework that something has changed in this State, which causes it to rerun the build method below",
    "This call to setState tells the Flutter frame",
    "This call to setState tells the Flutter framework that something has changed in this State, which causes it to rerun the build method below",
    "This call to setState tells the Flutter framework that something has changed in this State, which causes it to rerun the build method below",
    "in this State, which causes it to rerun the build method below",
  ];

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      //_counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 255),
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
      body: Stack(

        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 70),
            child: ListView(
              controller: _controller,
              reverse: true,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ..._buildMessages(screenWidth)

                //Divider(thickness: 1,),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            width: screenWidth,
            height: 70,
            child: Container(
              height: 60,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.more_horiz),
                  Container(
                    width: screenWidth * 0.7,
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      controller: myController,
                      decoration: InputDecoration(
                        hintText: "Entrer votre message ici",
                        border: InputBorder.none,
                      ),
                      style:
                          TextStyle(fontFamily: "SourceSansPro", fontSize: 14),
                    ),
                  ),
                  InkWell(
                      child: Icon(Icons.send, color: ShareLibrary.colors["main__darked"],),
                      onTap: () {
                        if (myController.text != "") {
                          //sendMessage(myController.text);
                          myController.clear();
                        }
                      })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildMessages(screenSize) {
    List<Widget> cards = [];
    var path;
    for (int i = 0; i < messages.length; i++) {
      cards.add(
        Align(
            alignment:
                i % 3 == 0 ? Alignment.centerLeft : Alignment.centerRight,
            child: Container(
                width: screenSize * 0.8,
                decoration: BoxDecoration(
                  color: i%3 != 0 ? Color.fromRGBO(22, 53, 6, 0.05) : Colors.white,

                  borderRadius: new BorderRadius.circular(8.0),
                ),
                margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                child: Column(
                  children: <Widget>[
                    Container(),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Text(
                        messages[i],
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.87),
                            fontFamily: 'Robotto',
                            fontWeight: FontWeight.w400,
                            height: 1.8,
                            fontSize: 14),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ))),
      );
    }
    return cards.reversed.toList();
  }
}
