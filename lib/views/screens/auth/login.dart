import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:profiler/views/screens/auth/register/step_1.dart';

import '../../../utils/constants.dart';
import '../../widgets/form_fields.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 56.0, 10.0, 20.0),
            child: Column(
              children: [
                Image.asset(logo),
                Gap(16.0),
                Text(
                  'Welcome Back!',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Gap(8.0),
                Text('We are happy to have you again among us.'),
                Gap(32.0),
                SimpleFormField(
                  hintText: 'Email address or username',
                  prefixIcon: LucideIcons.atSign,
                  keyboardType: TextInputType.emailAddress,
                ),
                Gap(16.0),
                PasswordFormField(
                  hintText: 'Password',
                  prefixIcon: LucideIcons.lock,
                ),
                Gap(8.0),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: seedColor),
                    ),
                  ),
                ),
                Gap(24.0),
                SizedBox(
                  width: Get.width,
                  height: 48.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: Get.width,
                  height: 48.0,
                  child: TextButton(
                    onPressed: () => Get.to(() => RegisterStepOnePage()),
                    child: Text(
                      "Sign up instead",
                      style: TextStyle(color: seedColor),
                    ),
                  ),
                ),
                Gap(16.0),
                Row(
                  children: [
                    Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'or connect with',
                        style:
                            TextStyle(color: Theme.of(context).disabledColor),
                      ),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
                Gap(16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: borderRadius * 1.2,
                          boxShadow: [primaryShadow]),
                      child: Image.asset(
                        appleLogo,
                        width: 48.0,
                        height: 48.0,
                      ),
                    ),
                    Gap(16.0),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: borderRadius * 1.2,
                          boxShadow: [primaryShadow]),
                      child: Image.asset(
                        googleLogo,
                        width: 48.0,
                        height: 48.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}