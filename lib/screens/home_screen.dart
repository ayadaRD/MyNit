import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_nit/Widgets/menu.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{

  bool showBottomMenu = false;


  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    var threshold = 50;
    return SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text('My Nit', style: TextStyle(color: Colors.black45),),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.settings), color: Colors.black45,)
            ],
            centerTitle: true,
          ),
          body: GestureDetector(
            onPanEnd: (details){
              if(details.velocity.pixelsPerSecond.dy > threshold) {
                this.setState(() {
                  showBottomMenu = false;
                });
              }
              else if (details.velocity.pixelsPerSecond.dy < -threshold){
                this.setState(() {
                  showBottomMenu = true;
                });
              }
            },
            child: Container(
              height: height,
              color: Colors.white,
              child: Stack(
                children: [

                  AnimatedOpacity(
                    duration: Duration(milliseconds: 200),
                    opacity: (showBottomMenu)?1.0:0.0,
                    child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),

                      child: Container(
                        color: Colors.black.withOpacity(0.2),
                      ),),
                  ),

                  AnimatedPositioned(
                      curve: Curves.easeInOut,
                      duration: Duration(milliseconds: 450),
                      left: 0,
                      bottom: (showBottomMenu)?-20:-(height * 3 / 4),
                      child: MenuWidget()
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}