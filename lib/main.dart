import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruitrecipes/fruit_recipe_detail.dart';
//import 'package:fruitrecipes/main.dart';
import 'package:fruitrecipes/model/fruitrecipe.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'fruit Demo',
      theme: ThemeData(
        // This is the theme of your application.

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
backgroundColor: Colors.cyan,

      body: SingleChildScrollView(
        child: Column(


          children: <Widget>[

          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:250.0),
                child: Container(
                  color: Colors.white,
                  width: screenWidth*2,
                  height: screenHeight,


                 child: Padding(
                    padding: const EdgeInsets.only(top:240.0, left: 25, right: 25, bottom: 100),
                    child: Container(
                      height: 200,
                      width: 160,
                      //color: Colors.deepOrange,

                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text("Your Favorites", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
                            ],
                          ),
                            //  SizedBox(height: 10,),

                              Container(
                               //color: Colors.purpleAccent,
                                height: 150,
                                width: 300,

                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                  //  SizedBox(height: 20,),
                                    Container(

                                                child: Image.asset(
                                                  fruitrecipes[0].imagePath,
                                                  height: 130,
                                                  width: 130,
                                                ),


                                      ),


                                   SizedBox(width: 20,),
                                    Container(


                                      child: Image.asset(
                                        fruitrecipes[2].imagePath,
                                        height: 130,
                                        width: 130,
                                      ),

                                    ),
                                    SizedBox(width: 20,),

                                    Container(

                                      child: Image.asset(
                                        fruitrecipes[3].imagePath,
                                        height: 130,
                                        width: 130,
                                      ),

                                    ),
                                  ],
                                ),

                              ),





                        ],
                      ),

                    ),
                  ),


                ),
              ),

              /*  Container(
           height: 250,
           width: screenWidth,
           color: Colors.cyan,
         ),*/


              Padding(
                padding: const EdgeInsets.only (top:90.0, left: 35),

                child: Container(
                  height: 392,
                  width: screenWidth,

                  decoration: BoxDecoration(
                    color: Colors.white,

                    borderRadius: BorderRadius.only(

                        bottomLeft: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30)
                    ),
                  ),


                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(

                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top:30.0, right:120),

                          child: Text("Fruit Recipes",
                              style:TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                        ),

                        SizedBox(height: 6,),
                        Padding(
                          padding: const EdgeInsets.only(top: 10,right:100.0, left: 20),
                          child: Text("Enjoy one of our delicious fruit recipes",
                              style:TextStyle(color: Colors.black, fontSize: 15)),
                        ),

                        SizedBox(height: 7,),


                        Container(
                          height: 250,
                          width: 300,
                        //   color: Colors.purpleAccent,

                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: fruitrecipes.length,
                              itemBuilder: (BuildContext ctxt, int index) {
                                Fruitrecipe fruitrecipe = fruitrecipes[index];
                                return Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: InkWell(
                                    onTap: ()=>Navigator.push(context, MaterialPageRoute(
                                        builder: (_)=> Fruit_Recipe_Detail(
                                          recipedetail: fruitrecipe,
                                        )
                                    )),
                                    child: Container(

//color: Colors.tealAccent,
                                      child: Stack(

                                        children: <Widget>[

                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Align(
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                  padding: const EdgeInsets.only(left: 18,top: 2),
                                                  child: Container(
                                                    height: 200,
                                                    width: 130,
                                                    child: Center(
                                                        child: Padding(
                                                          padding: const EdgeInsets.only(left: 5, right:22, top:80),
                                                          child: Column(
                                                            children: <Widget>[
                                                              Text(fruitrecipe.name,style: TextStyle(
                                                                  fontWeight: FontWeight.bold,
                                                                  color: Colors.white,
                                                                  fontSize: 18
                                                              ),

                                                              ),
                                                              SizedBox(height: 10,),

                                                              Text(fruitrecipe.recipeText,style: TextStyle(
                                                                  color: Colors.white,
                                                                  fontSize: 10
                                                              ),

                                                              ),

                                                              SizedBox(height: 18,),
                                                              Text(fruitrecipe.calories,style: TextStyle(
                                                                  color: Colors.white,
                                                                  fontSize: 14
                                                              ),

                                                              ),


                                                            ],
                                                          )
                                                        )),
                                                    decoration: BoxDecoration(
                                                        color: Color(fruitrecipe.color),
                                                        borderRadius: BorderRadius.circular(20)
                                                    ),
                                                  ),
                                                )

                                            ),
                                          ),

                                              Padding(
                                                padding: const EdgeInsets.only(left:100.0, bottom: 150),
                                                child: Image.asset(
                                                  fruitrecipe.imagePath,
                                                //  height: 120,
                                                 // width: 140,
                                                ),
                                              ),


                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }
                          ),
                        )




                      ],

                    ),
                  ),





                ),
              ),


            ],
          ),
      ],
        )

      )
    );

  }
}






















