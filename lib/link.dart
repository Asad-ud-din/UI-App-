import 'package:app/History.dart';
import 'package:app/home.dart';
import 'package:app/link.dart';
import 'package:app/user.dart';
import 'package:flutter/material.dart';

class link extends StatefulWidget {
  const link({Key? key}) : super(key: key);

  @override
  _linkState createState() => _linkState();
}

class _linkState extends State<link> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.all(100),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Container(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder:(context)=>home())
                            );
                      },
                      child: Text("Home")),
                ),
                
              
              Container(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder:(context)=>user())
                            );
                      },
                      child: Text("User")),
                ),
                Container(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder:(context)=>history())
                            );
                      },
                      child: Text("History")),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
