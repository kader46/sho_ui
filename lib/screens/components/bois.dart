
import 'package:flutter/material.dart';
import 'package:sho_ui/components/colors.dart';

import '../../main.dart';
import 'itemCard.dart';

class DrinksMenu extends StatefulWidget {
  const DrinksMenu({Key? key}) : super(key: key);

  @override
  _DrinksMenuState createState() => _DrinksMenuState();
}

class _DrinksMenuState extends State<DrinksMenu> {
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
             child: Text('Drinks',
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
                  productName: 'Pressed Juice',
                  imageName: 'drink1'),
              MyItemCard(
                  bgColor: item6Color,
                  productName: 'Canatte',
                  price: '80',
                  imageName: 'drink2'),
            ],
          ),
          SizedBox(height: 5,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyItemCard(
                  bgColor: item6Color,
                  price: '65',
                  productName: 'Drinks L1',
                  imageName: 'drink3'),
              MyItemCard(
                  bgColor: item6Color,
                  productName: 'Mokhito',
                  price: '85',
                  imageName: 'drink4'),
            ],
          ),
          SizedBox(height: 5,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyItemCard(
                  bgColor: item6Color,
                  price: '65',
                  productName: 'Panachi',
                  imageName: 'drink5'),
              MyItemCard(
                  bgColor: item6Color,
                  productName: 'Lben',
                  price: '75',
                  imageName: 'drink6'),
            ],
          ),
        ]),
      ),
    );
  }
}