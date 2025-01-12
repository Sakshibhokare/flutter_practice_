import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // Track the focus of the fields
  FocusNode emailFocusNode = FocusNode();
  FocusNode phoneFocusNode = FocusNode();
  FocusNode usernameFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode verifyPasswordFocusNode = FocusNode();

  @override
  void dispose() {
    // Dispose focus nodes
    emailFocusNode.dispose();
    phoneFocusNode.dispose();
    usernameFocusNode.dispose();
    passwordFocusNode.dispose();
    verifyPasswordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          
          Expanded(
            flex: 1,
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Opacity(
                  opacity: 0.35, 
                    child: Image.asset(
                      'assets/img.jpg', 
                      height: 250,
                      width: double.infinity, 
                    ),
                  ),
                ),
              ),
            ),
          

          // Right side - Form
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Email Field
                  _buildTextField('Email', emailFocusNode),
                  SizedBox(height: 20),
                  // Phone Number Field
                  _buildTextField('Phone Number', phoneFocusNode),
                  SizedBox(height: 20),
                  // Username Field
                  _buildTextField('Username', usernameFocusNode),
                  SizedBox(height: 20),
                  // Password Field
                  _buildTextField('Password', passwordFocusNode),
                  SizedBox(height: 20),
                  // Verify Password Field
                  _buildTextField('Verify Password', verifyPasswordFocusNode),
                  SizedBox(height: 40),
                  // Create Account Button
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Create a New Account'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      minimumSize:
                          Size(double.infinity, 0), // Full width button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      // primary: Colors.blue, // Button color
                    ),
                  ),
                  SizedBox(height: 20),
                  // Already have an account text
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Already have an account? Login'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String label, FocusNode focusNode) {
    return Focus(
      focusNode: focusNode,
      onFocusChange: (hasFocus) {
        setState(() {});
      },
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
            fontWeight:
                focusNode.hasFocus ? FontWeight.bold : FontWeight.normal,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: focusNode.hasFocus ? Colors.blue : Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
