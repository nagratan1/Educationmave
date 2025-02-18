import 'package:education/Dashboard/DashboardScreen.dart';
import 'package:flutter/material.dart';


class VerifyAccountScreen extends StatelessWidget {
  final String phoneNumber;
   VerifyAccountScreen({Key? key, required this.phoneNumber}) : super(key: key);
  final List<TextEditingController> _controllers =
      List.generate(4, (index) => TextEditingController());

  void _verifyOtp(BuildContext context) {
    for (var controller in _controllers) {
      if (controller.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Please fill OTP.'),
            backgroundColor: Colors.red,
          ),
        );
        return;
      }
    }
   Navigator.pushReplacement(
context,MaterialPageRoute(builder: (context) => Dashboard()),);
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Header
              // Text(
              //   'Verify Account Use Otp',
              //   style: TextStyle(
              //     fontSize: 24,
              //     fontWeight: FontWeight.bold,
              //     color: Colors.black,
              //   ),
              // ),
              SizedBox(height: 20),
        
              // Illustration
              Image.asset(
                'assets/images/logo.jpeg', // Replace with your asset path
                height: 250,
              ),
              SizedBox(height: 20),
        
              // Verification Message
              Text(
                'Mobile verification has successfully done',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              SizedBox(height: 8),
              Text(
                'We have sent the OTP on $phoneNumber\nIt will apply automatically to the fields.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
              SizedBox(height: 20),
        
              // OTP Input Fields
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, (index) {
                  return SizedBox(
                    width: 50,
                    child: TextField(
                      controller: _controllers[index],
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      decoration: InputDecoration(
                        counterText: '',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      onChanged: (value) {
                        if (value.length == 1 && index < 3) {
                          FocusScope.of(context).nextFocus();
                        } else if (value.isEmpty && index > 0) {
                          FocusScope.of(context).previousFocus();
                        }
                      },
                    ),
                  );
                }),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Handle Resend Button
                },
                child: Text(
                  'If you didn’t receive a code! Resend',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              SizedBox(height: 20),
        
              // Verify Button
              ElevatedButton(
                onPressed: () => _verifyOtp(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffB58B43),
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  '        Verify     ',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
