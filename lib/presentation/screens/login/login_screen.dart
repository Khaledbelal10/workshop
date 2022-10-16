import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:workshop/presentation/screens/register/register_screen.dart';
import 'package:workshop/presentation/styles/app_colors.dart';
import 'package:workshop/presentation/widgets/default_text.dart';
import 'package:workshop/presentation/widgets/default_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Orange',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Digital Center',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.h),
              child: Text(
                "Login",
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                ),
              ),
            ),
            DefaultTextFormField(
              validation: (){},
              onChanged: (){},
              hintText: 'Email',
              isObscureText: false,
              controller: emailController,
            ),
            SizedBox(
              height: 5.h,
            ),
            DefaultTextFormField(
              validation: (){},
              onChanged: (){},
              isPasswordField: true,
              hintText: 'Password',
              controller: passwordController,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 3.h),
              child: Text(
                "Forget Password?",
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 10.sp,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  AppColors.primaryColor,
                ),
              ),
              child: const Text('Login'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h),
              child: Row(
                children: [
                  const Expanded(
                      child: Divider(
                        color: Colors.grey,
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 1.w),
                    child:
                    const DefaultText(text: 'OR', textColor: Colors.grey),
                  ),
                  const Expanded(
                      child: Divider(
                        color: Colors.grey,
                      )),
                ],
              ),
            ),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterScreen(),
                      ));
                },
                style: OutlinedButton.styleFrom(
                  primary: AppColors.primaryColor,
                  side: const BorderSide(color: AppColors.primaryColor),
                ),
                child: const Text('Register')),
          ],
        ),
      ),
    );
  }
}
