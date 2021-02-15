import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

void main() => runApp(MaterialApp(
      home: ShoppingApp(),
    ));

class ShoppingApp extends StatelessWidget {
  List<String> pictures = [
    'images/men1.jpg',
    'images/men2.jpg',
    'images/men3.jpg',
    'images/woman1.jpg',
    'images/woman2.jpg',
    'images/woman3.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        elevation: 0.0,
//         leading: Icon(
//           Icons.menu,
//           color: Colors.white,
//         ),
        title: Text(
          "Photographer Gallery",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(

          // padding: EdgeInsets.all(0.5),
          padding: EdgeInsets.fromLTRB(5.0, 0.5, 0.5, 0.5),
          child: GridView.builder(
              itemCount: pictures.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemBuilder: (BuildContext context, int i) {
                return new Container(
                  height: 250,
                  width: 150,
                  child: new Card(
                    child: new Container(
                      padding: new EdgeInsets.all(4.0),
                      child: new Column(
                        children: <Widget>[
//                       new Text('Hello World'),
                          new Row(
                            children: [
                              Spacer(),
                              LikeButton(),
                            ],
                          ),

                          SizedBox(height: 5.0),
                          Image.asset(
                            pictures[i],
                            height: 100,
                            width: 150,
                          ),
                          // Image.asset('assets/images/trend2.jpg',
                          //     height: 50, width: 50),
                          SizedBox(height: 10.0),
                          Center(
                            child: Text('Etsy Shirt'),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              })),
    );
  }
}
