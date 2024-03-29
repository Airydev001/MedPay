import 'package:flutter/material.dart';
import 'package:med_pay/Features/Transaction/TransactionView.dart';
import 'package:med_pay/providers/auth_provider/auth_provider.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(
          title: Text(
        '',
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Hello! Let's create your account+++++")
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Enter Email Address',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Email Address',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Full Name',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Full Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Enter Password',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Verify Password',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Verify Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                authProvider.signInWithEmailAndPassword(
                    _emailController.text.trim(),
                    _passwordController.text.trim(),
                    _nameController.text.trim(),
                    context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent.shade700,
                minimumSize: Size(MediaQuery.of(context).size.width * 0.5, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                side: BorderSide(
                  color: Colors.blueAccent.shade700,
                  width: 2,
                ),
              ),
              child: Text(
                'Continue',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'or',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            InkWell(
              onTap: () {
                // Navigate to another signup page
                final authProvider =
                    Provider.of<AuthProvider>(context, listen: false);
                // authProvider.signInWithGoogle();
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => const TransactionView()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/google_icon.png',
                    height: 30.0,
                    width: 30.0,
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    'Continue with Google',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
