
import 'package:flutter/material.dart';
import 'package:sho_ui/components/colors.dart';

import '../../main.dart';
import 'itemCard.dart';

class SanMenu extends StatefulWidget {
  const SanMenu({Key? key}) : super(key: key);

  @override
  _SanMenuState createState() => _SanMenuState();
}

class _SanMenuState extends State<SanMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'Limitless Recipes',
      //     style: TextStyle(color:item1Color, fontSize: 45),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Colors.white,
      //   toolbarHeight: 100,
      // ),
      body: SafeArea(
        child: ListView(children: [
           SizedBox(height: 10,),
           Center(
             child: Text('Sandawich',
             style: TextStyle(
               fontFamily: 'Cute',
               color: item5Color,
               fontSize: 42
               ),
             ),
           ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyItemCard(
                  bgColor: item6Color,
                  price: '77',
                  productName: 'Kabeb Souri',
                  imageName: 'san1'),
              MyItemCard(
                  bgColor: item6Color,
                  productName: 'Meat Souri',
                  price: '80',
                  imageName: 'san2'),
            ],
          ),
          SizedBox(height: 5,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyItemCard(
                  bgColor: item6Color,
                  price: '65',
                  productName: 'Chicken Fresh',
                  imageName: 'san3'),
              MyItemCard(
                  bgColor: item6Color,
                  productName: 'Philly Steak ',
                  price: '85',
                  imageName: 'san4'),
            ],
          ),
          SizedBox(height: 5,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyItemCard(
                  bgColor: item6Color,
                  price: '65',
                  productName: 'The Original ',
                  imageName: 'ham1'),
              MyItemCard(
                  bgColor: item6Color,
                  productName: 'King Burger',
                  price: '75',
                  imageName: 'ham2'),
            ],
          ),
        ]),
      ),
    );
  }
}