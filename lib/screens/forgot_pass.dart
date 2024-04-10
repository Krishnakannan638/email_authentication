import 'package:flutter/material.dart';

class AppForgotPass extends StatefulWidget {
  const AppForgotPass({Key? key}) : super(key: key);

  @override
  State<AppForgotPass> createState() => _AppForgotPassState();
}

class _AppForgotPassState extends State<AppForgotPass> {
  // ignore: non_constant_identifier_names
  final _ForgotPassKey = GlobalKey<FormState>();
  TextEditingController userName = TextEditingController();
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
          key: _ForgotPassKey,
          child: ListView(
            children: [
              SizedBox(
                height: 250,
                child: Image.asset('assets/png_images/Forgot_password.png'),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Receive on email to reset your password",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.4,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: userName,
                  validator: (userName) {
                    if (userName!.isEmpty) {
                      return "Enter the Username";
                    }
                  },
                  cursorColor: Colors.orange,
                  decoration: InputDecoration(
                    labelText: "Username",
                    labelStyle: const TextStyle(
                      color: Colors.orange,
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.4,
                    ),
                    hintText: "Enter the username",
                    hintStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.4,
                    ),
                    prefixIcon: const Icon(Icons.person, color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.grey)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.grey)),
                  ),
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
                      setState(() {
                        _ForgotPassKey.currentState!.validate();
                      });
                    },
                    child: const Text(
                      "Forgot Password",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.4,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
