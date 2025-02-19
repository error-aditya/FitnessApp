import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: Get.height,
            width: Get.width,
            color: Colors.black.withOpacity(0.7),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  RichText(
                    text: TextSpan(
                      text: 'HARD\t',
                      style: TextStyle(
                        fontFamily: GoogleFonts.bebasNeue().fontFamily,
                        fontSize: 30,
                        letterSpacing: 5,
                        color: Colors.white,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'ELEMENT',
                          style: TextStyle(color: Colors.lightBlueAccent),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 17),
                        Text(
                          'Train your body and your mind with us at anywhere',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blue,
                      ),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
