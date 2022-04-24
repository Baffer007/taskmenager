import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Recipe {
  String imageUrl;
  String name;
  String  cost;
  String about;

  Recipe ({required this.imageUrl,required this.name,required this.cost,required this.about});

}

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  static List<Recipe> recipe = [
    Recipe(imageUrl: 'assets/images/head/image1.png', name: 'Ош', cost: '22000', about: 'Батафсил:'),
    Recipe(imageUrl: 'assets/images/head/image2.png', name: 'Дулма', cost: '24000 ', about: 'Батафсил:'),
    Recipe(imageUrl: 'assets/images/head/image3.png', name: 'Казан кабоб', cost: '45000', about: 'Батафсил:'),
    Recipe(imageUrl: 'assets/images/head/image4.png', name: 'Жиз', cost: '45000', about: 'Батафсил:'),
    Recipe(imageUrl: 'assets/images/head/image5.png', name: 'Бефстроганов', cost: '25000', about: 'Батафсил:'),
    Recipe(imageUrl: 'assets/images/head/image6.png', name: 'Бифштекс', cost: '25000', about: 'Батафсил:'),
    Recipe(imageUrl: 'assets/images/head/image7.png', name: 'Бешбармок', cost: '45000', about: 'Батафсил:'),
    Recipe(imageUrl: 'assets/images/head/image8.png', name: 'Ганфан', cost: '23000', about: 'Батафсил:'),
    Recipe(imageUrl: 'assets/images/head/image9.png', name: 'Гушт сай', cost: '32000', about: 'Батафсил:'),
    Recipe(imageUrl: 'assets/images/head/image10.png', name: 'Сокоро', cost: '35000', about: 'Батафсил:'),
    Recipe(imageUrl: 'assets/images/head/image11.png', name: 'Сунгборо', cost: '35000', about: 'Батафсил:'),
    Recipe(imageUrl: 'assets/images/head/image12.png', name: 'Товук сай', cost: '25000', about: 'Батафсил:'),
    Recipe(imageUrl: 'assets/images/head/image13.png', name: 'Тухум сай', cost: '22000', about: 'Батафсил:'),
    Recipe(imageUrl: 'assets/images/head/image14.png', name: 'Манты', cost: '5000', about: 'Батафсил:'),
    Recipe(imageUrl: 'assets/images/head/image15.png', name: 'Искондор', cost: '32000', about: 'Батафсил:'),


  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: recipe.length,
      itemBuilder: (BuildContext context, int index) {
        return newsCard(recipe[index]);
      },
    );
  }

}
Widget newsCard(Recipe recipe) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(5),
    ),

    height: 150,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      elevation: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5) ,
            child:  Image.asset(recipe.imageUrl,height: double.infinity,),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 0,left: 0,top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(recipe.name,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    Text(recipe.cost,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text(' сум',style: TextStyle(fontSize: 20),),
                  ],
                ),
                Text(recipe.about,style: TextStyle(fontSize: 20),),
              ],
            ),
          ),


        ],
      ),
    ),
  );
}


