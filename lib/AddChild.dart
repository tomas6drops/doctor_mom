import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';
class AddChild extends StatefulWidget {
  @override
  _AddChildState createState() => _AddChildState();
}

class _AddChildState extends State<AddChild> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
          color: Color(0xffecedf1),
          child: Padding(
            padding:EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
               Container(
                   alignment: Alignment.center,
                   padding: EdgeInsets.all(5),
                   child: Text(
                     'Add Child',
                     style: TextStyle(
                         color: Colors.black87,
                         fontWeight: FontWeight.w500,
                         fontSize: 30),
                   )
               ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(0),
                    child:CameraChild()
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Child Name',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w300,
                          fontSize: 15),
                    )
                ),
                NeuCard(
                    curveType: CurveType.flat,
                    bevel: 10,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: NeumorphicDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:Color(0xffecedf1) ,
                    ),
                    child: NeuTextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        fillColor: Color(0xffecedf1),
                        border: InputBorder.none,
                        labelText: 'Child Name',
                      ),
                    )
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Nick Name(opt)',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w300,
                          fontSize: 15),
                    )
                ),
                NeuCard(
                    curveType: CurveType.flat,
                    bevel: 10,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: NeumorphicDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:Color(0xffecedf1) ,
                    ),
                    child: NeuTextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        fillColor: Color(0xffecedf1),
                        border: InputBorder.none,
                        labelText: 'Nick Name',
                      ),
                    )
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Gender',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w300,
                          fontSize: 15),
                    )
                ),
                NeuCard(
                    curveType: CurveType.flat,
                    bevel: 10,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: NeumorphicDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:Color(0xffecedf1) ,
                    ),
                    child: NeuTextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        fillColor: Color(0xffecedf1),
                        border: InputBorder.none,
                        labelText: 'gender',
                      ),
                    )
                ),


              ],
            ),
          ),
        ),

    );
  }
}
class CameraChild extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    AssetImage assetImage=AssetImage('images/camera_child.png');
    Image image = Image(image: assetImage, width: 60, height: 60,);
    return Container(child: image,);
  }
}
