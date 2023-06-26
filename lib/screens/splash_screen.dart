import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:musicplyer/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5)).then((value) => {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomeScreen()))
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // ignore: todo
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image(
            image: AssetImage('assets/images/WonPlayer.png'),
            width: size.width / 1.9,
          ),
          SizedBox(
            height: 5,
          ),
          SpinKitWave(
            color: Colors.purple,
            size: 20.0,
          )
        ]),
      ),
    );
  }
}
