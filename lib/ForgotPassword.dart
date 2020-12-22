import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();

}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        color:Color(0xffecedf1),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(0),
                child: BackArrow()
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child: Text('Forgot Password',
                style:TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.all(20),
              child: Text('Enter your Email adders below to reset password',
                  style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w300,
                  fontSize: 20),
                  textAlign: TextAlign.center,
              ),
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
                child: Text("Send"),
              ),
            ),
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
