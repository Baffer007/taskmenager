import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:salvia/page/add_page.dart';


import 'package:salvia/page/bakery_page.dart';

import 'package:salvia/page/dishes_page.dart';
import 'package:salvia/page/drink_page.dart';
import 'package:salvia/page/kebab_page.dart';
import 'package:salvia/page/salad_page.dart';
import 'package:salvia/page/soup_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/image.jpg',
            height: MediaQuery.of(context).size.height * 0.25,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18, top: 13),
            child: Text(
              'Menu',
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF8B87B3)),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 18,
                right: 18,
              ),
              child: GridView.count(
                crossAxisSpacing: 19,
                mainAxisSpacing: 19,
                shrinkWrap: true,
                crossAxisCount: 2,
                children: [
                  InkWell(


                    child: Material(
                      borderRadius: BorderRadius.circular(5),
                      shadowColor: const Color(0xFFBBBBBB),
                      elevation: 5,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Image.asset(
                                'assets/images/menu/menu5.jpg',
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 7, bottom: 20),
                              child: Text(
                                'Горячие блюда',
                                style: TextStyle(
                                    color: Color(0xFF686868),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>DishesPage()), );
                    },
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>SaladsPage()), );
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(5),
                      shadowColor: const Color(0xFFBBBBBB),
                      elevation: 5,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Image.asset(
                                'assets/images/menu/image_12.jpg',
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 7, bottom: 20),
                              child: Text(
                                'Салаты',
                                style: TextStyle(
                                    color: Color(0xFF686868),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>SoupsPage()), );
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(5),
                      shadowColor: const Color(0xFFBBBBBB),
                      elevation: 5,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Image.asset(
                                'assets/images/menu/soup.jpg',
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 7, bottom: 20),
                              child: Text(
                                'Супы',
                                style: TextStyle(
                                    color: Color(0xFF686868),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>BakeriesPage()), );
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(5),
                      shadowColor: const Color(0xFFBBBBBB),
                      elevation: 5,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Image.asset(
                                'assets/images/menu/menu2.jpg',
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 7, bottom: 20),
                              child: Text(
                                'Выпечка',
                                style: TextStyle(
                                    color: Color(0xFF686868),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>AddsPage()), );
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(5),
                      shadowColor: const Color(0xFFBBBBBB),
                      elevation: 5,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Image.asset(
                                'assets/images/menu/menu1.jpg',
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 7, bottom: 20),
                              child: Text(
                                'Гарниры и добафки',
                                style: TextStyle(
                                    color: Color(0xFF686868),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>KebabsPage()), );
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(5),
                      shadowColor: const Color(0xFFBBBBBB),
                      elevation: 5,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Image.asset(
                                'assets/images/menu/menu3.jpg',
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 7, bottom: 20),
                              child: Text(
                                'Шашлыки',
                                style: TextStyle(
                                    color: Color(0xFF686868),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>DrinksPage()), );
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(5),
                      shadowColor: const Color(0xFFBBBBBB),
                      elevation: 5,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Image.asset(
                                'assets/images/menu/menu4.jpg',
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 7, bottom: 20),
                              child: Text(
                                'Напитки',
                                style: TextStyle(
                                    color: Color(0xFF686868),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
