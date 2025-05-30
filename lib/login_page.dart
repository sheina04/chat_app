import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  void loginUser() {
    print(userNameController.text);
    print(passwordController.text);
    print('Login successful!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Let\'s sign you in!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Welcome back! \nYou\'ve been missed!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.blueGrey,
                  ),
                ),
                SizedBox(height: 20),
                Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                  height: 200,
                ),
                SizedBox(height: 20),
                TextField(
                  controller: userNameController,
                  decoration: InputDecoration(
                    hintText: 'Add your username',
                    hintStyle: TextStyle(color: Colors.blueGrey),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 12),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Type your password',
                    hintStyle: TextStyle(color: Colors.blueGrey),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: loginUser,
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    print('Link clicked!');
                  },
                  child: Column(
                    children: [
                      Text('Find us on'),
                      Text(
                        'https://poojabhaumik.com',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
