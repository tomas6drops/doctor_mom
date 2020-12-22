import 'package:doctor_mom/LoginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';
class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Container(
          color:Color(0xffecedf1),
          padding: EdgeInsets.all(4),
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10),
                  child: BackArrow()
              ),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(2),
                child: Text(
                  'Register',
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )
            ),
              Container(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    'Name',
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
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
                      labelText: 'Name',
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Email',
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
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
                      labelText: 'Email',
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Password',
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
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
                    controller: passwordController,
                    decoration: InputDecoration(
                      fillColor: Color(0xffecedf1),
                      border: InputBorder.none,
                      labelText: 'Password',
                    ),
                  )
              ),
              Container(
                height: 80,
                padding: EdgeInsets.all(12),
                child:  FlatButton(
                  textColor: Color(0xffffffff),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                  color:Color(0xff1492e6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text("Create Account"),
                ),
              ),

              Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[

                      Text("Already have an account ?"),
                      FlatButton(
                        textColor: Color(0xff1492e6),
                        child: Text(
                          'Log in',
                          style: TextStyle(fontSize: 22),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context)=>LoginPage()),
                          );
                          //signup screen
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ))


            ],
          ),
        ),
    );
  }
}
class BackArrow extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    AssetImage assetImage=AssetImage('images/back_arrow.png');
    Image image = Image(image: assetImage, width: 60, height: 60,);
    return Container(child: image,);
  }
}



