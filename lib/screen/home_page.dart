import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color mycolor=Color(0xFF784CEF);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pink[300],
          title: Text('Color Generator',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
      backgroundColor: Colors.pink[50],
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
            children: [
              ColorPicker(
                pickerColor: mycolor,
                onColorChanged: (Color color){
                  setState(() {
                    mycolor = color;
                  });
                },
              ),
              Container(
                width: 270,
                height: 55,
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.pink[300],borderRadius: BorderRadius.circular(15)),
                child:Text("#"+colorToHex(mycolor).toLowerCase(), style: TextStyle(color:Colors.white,fontSize:24,fontWeight: FontWeight.bold ),)
                ,
              )
            ]),
      ),
    );
  }
}