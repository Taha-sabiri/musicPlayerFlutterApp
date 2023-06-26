import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(children: [
            //appbar logo
            Image.asset(
              'assets/images/WonPlayer.png',
              width: size.width / 3.82,
            ),
            SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size.width / 2.37,
                  height: size.width / 2.37,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage('assets/images/image 1737.png'))),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: size.width / 2.37,
                  height: size.width / 2.37,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage('assets/images/image 1737.png'))),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size.width / 2.37,
                  height: size.width / 2.37,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage('assets/images/image 1737.png'))),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: size.width / 2.37,
                  height: size.width / 2.37,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage('assets/images/image 1737.png'))),
                )
              ],
            ),

            SizedBox(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Life Is A Pretty Song,\nLove Is The Music.",
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
            ),
            SizedBox(
              width: 360,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "Music always can change the world, also it can put us in a good mood. Here you can enjoy listening music.",
                    softWrap: true,
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
