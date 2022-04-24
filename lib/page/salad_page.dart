import 'package:flutter/material.dart';
import 'package:salvia/list/salad.dart';
import 'package:salvia/list/salad_last.dart';

class SaladsPage extends StatelessWidget {
  const SaladsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
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
              Material(
                elevation: 2,
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  child: const CircleAvatar(
                      backgroundColor: Color(0xFF63DA50),
                      backgroundImage: AssetImage('assets/favourite.png')),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Color(0xFF63DA50),
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
            ],
          ),
        ),
      ),
      body: InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SaladLastPage()));

          },
          child: SaladPage()),
    );
  }
}
