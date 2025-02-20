import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/welcome.jpg'),
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
                  SizedBox(height: 30),
                  RichText(
                    text: TextSpan(
                      text: 'HARD\t',
                      style: TextStyle(
                        fontFamily: GoogleFonts.bebasNeue().fontFamily,
                        fontSize: 30,
                        color: Colors.white,
                        letterSpacing: 5,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'WORKOUT',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.lightBlueAccent,
                            letterSpacing: 5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          'About You',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'We are eagar to know about yourself,\nfollw next stpes to complete your profile.',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  ],
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
