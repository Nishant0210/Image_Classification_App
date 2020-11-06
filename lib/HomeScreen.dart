import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff885566),
        title: Text("Image Classification App"),
        actions: [
          IconButton(
              //color: Colors.amber,
              icon: Icon(Icons.perm_identity),
              // color: Colors.red,
              onPressed: null),
          IconButton(
              icon: Icon(Icons.search), color: Colors.red, onPressed: null),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        //color: Colors.amber,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/homescreen.jpg'),
                fit: BoxFit.cover)),
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  shadowColor: Colors.white,
                  elevation: 10,
                  child: Container(
                    width: 200,
                    height: 50,
                    color: Colors.green[300],
                    alignment: Alignment.center,
                    /*decoration: BoxDecoration(
                      color: Colors.green[300],
                      borderRadius: BorderRadius.circular(100),
                    ),*/
                    child:
                        Text('Select Option', style: TextStyle(fontSize: 18)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.green[300],
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: RaisedButton.icon(
                    shape: StadiumBorder(),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "Gallery");
                    },
                    label: Text(
                      "Gallery",
                    ),
                    icon: Icon(
                      Icons.image,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 150,
                  height: 50,
                  child: RaisedButton.icon(
                    shape: StadiumBorder(),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "Camera");
                    },
                    label: Text(
                      "Camera",
                    ),
                    icon: Icon(
                      Icons.camera,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
