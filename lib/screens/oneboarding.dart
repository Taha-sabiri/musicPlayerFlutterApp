import 'package:flutter/material.dart';
import 'package:musicplyer/color.dart';
import 'package:musicplyer/screens/home_screen.dart';

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
            const SizedBox(
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
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              'assets/images/portrait-young-woman-pink-wall-with-headphones.jpg'))),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: size.width / 2.37,
                  height: size.width / 2.37,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              'assets/images/music-caucasian-woman-s-portrait-pink-studio-background-trendy-neon-light-beautiful-female-model-with-headphones-concept-human-emotions-facial-expression-sales-ad-fashion.jpg'))),
                )
              ],
            ),
            const SizedBox(
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
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              'assets/images/listen-music-singing-enjoying-caucasian-man-s-portrait-purple-studio-background-neon-light-beautiful-male-model-black-shirt-concept-human-emotions-facial-expression-sales-ad.jpg'))),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: size.width / 2.37,
                  height: size.width / 2.37,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              'assets/images/portrait-young-cheerful-girl-listening-music-headphones-isolated-gradient-pink-background-blue-neon-light.jpg'))),
                )
              ],
            ),
            const SizedBox(
              height: 56,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(32, 0, 0, 0),
              child: SizedBox(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Life Is A Pretty Song,\nLove Is The Music.",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Jakarta',
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const SizedBox(
              width: 340,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "Music always can change the world, also it can put us in a good mood. Here you \ncan enjoy listening music.",
                    softWrap: true,
                    style: TextStyle(
                        color: Mycolor.bodyTextColor,
                        fontFamily: 'Jakarta',
                        fontWeight: FontWeight.w300,
                        fontSize: 18)),
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: FilledButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ));
                },
                style: FilledButton.styleFrom(backgroundColor: Mycolor.primary),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Start Listening"),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
