import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        color: Color(0xffecedf1),
        child:Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(0),
                  child: Symbol()
              )

            ],
          ),
        ),

      ),
    );
  }
}
class Symbol extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    AssetImage assetImage=AssetImage('images/Symbol.png');
    Image image = Image(image: assetImage, width: 60, height: 60,);
    return Container(child: image,);
  }
}
