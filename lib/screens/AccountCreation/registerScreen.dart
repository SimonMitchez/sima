import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);
  @override
  State<Register> createState() => _RegisterState();
}

class PasswordValidator extends TextFieldValidator {
  PasswordValidator({String errorText = 'Invalid password'}) : super(errorText);

  @override
  bool isValid(String? value) {
    if (value == null || value.isEmpty) {
      return false;
    }
    return value.length >= 8; // Password must be at least 8 characters long
  }
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: SingleChildScrollView(
        child: Container(
                   decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/med/med6pic.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/med/med7pic.jpg'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextFormField(
                    controller: _firstNameController,
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Enter first Name'),
                      MinLengthValidator(
                        3,
                        errorText: 'Minimum 3 characters required',
                      ),
                    ]).call,
                    decoration: const InputDecoration(
                      hintText: 'Enter First Name',
                      labelText: 'First Name',
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.green,
                      ),
                      errorStyle: TextStyle(fontSize: 18.0),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(9.0)),
                      ),
                    ),
                  ),
                ),
                // Other TextFormField widgets...

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _lastNameController,
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Enter last name'),
                      MinLengthValidator(3,
                          errorText: 'Last name should be atleast 3 charater'),
                    ]).call,
                    decoration: const InputDecoration(
                        hintText: 'Enter last Name',
                        labelText: 'Last name',
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                        errorStyle: TextStyle(fontSize: 18.0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius:
                                BorderRadius.all(Radius.circular(9.0)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _emailController,
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Enter email address'),
                      EmailValidator(errorText: 'Please correct email filled'),
                    ]).call,
                    decoration: const InputDecoration(
                        hintText: 'Email',
                        labelText: 'Email',
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.lightBlue,
                        ),
                        errorStyle: TextStyle(fontSize: 18.0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius:
                                BorderRadius.all(Radius.circular(9.0)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _passwordController,
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Enter email password'),
                      PasswordValidator(
                          errorText:
                              'Password must be at least 8 characters long'),
                    ]).call,
                    decoration: const InputDecoration(
                        hintText: 'Email Password',
                        labelText: 'Email Password',
                        prefixIcon: Icon(
                          Icons.key,
                          color: Colors.lightBlue,
                        ),
                        errorStyle: TextStyle(fontSize: 18.0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius:
                                BorderRadius.all(Radius.circular(9.0)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _mobileController,
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Enter mobile number'),
                      PatternValidator(r'(^[0,9]{10}$)',
                          errorText: 'enter valid mobile number'),
                    ]).call,
                    decoration: const InputDecoration(
                        hintText: 'Mobile',
                        labelText: 'Mobile',
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius:
                                BorderRadius.all(Radius.circular(9)))),
                  ),
                ),

                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            String firstName = _firstNameController.text;
                            String lastName = _lastNameController.text;
                            String email = _emailController.text;
                            String password = _passwordController.text;
                            String mobile = _mobileController.text;

                            addUserData(
                                firstName, lastName, email, password, mobile);
                          }
                        },
                        child: const Text(
                          'Register',
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                ),

                // Or Sign Up Using...
              ],
            ),
          ),
        ),
      ),
     ), );
  }

  Future<void> addUserData(String firstName, String lastName, String email,
      String password, String mobile) async {
    try {
      CollectionReference users =
          FirebaseFirestore.instance.collection('users');
      await users.add({
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'mobile': mobile,
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Registration Successful"),
          backgroundColor: Colors.green,
        ),
      );
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Registration failed: $error"),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
