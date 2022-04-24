import 'package:flutter/material.dart';

class Kebab {
  String imageUrl;
  String name;
  String  cost;
  String about;

  Kebab ({required this.imageUrl,required this.name,required this.cost,required this.about});

}
class KebabPage extends StatelessWidget {
  const KebabPage({Key? key}) : super(key: key);

  static List<Kebab> recipe = [
    Kebab(imageUrl: 'assets/images/menu/image_12.jpg', name: 'Саладь', cost: '12000', about: 'мазали'),
    Kebab(imageUrl: 'assets/images/menu/image_12.jpg', name: 'Саладь', cost: '12000', about: 'мазали'),
    Kebab(imageUrl: 'assets/images/menu/image_12.jpg', name: 'Саладь', cost: '12000', about: 'мазали'),
    Kebab(imageUrl: 'assets/images/menu/image_12.jpg', name: 'Саладь', cost: '12000', about: 'мазали'),
    Kebab(imageUrl: 'assets/images/menu/image_12.jpg', name: 'Саладь', cost: '12000', about: 'мазали'),
    Kebab(imageUrl: 'assets/images/menu/image_12.jpg', name: 'Саладь', cost: '12000', about: 'мазали'),
    Kebab(imageUrl: 'assets/images/menu/image_12.jpg', name: 'Саладь', cost: '12000', about: 'мазали'),
    Kebab(imageUrl: 'assets/images/menu/image_12.jpg', name: 'Саладь', cost: '12000', about: 'мазали'),




  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) {
        return kebabCard(recipe[index]);
      },
    );
  }

}
Widget kebabCard(Kebab kebabs) {
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
            child:  Image.asset(kebabs.imageUrl),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 0,left: 0,top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(kebabs.name,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    Text(kebabs.cost,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text(' сум',style: TextStyle(fontSize: 20),),
                  ],
                ),
                Text(kebabs.about,style: TextStyle(fontSize: 20),),
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
