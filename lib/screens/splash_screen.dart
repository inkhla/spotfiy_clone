import 'package:flutter/material.dart';


import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToHome();
  }

   _navigateToHome() async
  {
    await Future.delayed(const Duration(seconds: 10),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Shell(),),);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.shade900,
      body:  const Center(
          child: SizedBox(
            height: 150,
            width: 150,
            child: Image(
              image: AssetImage('assets/images/Spotify_logo.png'),
            ),
          )
      ),
    );
  }
}
