import 'package:flutter/material.dart';
import 'package:fruitrecipes/model/fruitrecipe.dart';
import 'package:flutter/cupertino.dart';
import 'package:fruitrecipes/recipedirection.dart';

class Fruit_Recipe_Detail extends StatefulWidget {
  final Fruitrecipe recipedetail;

  const Fruit_Recipe_Detail({Key key, this.recipedetail}) : super(key: key);

  @override
  _Fruit_Recipe_DetailState createState() => _Fruit_Recipe_DetailState();
}

class _Fruit_Recipe_DetailState extends State<Fruit_Recipe_Detail> {
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
                        widget.recipedetail.imagePath,
                        height: 600,
                        width: 500,
                      ),
                    ),
                  ),
                ),



                Padding(
                    padding: const EdgeInsets.only(top: 180),
                    child: Container(
                      height: screenHeight*0.9,
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
                                  Text(widget.recipedetail.name,
                                      style:TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),

                                  SizedBox(width: 90,),

                                 RaisedButton(
                                   color: Colors.cyan,
                                   textColor: Colors.purple,
                                   child: Text("Recipe"),

                                   onPressed: (){

                                     Navigator.of(context).push(MaterialPageRoute(
                                   builder: (context) => Recipedirection(
                                     fruitrecipe: widget.recipedetail,

                                         )
                                     ));

                                   },


                                 )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),

                            Text(widget.recipedetail.recipeText,
                                style:TextStyle(color: Colors.black, fontSize: 15)),

                            SizedBox(height: 30,),

                            Text("Ingredients",
                              style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),

                            Container(
                                height: 350,
                                width: screenWidth,

                                child: ListView(
                                  scrollDirection: Axis.vertical,

                                  children: <Widget>[
                                    ListTile(
                                        title: Text(widget.recipedetail.ing1name,
                                          style: TextStyle(fontWeight: FontWeight.w500),
                                        ),

                                        leading: CircleAvatar(
                                          backgroundImage: AssetImage(widget.recipedetail.ing1img),
                                        ),
                                        // trailing: Text("8:03"),
                                        trailing: Text(widget.recipedetail.ing1qty)
                                    ),

                                    Divider(),
                                    ListTile(
                                        title: Text(widget.recipedetail.ing2name,
                                          style: TextStyle(fontWeight: FontWeight.w500),
                                        ),

                                        leading: CircleAvatar(
                                          backgroundImage: AssetImage(widget.recipedetail.ing2img),
                                        ),
                                        // trailing: Text("8:03"),
                                        trailing: Text(widget.recipedetail.ing2qty)
                                    ),

                                    Divider(),
                                    ListTile(
                                        title: Text(widget.recipedetail.ing3name,
                                          style: TextStyle(fontWeight: FontWeight.w500),
                                        ),

                                        leading: CircleAvatar(
                                          backgroundImage: AssetImage(widget.recipedetail.ing3img),
                                        ),
                                        // trailing: Text("8:03"),
                                        trailing: Text(widget.recipedetail.ing3qty)
                                    ),

                                    Divider(),
                                    ListTile(
                                        title: Text(widget.recipedetail.ing4name,
                                          style: TextStyle(fontWeight: FontWeight.w500),
                                        ),

                                        leading: CircleAvatar(
                                          backgroundImage: AssetImage(widget.recipedetail.ing4img),
                                        ),
                                        // trailing: Text("8:03"),
                                        trailing: Text(widget.recipedetail.ing4qty)
                                    ),

                                    Divider(),
                                    ListTile(
                                        title: Text(widget.recipedetail.ing5name,
                                          style: TextStyle(fontWeight: FontWeight.w500),
                                        ),

                                        leading: CircleAvatar(
                                          backgroundImage: AssetImage(widget.recipedetail.ing5img),
                                        ),
                                        // trailing: Text("8:03"),
                                        trailing: Text(widget.recipedetail.ing5qty)
                                    ),


                                  ],


                                )
                            )
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


