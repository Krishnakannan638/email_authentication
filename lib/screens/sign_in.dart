import 'package:flutter/material.dart';
import 'package:mail_authentication/screens/forgot_pass.dart';
import 'package:mail_authentication/screens/sign_up.dart';

class AppSignInScreen extends StatefulWidget {
  const AppSignInScreen({Key? key}) : super(key: key);

  @override
  State<AppSignInScreen> createState() => _AppSignInScreenState();
}

class _AppSignInScreenState extends State<AppSignInScreen> {
  bool textVisible = true;
  final _signInFormKey = GlobalKey<FormState>();
  TextEditingController userName = TextEditingController();
  TextEditingController userPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _signInFormKey,
          child: ListView(
            children: [
              SizedBox(
                height: 300,
                child: Image.asset('assets/png_images/Sign_in.png'),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.4),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 10),
                child: TextFormField(
                  validator: (userName) {
                    if (userName!.isEmpty) {
                      return "Enter Your Email";
                    }
                    return null;
                  },
                  controller: userName,
                  cursorColor: const Color.fromARGB(255, 136, 114, 80),
                  decoration: InputDecoration(
                      labelText: "Username",
                      labelStyle: const TextStyle(
                          color: Colors.orange,
                          fontSize: 19,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.4),
                      hintText: "Enter Your Email Address",
                      hintStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.4),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.grey),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, left: 20, right: 20, bottom: 20),
                child: TextFormField(
                  validator: (userPass) {
                    if (userPass!.isEmpty) {
                      return " Enter Your Password";
                    }
                    return null;
                  },
                  controller: userPass,
                  obscureText: textVisible,
                  cursorColor: const Color.fromARGB(255, 136, 114, 80),
                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: const TextStyle(
                          color: Colors.orange,
                          fontSize: 19,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.4),
                      hintText: "Enter Your Password",
                      hintStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.4),
                      prefixIcon: const Icon(
                        Icons.password,
                        color: Colors.grey,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              textVisible = !textVisible;
                            });
                          },
                          icon: textVisible
                              ? const Icon(
                                  Icons.visibility,
                                  color: Colors.grey,
                                )
                              : const Icon(
                                  Icons.visibility_off,
                                  color: Colors.grey,
                                )),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.grey),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 20, right: 20, bottom: 10),
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {
                        if (_signInFormKey.currentState!.validate()) {}
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 1.4,
                            fontWeight: FontWeight.w500),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 23),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const AppForgotPass();
                          }));
                        },
                        child: const Text(
                          "Forget Password",
                          style: TextStyle(
                              color: Colors.blue,
                              letterSpacing: 1.2,
                              fontWeight: FontWeight.w500),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "New User?",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.4,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return AppSignUpScreen();
                          }));
                        },
                        child: const Text(
                          "SignUp Now",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.4,
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
