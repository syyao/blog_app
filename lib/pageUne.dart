import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'PageHi.dart';
import 'PageWelcome.dart';

class PageUne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 3),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "SLOPE",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Image(width: 300, image: AssetImage("images/img.png")),
          SizedBox(
            height: 40,
          ),
          Text(
            "Hello !",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Best place to white life stories and \n share your journey experiences",
            style: TextStyle(
                color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PageWelcome();
              }));
            },
            child: Container(
              height: 40,
              width: 190,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xff0900A6)),
              alignment: Alignment.center,
              child: Text(
                "LOGIN",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PageHi();
              }));
            },
            child: Container(
              height: 40,
              width: 190,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Color(0xff0900A6), width: 3),
                  color: Color(0xffFFF)),
              alignment: Alignment.center,
              child: Text(
                "SIGNUP",
                style: TextStyle(
                    color: Color(0xff0900A6), fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
