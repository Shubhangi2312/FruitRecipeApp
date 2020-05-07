
class Fruitrecipe
{
    String name;
    int color;
    String imagePath;
    String recipeText;
    String kcal;
    String calories;
   //String Ingredient.ing1;
   String ing1name;
    String ing2name;
    String ing3name;
   String  ing4name;
   String ing5name;

   String ing1qty;
   String ing2qty;
   String ing3qty;
   String ing4qty;
   String ing5qty;

   String ing1img;
   String ing2img;
   String ing3img;
   String ing4img;
   String ing5img;

   String directions;



   Fruitrecipe({this.name, this.color, this.imagePath, this.recipeText, this.ing1name,this.ing2name, this.ing3name,this.ing4name, this.ing5name, this.ing1img, this.ing2img,
   this.ing3img, this.ing4img, this.ing5img, this.ing1qty, this.ing2qty, this.ing3qty, this.ing4qty, this.ing5qty, this.directions, this.kcal, this.calories});

}

List fruitrecipes = [

  Fruitrecipe(
     name: "Fruit Salad",
      color: 0xFFF5BD17,
      imagePath: "images/fruitsalad.png",
     recipeText: "A refreshing and incredible tasting fruit salad",
    calories: "248 kcal",

    ing1name: "Strawberries",
     ing2name: "Blueberries",
     ing3name: "Kiwi",
     ing4name: "Cherry",
     ing5name: "Mango",

      ing1img: "images/strawberry.png",
      ing2img: "images/blueberry.png",
      ing3img: "images/kiwi.png",
      ing4img: "images/cherry.png",
      ing5img: "images/mango.png",

      ing1qty: "400 g",
      ing2qty: "200 g",
      ing3qty: "100 g",
      ing4qty: "100 g",
      ing5qty: "150 g",
directions: "1. Prepare fruit: chop fruits (except blueberries) and add to a large mixing bowl.\n \n \n 2.Make dressing: in a small mixing bowl, whisk together they honey, lime zest and lime juice.\n \n3. Toss fruit with dressing: pour dressing over fruit just before serving and toss to evenly coat."
  ),

  Fruitrecipe(
    name: " Apple Pie",
    color: 0xFFF5BD17,
    imagePath: "images/applepie.png",
    recipeText: "A refreshing and incredible tasting apple pie",
    calories: "280 kcal",

    ing1name: "Apple",
    ing2name: "Sugar",
    ing3name: "Egg",
    ing4name: "Butter",
      ing5name: "Pie Crust",

      ing1img: "images/apple.jpg",
      ing2img: "images/sugar.png",
      ing3img: "images/egg.png",
      ing4img: "images/butter.jpg",
      ing5img: "images/pastry.jpg",

      ing1qty: "6 to 7 cups",
      ing2qty: "1/2 cup",
      ing3qty: "1",
      ing4qty: "1 tspoon",
      ing5qty: "1",

      directions: "1. In a small bowl, combine the sugars, flour and spices; set aside. In a large bowl, toss apples with lemon juice. Add sugar mixture; toss to coat \n\n 2. Line a 9-in. pie plate with bottom crust; trim even with edge. Fill with apple mixture; dot with butter. Roll remaining crust to fit top of pie; place over filling. Trim, seal and flute edges. Cut slits in crust \n\n 3. Beat egg white until foamy; brush over crust. Sprinkle with sugar. Cover edges loosely with foil. \n\n 4.Bake at 375° for 25 minutes. Remove foil and bake until crust is golden brown and filling is bubbly, 20-25 minutes longer. Cool on a wire rack.",
  ),

 Fruitrecipe(
    name: "Green Salad",
     color: 0xFFF5BD17,
     imagePath: "images/greensalad.png",
    recipeText: "Refreshing and increadible tasting green salad",
     calories: "250 kcal",

     ing1name: "Onion",
    ing2name: "Tomato",
    ing3name: "Salt",
    ing4name: "Mixed Salad greens",
   ing5name: "black pepper",

   ing1qty: "1/2 cup",
   ing2qty: "1/2 cup",
   ing3qty: "2 pinches",
   ing4qty: "2 packages",
   ing5qty: "1 pinch",

   ing1img: "images/onion.png",
   ing2img: "images/tomato.png",
   ing3img: "images/salt.jpg",
   ing4img: "images/greensalad.png",
   ing5img: "images/blackpepper.jpg",

   directions: "1. Microwave or saute onion and bell pepper until soft; set aside to cool. \n\n 2. In a large salad bowl, combine the onion, pepper, salad greens, deli meat and tomato. Sprinkle with the onion powder, garlic powder, black pepper and salt. Toss to mix.\n\n 3. Pour on enough salad dressing or vinegar to coat, toss again and serve."
  ),

  Fruitrecipe(
      name: "Cherry Pie",
      //color: 0xFF00BCD4,
      color: 0xFFF5BD17,
      imagePath: "images/cherrypie.png",
      recipeText: "Refreshing and incradible tasting cherry pie",
      calories: "270 kcal",


      ing1name: "Cherries",
      ing2name: "Sugar",
      ing3name: "Cornstarch",
      ing4name: "Butter",
      ing5name: "Pie Crust",

      ing1qty: "4 cup",
      ing2qty: "1 cup",
      ing3qty: "4 tspoon",
      ing4qty: "1 tspoon",
      ing5qty: "1",

      ing1img: "images/cherry.png",
      ing2img: "images/sugar.png",
      ing3img: "images/cornstarch.jpg",
      ing4img: "images/butter.jpg",
      ing5img: "images/piecrust.jpg",

directions: "1. Place cherries in medium saucepan and place over heat. Cover. \n\n2. After the cherries lose considerable juice, which may take a few minutes, remove from heat.\n\n3.  In a small bowl, mix the sugar and cornstarch together.\n\n 4. Pour this mixture into the hot cherries and mix well. Add the almond extract, if desired, and mix. \n\n 5. Return the mixture to the stove and cook over low heat until thickened, stirring frequently. \n\n 6. Remove from the heat and let cool. If the filling is too thick, add a little water, too thin, add a little more cornstarch. \n \n7. Use your favorite pie dough recipe. Prepare your crust. Divide in half.\n\n 8.  Roll out each piece large enough to fit into an 8 to 9-inch pan. Pour cooled cherry mixture into the crust. Dot with butter. \n\n 9. Moisten edge of bottom crust. Place top crust on and flute the edge of the pie. Make a slit in the middle of the crust for steam to escape. Sprinkle with sugar. \n \n10. Bake for about 50 minutes. Remove from the oven and place on a rack to cool."  ),
];




