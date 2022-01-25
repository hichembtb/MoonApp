import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Image(
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height * 0.9,
              image: AssetImage("images/moon.png"),
            ),
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return RadialGradient(
                  colors: [
                    Colors.grey.withOpacity(0.5),
                    Colors.white.withOpacity(0.2),
                  ],
                  center: Alignment.topLeft,
                  radius: 1.0,
                  tileMode: TileMode.mirror,
                ).createShader(bounds);
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 100),
                child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed("camera");
                  },
                  child: FittedBox(
                    child: const Text(
                      "Take a look at the moon",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/*
 
                          */ 
                          