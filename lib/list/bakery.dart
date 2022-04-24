import 'package:flutter/material.dart';

class Bakery {
  String imageUrl;
  String name;
  String  cost;
  String about;

  Bakery ({required this.imageUrl,required this.name,required this.cost,required this.about});

}
class BakeryPage extends StatelessWidget {
  const BakeryPage({Key? key}) : super(key: key);

  static List<Bakery> bakery = [
    Bakery(imageUrl: 'assets/images/pilaf.jpg', name: 'Саладь', cost: '4000', about: 'мазали'),
    Bakery(imageUrl: 'assets/images/pilaf.jpg', name: 'Саладь', cost: '2000', about: 'мазали'),
    Bakery(imageUrl: 'assets/images/pilaf.jpg', name: 'Саладь', cost: '2000', about: 'мазали'),
    Bakery(imageUrl: 'assets/images/pilaf.jpg', name: 'Саладь', cost: '2000', about: 'мазали'),
    Bakery(imageUrl: 'assets/images/pilaf.jpg', name: 'Саладь', cost: '2000', about: 'мазали'),
    Bakery(imageUrl: 'assets/images/pilaf.jpg', name: 'Саладь', cost: '2000', about: 'мазали'),
    Bakery(imageUrl: 'assets/images/pilaf.jpg', name: 'Саладь', cost: '2000', about: 'мазали'),
    Bakery(imageUrl: 'assets/images/pilaf.jpg', name: 'Саладь', cost: '2000', about: 'мазали'),




  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) {
        return bakeryCard(bakery[index]);
      },
    );
  }

}
Widget bakeryCard(Bakery bakery) {
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
            child:  Image.asset(bakery.imageUrl),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 0,left: 0,top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(bakery.name,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    Text(bakery.cost,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text(' сум',style: TextStyle(fontSize: 20),),
                  ],
                ),
                Text(bakery.about,style: TextStyle(fontSize: 20),),
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
