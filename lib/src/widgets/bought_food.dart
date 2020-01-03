import 'package:flutter/material.dart';

class BoughtFood extends StatefulWidget {
  final String id;
  final String name;
  final String imagePath;
  final String storeName;
  final String category;
  final double price;
  final double discount;
  final double ratings;

  BoughtFood(
      {this.id,
      this.name,
      this.imagePath,
      this.storeName,
      this.category,
      this.price,
      this.discount,
      this.ratings});
  @override
  _BoughtFoodState createState() => _BoughtFoodState();
}

class _BoughtFoodState extends State<BoughtFood> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 200.0,
            width: 340.0,
            child: Image.asset(
              widget.imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            child: Container(
              height: 60.0,
              width: 320.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.black12,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            right: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontFamily: 'SFPro',
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.storeName,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontFamily: 'SFPro',
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.orangeAccent,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orangeAccent,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orangeAccent,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orangeAccent,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orangeAccent,
                          size: 16.0,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          "(" + widget.ratings.toString() + "Reviews)",
                          style: TextStyle(
                            color: Colors.orangeAccent,
                            fontSize: 16.0,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "₱ " + widget.price.toString(),
                      style: TextStyle(
                        color: Colors.orangeAccent,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SFPro',
                      ),
                    ),
                    Text(
                      "Min Order",
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'SFPro'),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
