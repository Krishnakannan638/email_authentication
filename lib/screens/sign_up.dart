import 'package:flutter/material.dart';
import 'package:mail_authentication/screens/sign_in.dart';

class AppSignUpScreen extends StatefulWidget {
  const AppSignUpScreen({Key? key}) : super(key: key);

  @override
  State<AppSignUpScreen> createState() => _AppSignUpScreenState();
}

class _AppSignUpScreenState extends State<AppSignUpScreen> {
  bool _textVisible = true;
  TextEditingController userName = TextEditingController();
  TextEditingController userMobile = TextEditingController();
  TextEditingController userPass = TextEditingController();
  TextEditingController userConfirm = TextEditingController();

  final _signUpFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.orange),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: SafeArea(
          child: Form(
            key: _signUpFormKey,
            child: ListView(
              children: [
                SizedBox(
                  height: 250,
                  child: Image.asset("assets/png_images/Sign_up.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: userName,
                    validator: (userName) {
                      if (userName!.isEmpty && userName != null) {
                        return "Enter the Username";
                      }
                    },
                    cursorColor: Colors.orange,
                    decoration: InputDecoration(
                        labelText: "Username",
                        labelStyle: const TextStyle(
                            color: Colors.orange,
                            letterSpacing: 1.4,
                            fontWeight: FontWeight.w400,
                            fontSize: 19),
                        hintText: "Enter Your Email Address",
                        hintStyle: const TextStyle(
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.4,
                            fontSize: 18),
                        prefixIcon: const Icon(
                          Icons.mail,
                          color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: const BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: const BorderSide(color: Colors.grey)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: const BorderSide(color: Colors.grey))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    controller: userMobile,
                    validator: (userMobile) {
                      if (userMobile!.isEmpty && userMobile != null) {
                        return "Enter the mobile number";
                      }
                    },
                    cursorColor: Colors.orange,
                    decoration: InputDecoration(
                        labelText: "Mobile Number",
                        labelStyle: const TextStyle(
                            color: Colors.orange,
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.4),
                        hintText: "Enter Your Mobile Number",
                        hintStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.4,
                        ),
                        prefixIcon: const Icon(
                          Icons.phone_android,
                          color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.grey)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.grey))),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: TextFormField(
                    obscureText: _textVisible,
                    cursorColor: Colors.orange,
                    controller: userPass,
                    validator: (userPass) {
                      if (userPass!.isEmpty && userPass != null) {
                        return " Enter the password";
                      }
                    },
                    decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: const TextStyle(
                          fontSize: 19,
                          color: Colors.orange,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.4,
                        ),
                        hintText: "Enter New Password",
                        hintStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.4,
                        ),
                        prefixIcon: const Icon(
                          Icons.password,
                          color: Colors.grey,
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _textVisible = !_textVisible;
                              });
                            },
                            icon: _textVisible
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
                            borderSide: const BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.grey)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.grey))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    obscureText: _textVisible,
                    cursorColor: Colors.orange,
                    controller: userConfirm,
                    validator: (userConfirm) {
                      if (userConfirm!.isEmpty) {
                        return " Enter the Confirm Password";
                      }
                    },
                    decoration: InputDecoration(
                        labelText: "Confirm Password",
                        labelStyle: const TextStyle(
                          color: Colors.orange,
                          fontSize: 19,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.4,
                        ),
                        hintText: "Re-enter the Password",
                        hintStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.4,
                        ),
                        prefixIcon: const Icon(
                          Icons.password,
                          color: Colors.grey,
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _textVisible = !_textVisible;
                              });
                            },
                            icon: _textVisible
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
                            borderSide: const BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.grey)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.grey))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        onPressed: () {
                          if (_signUpFormKey.currentState!.validate()) {}
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.4,
                          ),
                        )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already having account?",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.3,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const AppSignInScreen();
                          }));
                        },
                        child: const Text(
                          "Sign in ",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.3,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
