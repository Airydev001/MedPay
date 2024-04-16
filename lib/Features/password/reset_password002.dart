import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResetPassword002 extends StatelessWidget {
  const ResetPassword002({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 30, right: 30),
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
              "We have just sent a reset link to the email",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: 'marywiliam@gmail.com. ',
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              TextSpan(
                text: 'Click on the link complete. ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
            ])),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: 'password reset',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
            ])),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Didn't get the link? Request again.",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 12,
                  color: Color(0xff7A230D)),
            ),
            const SizedBox(
              height: 90,
            ),
            Center(
              child: Container(
                width: 335,
                height: 60,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      // disabledBackgroundColor: Color(0xffD8F0FF),
                      backgroundColor: const Color(0xff0D60D8),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(29),
                      ),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: "Didn't get the link?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              TextSpan(
                text: 'Request again ',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ])),
          ],
        ),
      ),
    );
  }
}
