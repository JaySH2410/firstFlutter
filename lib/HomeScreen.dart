import 'dart:math';
import 'package:flutter/material.dart';

class HomeScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[900],
        title: Center(child: Text('Lucky 8-Ball Game')),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> with SingleTickerProviderStateMixin{
  int BallNum = 1;
  void change(){
    setState(() {
      BallNum=Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical:50),
                      child: Text(
              'Ask Me Any Thing !!',
              style: TextStyle(
                fontFamily: 'ReggaeOne',
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
                letterSpacing: 2.5,
                color: Colors.white,
                
              ),
              ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: change,
              child: Padding(
                padding: EdgeInsets.all(50),
                              child: Image(
                  image: AssetImage('images/ball$BallNum.png'),
                  ),
              )
            ),
          ),
          
          // )
          // ElevatedButton(
          //   onPressed: change,
          // ),
          // Image.asset('images/ball$num.png'),
          // Text(
          //   'Ask Me Any Thing !!',
          //   style: TextStyle(
          //     fontFamily: 'ReggaeOne',
          //     fontSize: 30.0,
          //     fontWeight: FontWeight.w700,
          //     letterSpacing: 2.5,
          //     color: Colors.white,
          //     //fontStyle: ReggaeOne,
          //   ),
          // )
        ],
      ),
    );
  }
}

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen>
//     with SingleTickerProviderStateMixin {
//   int num = 0;

// }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[850],
//       appBar: AppBar(
//         backgroundColor: Colors.deepPurple[900],
//         title: Center(child: Text('Lucky 8-Ball Game')),
//       ),
//       body: Container(),
//     );
//   }
