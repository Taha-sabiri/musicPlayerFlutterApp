import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:musicplyer/color.dart';
import 'package:musicplyer/screens/oneboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5)).then((value) => {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const Onboarding()))
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
            image: const AssetImage('assets/images/WonPlayer.png'),
            width: size.width / 1.9,
          ),
          const SizedBox(
            height: 5,
          ),
          const SpinKitWave(
            color: Mycolor.primary,
            size: 20.0,
          )
        ]),
      ),
    );
  }
}
