import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),

        child: SingleChildScrollView(
          child: Column(
            children:
            [
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.w100,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email Address',
                  prefixIcon: Icon(
                    Icons.email_outlined,
                  ),

                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(
                    Icons.lock_outline_rounded,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                  ),

                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              SizedBox(
                width: 250,
                height: 35,

                child: MaterialButton(
                    onPressed: () {},
                  color: Colors.blue,
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  TextButton(onPressed: () {},
                      child: const Text(
                          'Register Now',
                        style: TextStyle(
                          fontSize: 14,
                        ),

                      ))
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
