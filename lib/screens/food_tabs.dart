import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FoodTab extends StatefulWidget {

  @override
  _FoodTabState createState() => _FoodTabState();
}

class _FoodTabState extends State<FoodTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade800,
       body: ListView(
         children: <Widget>[
           _buildListItem('Hotdog', 4.0, '6', 'assets/images/hotdog.png'),
           _buildListItem('Pizza', 5.0, '12', 'assets/images/pizza.png'),
           _buildListItem('Sandwich', 3.0, '5', 'assets/images/pizza.png'),
         ],
       ),
    );
  }

  _buildListItem(String foodName, rating, String price, String img){
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 210.0,
            child: Row(
              children: <Widget>[
                Container(
                  height: 75.0,
                  width: 75.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Color(0xFFFFE3DF),
                  ),
                  child: Center(
                    child: Image.asset(img, height:50.0, width:50.0),
                  ),
                ),
                SizedBox(width: 20.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      foodName,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white70
                      ),
                    ),
                    SmoothStarRating(
                      allowHalfRating: false,
                      onRatingChanged: (v){},
                      starCount: rating.toInt(),
                      rating: rating,
                      color: Color(0xFFFFD143),
                      borderColor: Color(0xFFFFD143),
                      size: 15.0,
                      spacing: 0.0,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '\$'+price,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFF68D7F),
                          ),
                        ),
                        SizedBox(width: 3.0),
                        Text(
                          '\$'+'18',
                          style: TextStyle(
                            fontSize: 12.0,
                            decoration: TextDecoration.lineThrough,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          FloatingActionButton(
            heroTag: foodName,
            mini: true,
            onPressed: (){},
            child: Center(
              child: Icon(Icons.add, color: Colors.white,),
            ),
            backgroundColor: Colors.greenAccent,
          ),
        ],
      ),
    );
  }
}