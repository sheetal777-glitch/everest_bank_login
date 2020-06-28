import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool checkBoxValue = false;

  Widget imageCarousel = Container(
    child: Carousel(
      dotVerticalPadding: 0.0,
      dotSize: 5,
      dotIncreaseSize: 2,
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/logo.png'),
        AssetImage('images/ca.jpeg'),
        AssetImage('images/appbar.jpeg'),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Color(0xFF912316),
        title: Image.asset(
          'images/Appbar.png',
          fit: BoxFit.fitWidth,
          width: 300,
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 150,
              child: imageCarousel,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
              child: Text("Mobile Number"),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 40,
                child: TextField(
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
              child: Text("Password"),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 40,
                child: TextField(
                  obscureText: true, //password not visible type
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  activeColor: Color(0xFF912316),
                  value: checkBoxValue,
                  onChanged: (bool value) {
                    setState(() {
                      checkBoxValue = true;
                    });
                  },
                ),
                Text("Remember Mobile Number"),
              ],
            ),
            Center(
              child: MaterialButton(
                elevation: 5,
                onPressed: () {},
                color: Color(0xFF912316),
                minWidth: 350,
                height: 45,
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: <Widget>[
                  SizedBox(width: 10.0),
                  Icon(
                    Icons.fingerprint,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Tap here to sign in with your finger print"),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Having trouble signing in?",
                  style: TextStyle(fontSize: 16),
                ),
                InkWell(
                    onTap: () {},
                    child: Text(
                      "Tap here",
                      style: TextStyle(
                          decoration: TextDecoration.underline, fontSize: 16.0),
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Connect with us",
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    launch("https://www.facebook.com");
                  },
                  child: Image.asset(
                    "images/facebook.png",
                    height: 60,
                  ),
                ),
                InkWell(
                  onTap: () {
                    launch("https://twitter.com/explore");
                  },
                  child: Image.asset(
                    "images/twitter.png",
                    height: 40,
                    color: Colors.blue,
                  ),
                ),
                InkWell(
                  onTap: () {
                    launch("https://www.instagram.com");
                  },
                  child: Image.asset(
                    "images/instagram.png",
                    height: 35,
                  ),
                ),
                InkWell(
                  onTap: () {
                    launch("https://www.youtube.com");
                  },
                  child: Image.asset(
                    "images/youtube.png",
                    height: 45,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
// ========= Bottom tab =========
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF912316),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {},
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: SingleChildScrollView(
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 67,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.lock_outline,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          Icon(
                            Icons.lock_outline,
                            color: Color(0xFF912316),
                          );
                        });
                      },
                    ),
                    Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.payment,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(height: 2),
                    Text(
                      "FonePay",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.location_on,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Branches",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.help_outline,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Others",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
