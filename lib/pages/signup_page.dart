import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        shadowColor: Colors.green,
        backgroundColor: Colors.green,
        title: Row(
          children: [
            ClipOval(
              child: Container(
                width: 40,
                child: Image.asset("assets/images/Muthalamman_image.jpg"),
              ),
            ),
            SizedBox(width: 10),
            Text(
              "Muthalamman Temple",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50),
              Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5), // Reduced space
              buildTextField("Name", TextInputType.text),
              SizedBox(height: 5), // Reduced space
              buildTextField("First Name", TextInputType.text),
              SizedBox(height: 5), // Reduced space
              buildTextField("Email", TextInputType.emailAddress),
              SizedBox(height: 5), // Reduced space
              buildTextField("Address", TextInputType.text),
              SizedBox(height: 5), // Reduced space
              buildTextField("Pincode", TextInputType.number),
              SizedBox(height: 5), // Reduced space
              buildTextField("Mobile Number", TextInputType.phone),
              SizedBox(height: 5), // Reduced space
              buildPasswordField("Password"),
              SizedBox(height: 5), // Reduced space
              buildPasswordField("Confirm Password"),
              SizedBox(height: 20), // Restore space before the button
              Container(
                width: 200,
                height: 71,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Color(0xff42c73b),
                ),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
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

  Widget buildTextField(String labelText, TextInputType keyboardType) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 364,
        height: 71,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(74),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: TextField(
            keyboardType: keyboardType,
            // Add your validation logic here
            decoration: InputDecoration.collapsed(
              hintText: labelText,
              hintStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildPasswordField(String labelText) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 350,
        height: 71,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(74),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration.collapsed(
              hintText: labelText,
              hintStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: SignupPage()));
}
