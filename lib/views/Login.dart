import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projek1/views/Otp.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            size: 40,
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "asset/Logo.png",
                height: 220,
                width: 200,
                fit: BoxFit.cover,
                alignment: FractionalOffset.topCenter,
              ),
              Text(
                "Welcome Back!",
                style: TextStyle(fontSize: 25),
              ),
              Divider(
                height: 10,
              ),
              Text(
                "Login to your account",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF6C5F5F),
                ),
              ),
              Divider(
                height: 30,
              ),
              SizedBox(
                height: 360,
                width: 300,
                child: Column(
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        filled: true,
                        prefixIcon: Align(
                          widthFactor: 1.5,
                          child: Icon(Icons.account_circle_rounded, size: 40),
                        ),
                        prefixIconColor: Color(0xFF07B067),
                        hintText: "Username",
                        hintStyle: TextStyle(
                          color: Color(0xFF6C5F5F),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      height: 20,
                    ),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        prefixIcon: Align(
                          widthFactor: 1.5,
                          child: Icon(Icons.lock, size: 40),
                        ),
                        prefixIconColor: Color(0xFF07B067),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Color(0xFF6C5F5F),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    CupertinoButton(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF07B067),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Otp();
                            },
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
