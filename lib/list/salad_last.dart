import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class SaladLast {
  String imageUrl;
  String name;
  String  cost;
  String about;

  SaladLast ({required this.imageUrl,required this.name,required this.cost,required this.about});

}

class SaladLastPage extends StatefulWidget {
  const SaladLastPage({Key? key}) : super(key: key);
  static List<SaladLast> recipes = [
    SaladLast(imageUrl: 'assets/images/pilaf.jpg', name: 'Ош', cost: '22000', about: 'мазали'),
    SaladLast(imageUrl: 'assets/images/pilaf.jpg', name: 'Ош', cost: '22000', about: 'мазали'),
    SaladLast(imageUrl: 'assets/images/pilaf.jpg', name: 'Ош', cost: '22000', about: 'мазали'),
    SaladLast(imageUrl: 'assets/images/pilaf.jpg', name: 'Ош', cost: '22000', about: 'мазали'),
    SaladLast(imageUrl: 'assets/images/pilaf.jpg', name: 'Ош', cost: '22000', about: 'мазали'),
    SaladLast(imageUrl: 'assets/images/pilaf.jpg', name: 'Ош', cost: '22000', about: 'мазали'),
    SaladLast(imageUrl: 'assets/images/pilaf.jpg', name: 'Ош', cost: '22000', about: 'мазали'),
    SaladLast(imageUrl: 'assets/images/pilaf.jpg', name: 'Ош', cost: '22000', about: 'мазали'),


  ];

  @override
  State<SaladLastPage> createState() => _SaladLastPageState();
}

class _SaladLastPageState extends State<SaladLastPage> {
  @override
  void initState() {
    super.initState();
    _numberCtrl.text = "+998902223511";
  }

  final TextEditingController _numberCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {

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
      body: lastCard(SaladLastPage.recipes[7],context),
    );
  }

  Widget lastCard(SaladLast saladLast,context) {

    return Column(

      children: [
        Image.asset(saladLast.imageUrl,width: double.infinity),
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
                Center(child: Text(saladLast.name,style: TextStyle(fontSize: 30),)),
                Text(saladLast.about),
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

                      }
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