import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(20.0)),
      child: Container(
        color: Colors.teal,
        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
        width: width,
        height: height * 3 / 4 + 50,
        child: SingleChildScrollView(
          child: Column(
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_up, size: 30,color: Colors.white, )),
              const Text('social login', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color:  Colors.white),),
              const SizedBox(height: 10,),
              const Text('2dshgwshk', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color:  Colors.white),),
              const SizedBox(height: 10,),
              const Text('3sgdskdcbhk', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color:  Colors.white),),
              const SizedBox(height: 10,),
              const Text('4ahdnsbckcb', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color:  Colors.white),),
              const SizedBox(height: 10,),
              const Text('5sjhgcay', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color:  Colors.white),),
              const SizedBox(height: 10,),
              const Text('6sdkhcgbkac', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color:  Colors.white),),
            ],
          ),
        ),
      ),
    );
  }
}
