import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isError = false;

  void _login() {
    // Add your validation logic here
    String username = _usernameController.text;
    String password = _passwordController.text;

    // For example, simple validation logic
    if (username == 'name' && password == 'pswd') {
      // Navigate to the next screen or perform other actions upon successful login
      _clearError();
    } else {
      // Display an error message
      setState(() {
        _isError = true;
      });
    }
  }

  void _clearError() {
    setState(() {
      _isError = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _clearError();
                _login();
              },
              child: Text('Login'),
            ),
            if (_isError)
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Incorrect username or password. Please try again.',
                  style: TextStyle(color: Colors.red),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
