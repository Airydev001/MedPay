import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResetPassword002 extends StatelessWidget {
  const ResetPassword002({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "Reset password",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 32,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "We have just sent a reset link to the email",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Didn't get the link? Request again.",
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 32,
                color: Color(0xff7A230D)),
          ),
          SizedBox(
            height: 45,
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
        ],
      ),
    );
  }
}
