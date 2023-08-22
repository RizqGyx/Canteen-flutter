import 'package:flutter/material.dart';
import 'package:projek1/views/login.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  "asset/Logo.png",
                  height: 600,
                  fit: BoxFit.cover,
                  alignment: FractionalOffset.topCenter,
                ),
              ),
              // SizedBox()
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Login();
                      },
                    ),
                  );
                },
                child: Ink(
                  padding: EdgeInsets.symmetric(horizontal: 120, vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFF07B067),
                  ),
                  child: Text(
                    "GET STARTED",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
