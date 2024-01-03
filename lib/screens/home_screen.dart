import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_nit/Widgets/menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

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
            title: const Text('My Nit', style: TextStyle(color: Colors.black45),),
            actions: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.settings), color: Colors.black45,)
            ],
            centerTitle: true,
          ),
          body: GestureDetector(
            onPanEnd: (details){
              if(details.velocity.pixelsPerSecond.dy > threshold) {
                setState(() {
                  showBottomMenu = false;
                });
              }
              else if (details.velocity.pixelsPerSecond.dy < -threshold){
                setState(() {
                  showBottomMenu = true;
                });
              }
            },
            child: Container(
              height: height,
              color: Colors.white,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            SizedBox(height: 70,),
                            Text('data')],
                        ),
                      ),
                    ),
                  ),
                  
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 450),
                    opacity: (showBottomMenu)?1.0:0.0,
                    child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),

                      child: Container(
                        color: Colors.black.withOpacity(0.2),
                      ),),
                  ),

                  AnimatedPositioned(
                      curve: Curves.easeInOut,
                      duration: const Duration(milliseconds: 450),
                      left: 0,
                      bottom: (showBottomMenu)?-20:-(height * 3 / 4),
                      child: const MenuWidget()
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}