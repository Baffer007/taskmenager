import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
class Recipes {
  String imageUrl;
  String name;
  String  cost;
  String about;

  Recipes ({required this.imageUrl,required this.name,required this.cost,required this.about});

}

class LastPage extends StatefulWidget {

  const LastPage({Key? key,}) : super(key: key);

  static List<Recipes> recipes = [
    Recipes(imageUrl: 'assets/images/head/image1.png', name: 'Ош', cost: '22000', about: 'Батафсил:'),
    Recipes(imageUrl: 'assets/images/head/image2.png', name: 'Дулма', cost: '24000 ', about: 'Батафсил:'),
    Recipes(imageUrl: 'assets/images/head/image3.png', name: 'Казан кабоб', cost: '45000', about: 'Батафсил:'),
    Recipes(imageUrl: 'assets/images/head/image4.png', name: 'Жиз', cost: '45000', about: 'Батафсил:'),
    Recipes(imageUrl: 'assets/images/head/image5.png', name: 'Бефстроганов', cost: '25000', about: 'Батафсил:'),
    Recipes(imageUrl: 'assets/images/head/image6.png', name: 'Бифштекс', cost: '25000', about: 'Батафсил:'),
    Recipes(imageUrl: 'assets/images/head/image7.png', name: 'Бешбармок', cost: '45000', about: 'Батафсил:'),
    Recipes(imageUrl: 'assets/images/head/image8.png', name: 'Ганфан', cost: '23000', about: 'Батафсил:'),
    Recipes(imageUrl: 'assets/images/head/image9.png', name: 'Гушт сай', cost: '32000', about: 'Батафсил:'),
    Recipes(imageUrl: 'assets/images/head/image10.png', name: 'Сокоро', cost: '35000', about: 'Батафсил:'),
    Recipes(imageUrl: 'assets/images/head/image11.png', name: 'Сунгборо', cost: '35000', about: 'Батафсил:'),
    Recipes(imageUrl: 'assets/images/head/image12.png', name: 'Товук сай', cost: '25000', about: 'Батафсил:'),
    Recipes(imageUrl: 'assets/images/head/image13.png', name: 'Тухум сай', cost: '22000', about: 'Батафсил:'),
    Recipes(imageUrl: 'assets/images/head/image14.png', name: 'Манты', cost: '5000', about: 'Батафсил:'),
    Recipes(imageUrl: 'assets/images/head/image15.png', name: 'Искондор', cost: '32000', about: 'Батафсил:'),

  ];

  @override
  State<LastPage> createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {

  @override
  void initState() {
    super.initState();
    _numberCtrl.text = "+998902223511";
  }

  final TextEditingController _numberCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    int selecteditemindex = 1;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF860D98),
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 1),
              Image.asset(
                'assets/images/lazerka_4.png',
                height: 50,
                width: 80,
              ),
              Icon(Icons.favorite_border_outlined,size: 30,),
            ],
          ),
        ),
      ),
      body: lastCard(LastPage.recipes[selecteditemindex]),
    );
  }

  Widget lastCard(Recipes recipes) {

    return Column(

      children: [
        Image.asset(recipes.imageUrl,width: double.infinity),
        Expanded(
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.black54,
                    ),
                    SizedBox(width: 5,),
                    Text("Мирзо Улугбек, улица Авайхон. \nМулжал: ОлтинТепа Масжид ёнида",),

                  ],
                ),
                Center(child: Text(recipes.name,style: TextStyle(fontSize: 30),)),
                Text(recipes.about),
                SizedBox(height: 5,),
                Center(
                  child: Container(
                    width: double.infinity,
                    height: 54,




                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF860D98),
                      ),
                      child: const Text("Буюртма бериш"),
                      onPressed: ()async{
                        FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);

                      },
                    ),
                  ),
                ),


              ],
            ),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )
            ),
          ),
        ),


      ],
    );
  }
}
