import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noteday/pages/loginpage.dart';
import 'package:noteday/pages/menu.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  Widget txtField(String hintText, bool password) {
    return Container(
        child: TextField(
      textAlign: TextAlign.center,
      obscureText:
          password, // Mengatur teks tersembunyi(True) tdk tersembunyi(False)
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          contentPadding: const EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 20, color: Colors.grey)),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff071D31),
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              Center(
                child: Text(
                  'Sign Up Form!',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: const Color(0xffADA7A7)),
                ),
              ),
              Center(
                child: Text(
                  'Welcome',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: const Color(0xffADA7A7)),
                ),
              ),
            ],
          ),
          Column(children: [
            Container(
                margin: const EdgeInsets.only(
                    top: 220, right: 53, left: 53, bottom: 35),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: txtField('Enter Name', false)),
            Container(
                margin: const EdgeInsets.only(right: 53, left: 53, bottom: 35),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: txtField('Enter Email', false)),
            Container(
                margin: const EdgeInsets.only(right: 53, left: 53, bottom: 35),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: txtField('Enter Password', true)),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MainMenu()));
              },
              child: Container(
                  width: 130,
                  height: 55,
                  margin: const EdgeInsets.only(bottom: 35),
                  decoration: BoxDecoration(
                      color: const Color(0xff333C89),
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      'SIGN UP',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  )),
            )
          ]),
          Positioned(
            bottom: 80,
            left: 53,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Already a Member?',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: const Color(0xffADA7A7)),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    child: InkWell(
                      child: Text(
                        'LOGIN',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: const Color(0xff5E5BFB)),
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
