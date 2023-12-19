import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool rememberMe = false;

  void onLogin() {
    print('Login Button Pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png',
                  width: 40, height: 40, fit: BoxFit.cover),
              const SizedBox(width: 16),
              const Text('Believer\'s Beacon',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ))
            ],
          ),
          const SizedBox(height: 60),
          // Text('Login', style: Theme.of(context).textTheme.titleMedium),
          TextField(
            cursorColor: Theme.of(context).primaryColor,
            decoration: InputDecoration(
              labelText: 'Username',
              labelStyle: const TextStyle(
                fontSize: 12,
                color: Color(0xFFA8A7A7),
              ),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Color(0xFFA8A7A7)), // Disable default underline
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context)
                        .primaryColor), // Disable default underline
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          TextField(
            obscureText: true,
            cursorColor: Theme.of(context).primaryColor,
            decoration: InputDecoration(
              labelText: 'Password',
              labelStyle: const TextStyle(
                fontSize: 12,
                color: Color(0xFFA8A7A7),
              ),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Color(0xFFA8A7A7)), // Disable default underline
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context)
                        .primaryColor), // Disable default underline
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          ElevatedButton(
            onPressed: onLogin,
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              foregroundColor: Colors.white,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.login),
                SizedBox(width: 8),
                Text('Login'),
              ],
            ),
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
              // Checkbox(
              //     value: rememberMe, onChanged: (value) => checkboxChanged),
              Checkbox(
                value: rememberMe,
                onChanged: (value) {
                  setState(() {
                    rememberMe = value!;
                  });
                },
                // activeColor: Theme.of(context).primaryColor,
              ),
              const Text('Remember Me'),
              const Spacer(),
              Text('Forgot Password?',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  )),
            ],
          ),

          const SizedBox(height: 24.0),
          const Text('--OR--'),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/google.png', width: 48, height: 48),
              const SizedBox(width: 16.0),
              Image.asset('assets/images/facebook.png', width: 48, height: 48),
            ],
          ),
          const SizedBox(height: 32.0),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text('Don\'t have an Account?'),
            const SizedBox(width: 8.0),
            Text('Sign Up',
                style: TextStyle(color: Theme.of(context).primaryColor)),
          ]),
        ]),
      ),
    )));
  }
}
