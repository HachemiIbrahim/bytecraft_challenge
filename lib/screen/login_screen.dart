import 'package:bytecraft_challenge/screen/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  void _submit() {
    if (_formKey.currentState!.validate()) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          "Login Screen",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("username"),
                  ),
                  autocorrect: false,
                  textCapitalization: TextCapitalization.none,
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please put a correct username";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("password"),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.length < 8) {
                      return "Password must be at least 8";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton.icon(
                  onPressed: _submit,
                  icon: const Icon(Icons.login, color: Colors.white),
                  label: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
