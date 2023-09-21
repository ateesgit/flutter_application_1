import 'package:flutter/material.dart';

final ButtonStyle buttonprimery = ElevatedButton.styleFrom(
  minimumSize: Size(300, 50),
  primary: Color.fromARGB(255, 81, 41, 2),
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(50)),
  ),
);

class Login1 extends StatefulWidget {
  const Login1({super.key});

  @override
  State<Login1> createState() => _LoginState();
}

class _LoginState extends State<Login1> {
  bool _visible = false; // This variable controls password visibility

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Color.fromARGB(255, 249, 245, 238)),
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Container(
                  height: 220,
                  width: 220,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: const DecorationImage(
                      image: AssetImage("asset/image/icon.png"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Enter your Username",
                    label: Text('Username'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: !_visible, // Toggle password visibility here
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password_outlined),
                    hintText: 'password',
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _visible = !_visible; // Toggle visibility
                        });
                      },
                      icon: Icon(_visible
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("LOGIN"),
                  style: buttonprimery,
                ),
                Row(
                  children: [
                    SizedBox(width: 50),
                    Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {},
                      child: Text("Sign Up Now"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Text("Forgot Password?"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
