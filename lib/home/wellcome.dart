import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget WellCome(){
  return Scaffold(
    body: Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Column(

        // Column is also a layout widget. It takes a list of children and
        // arranges them vertically. By default, it sizes itself to fit its
        // children horizontally, and tries to be as tall as its parent.
        //
        // Column has various properties to control how it sizes itself and
        // how it positions its children. Here we use mainAxisAlignment to
        // center the children vertically; the main axis here is the vertical
        // axis because Columns are vertical (the cross axis would be
        // horizontal).
        //
        // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
        // action in the IDE, or press "p" in the console), to see the
        // wireframe for each widget.
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(60),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4.0,
                  offset: Offset(0, 0),
                  spreadRadius: 0.9,
                ),
              ],
              borderRadius: BorderRadius.circular(2000),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(2000.0),
              child: Image.asset("assets/FavourFinder.png"),
            ),
          ),

          const Text(
            'あまおつ',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.grey),
          ),
          Text("あなたの周りのお使い",style: TextStyle(fontSize: 20 ,color: Colors.grey),
          ),
        ],
      ),
    ),
    floatingActionButton: SizedBox(
      width: 300.0,
      height: 50.0,
      child: FloatingActionButton.extended(

        backgroundColor: Colors.red,
        onPressed: () {},
        label: Text("はじめる",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
      ),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
  );
}