import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:profiler/views/screens/auth/register/step_3.dart';

import '../../../widgets/form_fields.dart';

class RegisterStepTwoPage extends StatelessWidget {
  const RegisterStepTwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account setup"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // padding: EdgeInsets.all(10),
          // physics: AlwaysScrollableScrollPhysics(),
          children: [
            Text(
              "Setup your account",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(4.0),
            Text(
              "Setup a username, and password together with some other important information.",
            ),
            Gap(4.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  LucideIcons.info,
                  color: Theme.of(context).disabledColor,
                  size: 16.0,
                ),
                Gap(8.0),
                Expanded(
                  child: Text(
                    "If you instead want to sign up with your Google account or Apple ID, go back to the previous screen.",
                    style: TextStyle(
                      color: Theme.of(context).disabledColor,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ],
            ),
            Gap(24.0),
            SimpleFormField(
              hintText: "Email address",
              prefixIcon: LucideIcons.user,
              keyboardType: TextInputType.emailAddress,
            ),
            Gap(16.0),
            SimpleFormField(
              hintText: "Phone number",
              prefixIcon: LucideIcons.phone,
              keyboardType: TextInputType.phone,
            ),
            Gap(16.0),
            Divider(),
            Gap(16.0),
            SimpleFormField(
              hintText: "Username",
              prefixIcon: LucideIcons.userCircle,
            ),
            Gap(16.0),
            PasswordFormField(
              hintText: "Password",
              prefixIcon: LucideIcons.keySquare,
            ),
            Gap(16.0),
            PasswordFormField(
              hintText: "Confirm password",
              prefixIcon: LucideIcons.lock,
            ),
            Spacer(),
            SizedBox(
              width: Get.width,
              height: 48.0,
              child: ElevatedButton(
                onPressed: () => Get.to(() => RegisterStepThreePage()),
                child: Text(
                  'Save and continue',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
