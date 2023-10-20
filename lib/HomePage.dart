import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listview/Home.dart';
import 'package:listview/Profile.dart';
import 'package:listview/Work.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview"),
      ),
      body: Scrollbar(
      thumbVisibility: true,
      trackVisibility: true,
        controller: _firstController,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(9.0),
              child: Container(
               child: Card(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text(
                       "About us", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                     ),
                     SizedBox(height: 10,),
                     Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor "
                         "incididunt ut labore et dolore magna aliqua."
                         " Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", style: TextStyle(fontSize: 15),)
                   ],
                 ),
               ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(9.0),
              child: Container(
                height: 200,
                child: CupertinoScrollbar(
                  thumbVisibility: true,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              CupertinoPageRoute(builder: (context) =>  Profile()),
                            );
                          },
                          child: Container(
                            width: 150,
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
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              CupertinoPageRoute(builder: (context) =>  Work()),
                            );
                          },
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
                                Text("WORK ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: GestureDetector(
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
                          onTap: (){
                            Navigator.push(
                              context,
                              CupertinoPageRoute(builder: (context) =>  Home()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(9.0),
              child: Container(
                height: 200,
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Features", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(height: 10,),
                      Text("omg this app has so many features and really interesting app ideas ")
                    ],
                  ),
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
            Padding(
              padding: EdgeInsets.all(9.0),
              child: Container(
                height: 200,
                color: Colors.red,
                child: Center(child: Text("Hello", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
              ),
            ),
          ],
        ),
      )
    );
  }
}
