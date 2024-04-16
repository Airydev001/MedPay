import 'package:flutter/material.dart';

class forgotPassword extends StatefulWidget {
  const forgotPassword({super.key});

  @override
  State<forgotPassword> createState() => _forgotPasswordState();
}

class _forgotPasswordState extends State<forgotPassword> {
  String _email = '';

  bool _isButtonEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: const EdgeInsetsDirectional.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Forgot password",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Enter the email address associated with this account",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  _email = value;
                  _isButtonEnabled = true;
                });
              },
              decoration: InputDecoration(
                  hintText: 'Email address',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1))),
            ),
            SizedBox(
              height: 100,
            ),
            Center(
              child: Container(
                width: 335,
                height: 60,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      // disabledBackgroundColor: Color(0xffD8F0FF),
                      backgroundColor: _isButtonEnabled && _email.contains('@')
                          ? const Color(0xff0D60D8)
                          : const Color(0xffD8F0FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(29),
                      ),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            )
          ],
        ),
      )),
    );
  }
}
