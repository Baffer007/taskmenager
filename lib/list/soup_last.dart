import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
class SoupsLast {
  String imageUrl;
  String name;
  String  cost;
  String about;

  SoupsLast ({required this.imageUrl,required this.name,required this.cost,required this.about});

}

class SoupLastPage extends StatefulWidget {
  const SoupLastPage({Key? key}) : super(key: key);
  static List<SoupsLast> soups = [
    SoupsLast(imageUrl: 'assets/images/pilaf.jpg', name: 'Ош', cost: '33000', about: 'мазали'),
    SoupsLast(imageUrl: 'assets/images/pilaf.jpg', name: 'Ош', cost: '33000', about: 'мазали'),
    SoupsLast(imageUrl: 'assets/images/pilaf.jpg', name: 'Ош', cost: '33000', about: 'мазали'),
    SoupsLast(imageUrl: 'assets/images/pilaf.jpg', name: 'Ош', cost: '33000', about: 'мазали'),
    SoupsLast(imageUrl: 'assets/images/pilaf.jpg', name: 'Ош', cost: '33000', about: 'мазали'),
    SoupsLast(imageUrl: 'assets/images/pilaf.jpg', name: 'Ош', cost: '33000', about: 'мазали'),
    SoupsLast(imageUrl: 'assets/images/pilaf.jpg', name: 'Ош', cost: '33000', about: 'мазали'),
    SoupsLast(imageUrl: 'assets/images/pilaf.jpg', name: 'Ош', cost: '33000', about: 'мазали'),



  ];

  @override
  State<SoupLastPage> createState() => _SoupLastPageState();
}

class _SoupLastPageState extends State<SoupLastPage> {
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
      body: lastCard(SoupLastPage.soups[7]),
    );
  }

  Widget lastCard(SoupsLast soupsLast) {

    return Column(

      children: [
        Image.asset(soupsLast.imageUrl,width: double.infinity),
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
                Center(child: Text(soupsLast.name,style: TextStyle(fontSize: 30),)),
                Text(soupsLast.about),
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