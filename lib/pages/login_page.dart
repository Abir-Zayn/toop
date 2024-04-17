import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:toop/config/app_routes.dart';
import 'package:http/http.dart' as http;

const baseURL = 'http://192.168.0.105:3000';

class loginPage extends StatelessWidget {
  final loginRoute = '$baseURL/login';
  final usermailController = TextEditingController();
  final passwordController = TextEditingController();

  loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    login();
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const Spacer( ),
                //Welcome Text
                const Text(
                  'Hello, Welcome Back',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 16,),
                const Text(
                  'Login to Continue',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const Spacer(),

                //Input Email Field
                TextField(
                  controller: usermailController,
                  decoration: InputDecoration(
                    hintText: "Enter your Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.7),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                //Input Password Field
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: "Enter your Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.7),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                //Forget Password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      'Forget Password',
                    ),
                  ),
                ),

                //Login Button
                SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      login();
                      // Navigator.of(context).pushReplacementNamed(AppRoutes.main);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amberAccent,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Text('Login'),
                  ),
                ),

                const Spacer(),

                const Text('or Sign in With', style: TextStyle(color: Colors.white),),

                //Login With Google
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/icons/googleIcon.png',
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(width: 10,),
                        const Text('Login with Google'),
                      ],
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                //Login With Mobile Number
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/icons/phoneIcon.png',
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(width: 10,),
                        const Text('Login with Phone Number'),
                      ],
                    ),
                  ),
                ),

                //Create Account
                Row(
                  children: [
                    const Text(
                      'Don\'t have an Account?', style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.amberAccent,
                      ),
                      child: const Text(
                        'Sign Up',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<String> login() async {
      final usermail = usermailController.text;
      final password = passwordController.text;
      
      final body = {
        'usermail': usermail,
        'password': password
      };
      
      final response = await http.post(Uri.parse(loginRoute), body: jsonEncode(body));
      if(response.statusCode==200){
        print(response.body);
        return response.body;
      }else{
        throw Exception('Failed to Login');
      }
  }
}
