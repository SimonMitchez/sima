import 'package:flutter/material.dart';
import 'package:sima_app1/screens/AccountCreation/registerScreen.dart'; // Import your Register page file
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sima_app1/screens/Home/homeScreen.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isObscured = true;
  bool _formIsValid = true;

  void _openHomePage(BuildContext context) {
    // Validate the form before proceeding
    if (_formIsValid) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => HomeScreen(),
        ),
      );
    }
  }

  void _openRegisterPage(BuildContext context) {
    // Navigate to Register page
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Register(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sima App Login',
          style: TextStyle(color: Colors.purple),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              // Navigate to profile page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Show notifications
              // Implement your notification logic here
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/med/med6pic.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/med/med7pic.jpg',
                          height: 200,
                          width: 200,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text('Welcome'),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          hintText: 'Enter email',
                          prefixIcon: Icon(Icons.email),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          errorText:
                              _formIsValid && _emailController.text.isEmpty
                                  ? 'Email is required'
                                  : null,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: TextField(
                        controller: _passwordController,
                        obscureText: _isObscured,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          suffixIcon: IconButton(
                            icon: Icon(_isObscured
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState(() {
                                _isObscured = !_isObscured;
                              });
                            },
                          ),
                          errorText:
                              _formIsValid && _passwordController.text.isEmpty
                                  ? 'Password is required'
                                  : null,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot Password?',
                            style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          // Check if email and password fields are empty
                          _formIsValid = _emailController.text.isNotEmpty &&
                              _passwordController.text.isNotEmpty;
                        });
                        _openHomePage(context); // Pass context here
                      },
                      child: Text("Login"),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        _openRegisterPage(context); // Open register page
                      },
                      child: Text(
                        "Don't have an account? Register",
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Text(
                              'or Continue with',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            // Handle login with Facebook
                          },
                          icon: Icon(FontAwesomeIcons.facebook),
                          label: Text('Facebook'),
                        ),
                        SizedBox(width: 20),
                        ElevatedButton.icon(
                          onPressed: () {
                            // Handle login with phone number
                          },
                          icon: Icon(FontAwesomeIcons.google),
                          label: Text('Google'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
