import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
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
            SizedBox(width: 10), // Add spacing between the image and text
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
              Text(
                "Log In",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: 364,
                height: 71,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(74),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: TextField(
                    // Add your validation logic here
                    decoration: InputDecoration.collapsed(
                      hintText: 'Enter Username Or Email',
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: 364,
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
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Forget password? Contact the admin.",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 200,
                height: 71,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Color(0xff42c73b),
                ),
                child: Center(
                  child: Text(
                    "Log in",
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
}

void main() {
  runApp(MaterialApp(home: LoginPage()));
}
