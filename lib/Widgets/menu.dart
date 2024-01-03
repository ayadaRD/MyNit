import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
      child: Container(
        color: Colors.teal,
        padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
        width: width,
        height: height * 3 / 4 + 50,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Icon(Icons.keyboard_arrow_up, size: 20,color: Colors.white, ),
              SizedBox(height: 10,),
              Text('social login', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color:  Colors.white),),
              SizedBox(height: 10,),
              Text('2dshgwshk', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color:  Colors.white),),
              SizedBox(height: 10,),
              Text('3sgdskdcbhk', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color:  Colors.white),),
              SizedBox(height: 10,),
              Text('4ahdnsbckcb', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color:  Colors.white),),
              SizedBox(height: 10,),
              Text('5sjhgcay', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color:  Colors.white),),
              SizedBox(height: 10,),
              Text('6sdkhcgbkac', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color:  Colors.white),),
            ],
          ),
        ),
      ),
    );
  }
}
