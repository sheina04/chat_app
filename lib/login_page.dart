import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        floatingActionButton: FloatingActionButton(
        onPressed:  () {
          print ('Button clicked');
        }
        ),
      
      body: Column(
        children: [
          Text(
         'Let\'s sign you in!', 
         style: TextStyle(
         fontSize: 30, 
        color: Colors.brown,
           fontWeight: FontWeight.bold, letterSpacing: 0.5
         ),
           ),
          Center(
            child: Text(
              'Welcome back! \n You\'ve been missed!',
            style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blueGrey)
              ),
              Image.network(https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pngegg.com%2Fen%2Fsearch%3Fq%3Dlogin%2BIcon&psig=AOvVaw0W3YafkebhKep8UmivN0DO&ust=1748285754102000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCKD7ipGmv40DFQAAAAAdAAAAABAE',
),
        ],
      ),

    );
  }
}