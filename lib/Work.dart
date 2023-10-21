
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Work extends StatelessWidget {
  const Work({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (title: Text("Home"),
        // this is work page

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 60, color: Colors.lightBlue,),
            Text("this is for the work thing")
          ],
        ),
      ),
    );
  }
}
