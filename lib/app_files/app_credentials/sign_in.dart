import 'package:flutter/material.dart';
import 'package:nlib_library_assistant/utils/app_colors.dart';

import '../../widgets/text_formatter.dart';
//import 'started1.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  bool rememberMe = false; // Store the switch state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Logo
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Center(
              child: Container(
                width: 220,
                height: 220,
                color: AppColors.BASE_COLOR,
                // child: Image.asset(
                //   'assets/register.png',

                // ),
              ),
            ),
          ),

          // Sign In Text
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: TextHeader(
                text: 'Sign In',
                fontColor: AppColors.NORMAL_TEXT_COLOR,
              ),
            ),
          ),

          SizedBox(height: 30),

          // Student Email Text Field
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 35,
            ),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.green.shade50,
                filled: true,
                hintText: 'Student text',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.BASE_COLOR,
                  ),
                  borderRadius: BorderRadius.vertical(),
                ),
                prefixIcon: Icon(Icons.email),
              ),
            ),
          ),

          SizedBox(height: 20),

          // Password Text Field
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 35,
            ),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                fillColor: AppColors.BASE_COLOR,
                filled: true,
                hintText: 'Your password',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.BASE_COLOR,
                  ),
                  borderRadius: BorderRadius.vertical(),
                ),
                prefixIcon: Icon(Icons.private_connectivity_sharp),
                suffixIcon: Icon(Icons.visibility),
              ),
            ),
          ),

          SizedBox(height: 16),

          // Remember Me and Forgot Password
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Switch(
                      value: rememberMe,
                      onChanged: (value) {
                        setState(() {
                          rememberMe = value;
                        });
                      },
                      activeColor: AppColors.BASE_COLOR,
                    ),
                    SmallText(
                      text: 'Remember Me',
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    // Add logic for the "Forgot Password" action
                  },
                  child: BoldText(
                    text: 'Forgot Password',
                    fontColor: AppColors.BASE_COLOR,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          // Sign In Button
          Container(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: SmallText(
                      text: 'SIGN IN',
                      fontColor: AppColors.HEADER_TEXT_COLOR,
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        AppColors.BUTTON_COLOR,
                      ),
                      minimumSize:
                          MaterialStateProperty.all<Size>(Size(10, 57)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
