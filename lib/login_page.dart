import 'package:flutter/material.dart';
import 'package:login_screen/custom_pass_textField.dart';
import 'package:login_screen/lists_Page.dart';
import 'package:login_screen/reusable_component/custom_button.dart';
import 'package:login_screen/reusable_component/custom_text_form_field.dart';
import 'package:login_screen/reusable_component/user_needs.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController passController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  bool passToggle = true;
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      print('Form is valid!');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ListsPage()));
    }
  }
  // Define your validator function
  String? validateTextField(String? value) {
    return (value != null && !value.contains('@') && !value.contains('.'))
        ? 'Enter a valid email.'
        : null;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF405D72),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Login to your account'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Center(
                child: Text(
                  'Welcome back! Please enter your details.',
                  style: TextStyle(
                    color: Color(0xFFFFF8F3),
                    fontSize: 16,
                  ),
                ),
              ),
              CustomTextFormField(
                hintText: "Enter your Email",
                label: "Email",
                prefixIcon: Icons.email,
                controller: emailController,
              ),
              const SizedBox( height: 16.0, ),
              CustomPassTextfield(
                hintText: "Enter your Password",
                label: "Password",
                prefixIcon: Icons.lock,
                controller: passController,
                passtToggle: passToggle,
                onToggle: () {
                  setState(() {
                    passToggle = !passToggle;
                  });
                },
              ),
              const SizedBox(
                height: 16.0,
              ),
              const UserNeeds(
                  question: 'Do you Forget your password?', answer: 'Reset Now'),
              const SizedBox(height: 16.0,),
              SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: CustomButton(
                    onPress: _submitForm,
                    textButton: 'Log In',
                  )),
              const SizedBox(height: 16.0, ),
              const UserNeeds(
                  question: 'Don\'t have an account?', answer: 'Sign Up'),
            ],
          ),
        ),
      ),
    );
  }
}
