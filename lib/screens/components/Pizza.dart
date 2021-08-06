
import 'package:flutter/material.dart';
import 'package:sho_ui/components/colors.dart';

import '../../main.dart';
import 'itemCard.dart';

class PizzaMenu extends StatefulWidget {
  const PizzaMenu({Key? key}) : super(key: key);

  @override
  _PizzaMenuState createState() => _PizzaMenuState();
}

class _PizzaMenuState extends State<PizzaMenu> {
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
             child: Text('Pizza',
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
                  bgColor: item1Color,
                  price: '77',
                  productName: 'Pepperoni',
                  imageName: 'pizza1'),
              MyItemCard(
                  bgColor: item1Color,
                  productName: 'Buffalo ',
                  price: '80',
                  imageName: 'pizza2'),
            ],
          ),
          SizedBox(height: 5,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyItemCard(
                  bgColor: item1Color,
                  price: '65',
                  productName: 'Hawaiian',
                  imageName: 'pizza3'),
              MyItemCard(
                  bgColor: item1Color,
                  productName: 'Margherita',
                  price: '55',
                  imageName: 'pizza4'),
            ],
          ),
          SizedBox(height: 5,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyItemCard(
                  bgColor: item1Color,
                  price: '65',
                  productName: 'Veggie',
                  imageName: 'pizza5'),
              MyItemCard(
                  bgColor: item1Color,
                  productName: 'Limitless',
                  price: '55',
                  imageName: 'pizza6'),
            ],
          ),
        ]),
      ),
    );
  }
}