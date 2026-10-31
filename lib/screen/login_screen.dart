import 'package:flutter/material.dart';
import 'package:real_state_app/const/colors.dart';
import 'package:real_state_app/const/font_style.dart';

import 'bottom_nav_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    GlobalKey<FormState> globalKey = GlobalKey<FormState>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.primaryColor,
      body: Column(
        children: [
          ///logo
          Expanded(
            flex: 1,
            child: Image.asset(
              'assets/images/logo_white.png',
              width: size.width * 0.6,
            ),
          ),

          ///body
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(25),
              width: size.width,
              decoration: BoxDecoration(
                color: MyColors.bottomSheetColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                  topRight: Radius.circular(45),
                ),
              ),
              child: Column(
                spacing: 20,
                children: [
                  Text(
                    'Login',
                    style: getLargeTitleStyle(
                      context,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: MyColors.lightColor,
                    ),
                    child: Form(
                      key: globalKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: emailController,
                            decoration: customDecoration(
                              icon: Icons.email_outlined,
                              iconColor: Colors.orange,
                              label: 'email',
                              iconBackgroundColor: Colors.orange.shade100,
                            ),
                            validator: emailValidator,
                          ),
                          Divider(),
                          TextFormField(
                            controller: passwordController,
                            decoration: customDecoration(
                              icon: Icons.lock_open,
                              iconColor: Colors.blueAccent,
                              label: 'Password',
                              iconBackgroundColor: Colors.blue.shade100,
                            ),
                            validator: passwordValidator,
                          ),
                        ],
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forget Password',
                          style: getSmallBodyStyle(context),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MyColors.primaryColor,
                          fixedSize: Size(size.width * 0.35, 55),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(15),
                          ),
                        ),
                        onPressed: () {
                          if (globalKey.currentState!.validate()) {
                            Navigator.of(
                              context,
                            ).pushReplacementNamed(BottomNavScreen.screenName);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('این یک اسنک‌بار است!'),
                                backgroundColor: Colors.red,
                                duration: Duration(seconds: 3),
                                dismissDirection: DismissDirection.startToEnd,
                                // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                //  behavior: SnackBarBehavior.fixed,
                                // action: SnackBarAction(
                                //   label: 'Undo',
                                //   textColor: Colors.white,
                                //
                                //   onPressed: () {
                                //     // یک عملیات را برگردان (optional)
                                //     ScaffoldMessenger.of(
                                //       context,
                                //     ).showSnackBar(SnackBar(content: Text('عملیات بازگردانده شد')));
                                //   },
                                // ),
                              ),
                            );
                          }
                        },
                        child: Text(
                          'Login',
                          style: getBodyStyle(
                            context,
                            color: MyColors.lightColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: MyColors.lightColor,
                        child: Icon(Icons.facebook),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: MyColors.lightColor,
                        child: Icon(Icons.apple),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: MyColors.lightColor,
                        child: Icon(Icons.telegram),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration customDecoration({
    required String label,
    required IconData icon,
    required Color iconColor,
    required Color iconBackgroundColor,
  }) {
    return InputDecoration(
      border: InputBorder.none,
      labelText: label,
      labelStyle: getSmallBodyStyle(context, color: MyColors.grey),
      prefixIcon: Container(
        decoration: BoxDecoration(
          color: iconBackgroundColor,
          borderRadius: BorderRadius.circular(50),
        ),

        child: Icon(icon, color: iconColor, size: 22),
      ),
    );
  }

  String emailValidator(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your email';
    }

    if (value.length >= 20) {
      return 'your email is too short';
    }

    if (!value.endsWith('@gmail.com')) {
      return 'your email is not valid';
    }
    return 'Email is not valid';
  }

  String passwordValidator(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your password';
    }

    if (value.length <= 6) {
      return 'your Password is too short';
    }
    return 'Email is not valid';
  }
}
