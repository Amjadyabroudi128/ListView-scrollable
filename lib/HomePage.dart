import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(9.0),
            child: Container(
              height: 200,
              color: Colors.red,
              child: Center(child: Text("Hello", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(9.0),
            child: Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        color: Colors.blue
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person, size: 50,),
                          Text("Profile", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                        ],
                      )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.work, size: 50,),
                          Text("WORK TIME", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.home, size: 40,),
                          Text("home ", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, ),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(9.0),
            child: Container(
              height: 200,
              color: Colors.red,
              child: Center(child: Text("Hello", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(9.0),
            child: Container(
              height: 200,
              color: Colors.red,
              child: Center(child: Text("Hello", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
            ),
          ),
        ],
      )
    );
  }
}
