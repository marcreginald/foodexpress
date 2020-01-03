import 'package:flutter/material.dart';

class HomeTopInfo extends StatelessWidget {
  const HomeTopInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
        fontFamily: 'SFPro', fontSize: 32.0, fontWeight: FontWeight.bold);
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "FoodExpress",
                style: TextStyle(
                    fontFamily: 'SFPro',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "What would",
                style: textStyle,
              ),
              Text(
                "You like to eat?",
                style: textStyle,
              ),
            ],
          ),
          Icon(
            Icons.notifications_none,
            size: 30.0,
            color: Colors.orangeAccent,
          )
        ],
      ),
    );
  }
}
