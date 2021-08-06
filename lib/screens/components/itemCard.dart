
import 'package:coast/coast.dart';
import 'package:flutter/material.dart';
import 'package:sho_ui/screens/components/prodDetails.dart';

class itemCard extends StatefulWidget {
  final Color bgColor;
  final String productName;
  final String photo;
  final String price;
  final String imageName;
  const itemCard(
      {Key? key,
      required this.bgColor,
      required this.productName,
      required this.photo,
      required this.price,
      required this.imageName})
      : super(key: key);

  @override
  _itemCardState createState() => _itemCardState();
}

class _itemCardState extends State<itemCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Hero(
        tag: widget.photo,
        child: Material(
          child: InkWell(
            onTap: () {
              print('Cliiiiiiicked');
              Navigator.push(context, 
              MaterialPageRoute(
                builder: (context)=> ProdDetails(
                      productName: widget.productName,
                      bgColor: widget.bgColor,
                      imageName: widget.imageName,
                      price: widget.price)
              )) ;
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => ProdDetails(
              //         productName: widget.productName,
              //         bgColor: widget.bgColor,
              //         imageName: widget.imageName,
              //         price: widget.price)));
                       print('222222222222');
            },
            child: Card(
              margin: EdgeInsets.all(4),
              shape: RoundedRectangleBorder(
                
                borderRadius: BorderRadius.circular(15)),
              elevation: 8,
              shadowColor: widget.bgColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.asset('Assets/images/products/${widget.imageName}.png',width: 140,),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(widget.productName, style: TextStyle(color: Colors.grey)),
                        SizedBox(width: 45,),
                      Text('${widget.price}\$', style: TextStyle(color: Colors.black)),
                      ],
                    ),
                     
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyItemCard extends StatelessWidget {
  final Color bgColor;
  final String productName;
  final String imageName;
  final String price;

  const MyItemCard(
      {Key? key,
      required this.bgColor,
      required this.productName,
      required this.imageName,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        itemCard(
            bgColor: bgColor,
            productName: productName,
            photo: imageName,
            imageName: imageName,
            price: price),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Row(children: [
           // Text(productName, style: TextStyle(color: Colors.grey)),
            SizedBox(
              width: 50,
            ),
            //Text('$price\$', style: TextStyle(color: Colors.black)),
          ]),
        ),
      ],
    );
  }
}