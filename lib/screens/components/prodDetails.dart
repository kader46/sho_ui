import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:sho_ui/components/colors.dart';

class ProdDetails extends StatefulWidget {
  final String productName;
  final Color bgColor;
  final String imageName;
  final String price;
  const ProdDetails(
      {Key? key,
      required this.productName,
      required this.bgColor,
      required this.imageName,
      required this.price})
      : super(key: key);

  @override
  _ProdDetailsState createState() => _ProdDetailsState();
}

class _ProdDetailsState extends State<ProdDetails> {
  @override
  Widget build(BuildContext context) {
    timeDilation = 3.0;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 120,
        title: Text(
          'Product Detail',
          style: TextStyle(color: Colors.white, fontSize: 43),
        ),
        backgroundColor: widget.bgColor,
      ),
      // backgroundColor: widget.bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.productName,
                  style: TextStyle(color: Colors.black, fontSize: 43),
                ),
                SizedBox(height: 20,),
                Hero(
                  tag: widget.imageName,
                  child: SizedBox(
                      width: 700,
                      child: Image.asset(
                        "Assets/images/products/${widget.imageName}.png",
                      )),
                ),
                Text(
                'Price: ${widget.price}\$',
                style: TextStyle(color: widget.bgColor, fontSize: 24),
                ),
                
                
                Divider(),
                 Text(
                  'Ingrediants',
                  style: TextStyle(color: widget.bgColor, fontSize: 24),
                ),

                Text(
                  '1-Tomato\n2-bread\n3-Mel7',
                  style: TextStyle(color:Colors.black, fontSize: 14),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
