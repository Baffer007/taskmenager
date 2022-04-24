import 'package:flutter/material.dart';

class Soup {
  String imageUrl;
  String name;
  String  cost;
  String about;

  Soup ({required this.imageUrl,required this.name,required this.cost,required this.about});

}
class SoupPage extends StatelessWidget {
  const SoupPage({Key? key}) : super(key: key);

  static List<Soup> recipe = [
    Soup(imageUrl: 'assets/images/pilaf.jpg', name: 'Саладь', cost: '2000', about: 'мазали'),
    Soup(imageUrl: 'assets/images/pilaf.jpg', name: 'Саладь', cost: '2000', about: 'мазали'),
    Soup(imageUrl: 'assets/images/pilaf.jpg', name: 'Саладь', cost: '2000', about: 'мазали'),
    Soup(imageUrl: 'assets/images/pilaf.jpg', name: 'Саладь', cost: '2000', about: 'мазали'),
    Soup(imageUrl: 'assets/images/pilaf.jpg', name: 'Саладь', cost: '2000', about: 'мазали'),
    Soup(imageUrl: 'assets/images/pilaf.jpg', name: 'Саладь', cost: '2000', about: 'мазали'),
    Soup(imageUrl: 'assets/images/pilaf.jpg', name: 'Саладь', cost: '2000', about: 'мазали'),
    Soup(imageUrl: 'assets/images/pilaf.jpg', name: 'Саладь', cost: '2000', about: 'мазали'),



  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) {
        return soupCard(recipe[index]);
      },
    );
  }

}
Widget soupCard(Soup soup) {
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
            child:  Image.asset(soup.imageUrl),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 0,left: 0,top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(soup.name,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    Text(soup.cost,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text(' сум',style: TextStyle(fontSize: 20),),
                  ],
                ),
                Text(soup.about,style: TextStyle(fontSize: 20),),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.favorite_border,size: 30,),
          ),
        ],
      ),
    ),
  );
}
