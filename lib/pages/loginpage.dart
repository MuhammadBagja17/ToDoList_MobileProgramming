import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noteday/pages/menu.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff071D31),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 57, left: 33, right: 33),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello again!',
                    style: GoogleFonts.roboto(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffADA7A7))),
                Text('Welcome back you have\nbeen mised',
                    style: GoogleFonts.roboto(
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xffADA7A7))),
                const SizedBox(height: 70),
                Center(
                  child: Container(
                    width: 258,
                    height: 53,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: const TextField(
                      decoration: InputDecoration(
                          labelText: 'Username',
                          prefixIcon: Icon(Icons.person)),
                    ),
                  ),
                ),
                const SizedBox(height: 54),
                Center(
                  child: Container(
                    width: 258,
                    height: 53,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility)),
                    ),
                  ),
                ),
                const SizedBox(height: 54),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainMenu()));
                  },
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      width: 140,
                      height: 53,
                      decoration: BoxDecoration(
                          color: const Color(0xff3547EA),
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: Text('LOGIN',
                            style: GoogleFonts.roboto(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 19),
                Center(
                  child: Text('Forgot Password',
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                ),
                const SizedBox(height: 20),
                Stack(
                  children: [
                    Container(
                      height: 2,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    width: 200,
                    height: 53,
                    decoration: BoxDecoration(
                        color: const Color(0xff071D31),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text('Or Continue With',
                          style: GoogleFonts.roboto(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white)),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/twitter.png"))),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/google.png"))),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/facebook.png"))),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
