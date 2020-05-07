import 'package:flutter/material.dart';
import 'package:fruitrecipes/model/fruitrecipe.dart';
import 'package:flutter/cupertino.dart';
import 'package:fruitrecipes/recipedirection.dart';

class Recipedirection extends StatefulWidget {
  final Fruitrecipe fruitrecipe;

  const Recipedirection({Key key, this.fruitrecipe}) : super(key: key);

  @override
  _RecipedirectionState createState() => _RecipedirectionState();
}

class _RecipedirectionState extends State<Recipedirection> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.amber,

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only( left: 100, bottom: 200, top:1),
                  child: Container(
                    height: 300,
                    width: 300,
                    //  color: Colors.pink,
                    child: Padding(
                      padding: const EdgeInsets.only(left:120.0, bottom: 150),
                      child: Image.asset(
                        widget.fruitrecipe.imagePath,
                        height: 600,
                        width: 500,
                      ),
                    ),
                  ),
                ),

                Padding(
                    padding: const EdgeInsets.only(top: 180),
                    child: Container(
                      height: screenHeight *2,
                      width: 500,

                      decoration: BoxDecoration(
                       color: Colors.white,

                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50.0),
                            topLeft: Radius.circular(50.0)
                        ),
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: <Widget>[

                            Padding(
                              padding: const EdgeInsets.only(right :10.0),

                              child: Row(
                                children: <Widget>[
                                  Text(widget.fruitrecipe.name,
                                      style:TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),


                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),

                            Text(widget.fruitrecipe.directions,
                                style:TextStyle(color: Colors.black, fontSize: 15)),

                          ],
                        ),
                      ),
                    )),

              ],
            )
          ],
        ),
      ),
    );
  }
}


