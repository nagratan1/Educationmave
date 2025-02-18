import 'package:education/LoginPage/Otp.dart';
import 'package:flutter/material.dart';


class CreateAccountScreen extends StatelessWidget {
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Header

            const SizedBox(height: 0),

            // Illustration
            Image.asset(
              'assets/images/logo.jpeg', // Replace with your asset path
              height: 250,
            ),
            const SizedBox(height: 20),

            // Instructions
            const Text(
              'Enter your mobile number to create account.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 8),
            const Text(
              'We will send you one time password (OTP)',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 20),

            // Mobile Number Input Field
            TextField(
              maxLength: 10,
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: 'Enter mobile Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            // const SizedBox(height: 0),
            // const Text(
            //   'Create Account Enter Mobile Number',
            //   style: TextStyle(
            //     fontSize: 19,
            //     fontWeight: FontWeight.w500,
            //     color: Colors.black,
            //   ),
            // ),
            const SizedBox(height: 20),
           
            ElevatedButton(
              onPressed: () {
                String phoneNumber = _phoneController.text.trim();
                if (phoneNumber.length == 10 &&
                    RegExp(r'^\d{10}$').hasMatch(phoneNumber)) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          VerifyAccountScreen(phoneNumber: phoneNumber),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content:
                          Text('Please enter a valid 10-digit mobile number.'),
                      backgroundColor: Colors.red,
                    ),
                  );
                  // showDialog(
                  //   context: context,
                  //   builder: (context) => AlertDialog(
                  //     title: Text('Invalid Number'),
                  //     content: Text('Please enter a valid 10-digit mobile number.'),
                  //     actions: [
                  //       TextButton(
                  //         onPressed: () {
                  //           Navigator.pop(context);
                  //         },
                  //         child: Text('OK'),
                  //       ),
                  //     ],
                  //   ),
                  // );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffB58B43),
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text(
                '          Send             ',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
