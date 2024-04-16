import 'package:flutter/material.dart';

class ResetPasswordScreen001 extends StatefulWidget {
  const ResetPasswordScreen001({super.key});

  @override
  State<ResetPasswordScreen001> createState() => _ResetPasswordScreen001State();
}

class _ResetPasswordScreen001State extends State<ResetPasswordScreen001> {
  String _password = '';
  String _confirmPassword = '';
  String _errorText = '';
  bool _isButtonEnabled = false;
  bool _isPasswordObscured = true;
  bool _isConfirmPasswordObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: const EdgeInsetsDirectional.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Reset password",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Lets get you onboard again",
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
                  _password = value;
                  _isButtonEnabled =
                      _password.isNotEmpty && _confirmPassword.isNotEmpty;
                });
              },
              obscureText: _isPasswordObscured,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(
                        () {
                          _isPasswordObscured = !_isPasswordObscured;
                        },
                      );
                    },
                    icon: Icon(_isPasswordObscured
                        ? Icons.visibility_off
                        : Icons.visibility),
                  ),
                  hintText: 'Create a new password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1))),
            ),
            const SizedBox(height: 20.0),
            TextField(
              onChanged: (value) {
                setState(() {
                  _confirmPassword = value;
                  _isButtonEnabled =
                      _password.isNotEmpty && _confirmPassword.isNotEmpty;
                });
              },
              obscureText: _isConfirmPasswordObscured,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(
                        () {
                          _isConfirmPasswordObscured =
                              !_isConfirmPasswordObscured;
                        },
                      );
                    },
                    icon: Icon(_isConfirmPasswordObscured
                        ? Icons.visibility_off
                        : Icons.visibility),
                  ),
                  hintText: 'Re-enter password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1))),
            ),
            const SizedBox(
              height: 10,
            ),
            _password != _confirmPassword &&
                    _password.isNotEmpty &&
                    _confirmPassword.isNotEmpty
                ? const Text(
                    "Please enter a match ",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  )
                : const Text(""),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                width: 335,
                height: 60,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      // disabledBackgroundColor: Color(0xffD8F0FF),
                      backgroundColor: _isButtonEnabled
                          ? const Color(0xff0D60D8)
                          : const Color(0xffD8F0FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(29),
                      ),
                    ),
                    child: const Text(
                      'Login',
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
