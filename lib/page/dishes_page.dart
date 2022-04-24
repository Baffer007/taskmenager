import 'package:flutter/material.dart';
import 'package:salvia/list/recipe.dart';
import 'package:salvia/page/last_page.dart';

class DishesPage extends StatelessWidget {
  const DishesPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF860D98),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Image.asset(
              'assets/images/lazerka_4.png',
              height: 50,
              width: 80,
            ),


          ],
        ),
      ),
      body: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => LastPage()));
        },

          child: RecipePage()),
    );
  }
}
