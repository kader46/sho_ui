import 'package:flutter/material.dart';
import 'package:sho_ui/components/colors.dart';
import 'package:sho_ui/screens/components/Pizza.dart';
import 'package:sho_ui/screens/components/bois.dart';
import 'package:sho_ui/screens/components/itemCard.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:coast/coast.dart';
import 'package:sho_ui/screens/components/san.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: ShopMain(),
    );
  }
}

class ShopMain extends StatefulWidget {
  const ShopMain({Key? key}) : super(key: key);

  @override
  _ShopMainState createState() => _ShopMainState();
}

class _ShopMainState extends State<ShopMain> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Limitless Recipes',
          style: TextStyle(color: item1Color, fontFamily: 'Cute',fontSize: 45),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        toolbarHeight: 100,
      ),
      body:
       SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: PageIndicatorContainer(
            align: IndicatorAlign.bottom,
            length: 4,
            indicatorSpace: 20.0,
            padding: const EdgeInsets.all(10),
            indicatorColor: Colors.white,
            indicatorSelectorColor: item1Color,
            shape: IndicatorShape.circle(size: 12),
            child: PageView(
              children: [
                PizzaMenu(),
                SanMenu(),
                DrinksMenu(),
                Text('4'),
              ],
            ),
          ),
          // child: ListView(children: [
          //    SizedBox(height: 20,),
          //   Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       MyItemCard(
          //           bgColor: item6Color,
          //           price: '77',
          //           productName: 'Monarch IV',
          //           imageName: 'salade1'),
          //       MyItemCard(
          //           bgColor: item6Color,
          //           productName: 'Air Max 270',
          //           price: '80',
          //           imageName: 'sh5'),
          //     ],
          //   ),
          //   SizedBox(height: 20,),
          //    Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       MyItemCard(
          //           bgColor: item6Color,
          //           price: '65',
          //           productName: 'Wearallday',
          //           imageName: 'sh4'),
          //       MyItemCard(
          //           bgColor: item6Color,
          //           productName: 'Buurger King',
          //           price: '55',
          //           imageName: 'sh1'),
          //     ],
          //   ),
          //   SizedBox(height: 20,),
          //    Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       MyItemCard(
          //           bgColor: item6Color,
          //           price: '65',
          //           productName: 'Marguerita',
          //           imageName: 'pizza1'),
          //       MyItemCard(
          //           bgColor: item6Color,
          //           productName: 'King Burger',
          //           price: '55',
          //           imageName: 'burger1'),
          //     ],
          //   ),
          // ]),
        ),
      ),
    );
  }
}
