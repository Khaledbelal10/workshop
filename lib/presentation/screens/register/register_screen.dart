import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
 import 'package:workshop/presentation/styles/app_colors.dart';
import 'package:workshop/presentation/widgets/default_text.dart';

import '../../widgets/default_text_form_field.dart';
import '../login/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController firstNameController = TextEditingController();

  final TextEditingController lastNameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController confirmPasswordController =
  TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController phoneNumberController = TextEditingController();

  List<DropdownMenuItem<String>> genderMenu = const [
    DropdownMenuItem(
      value: 'm',
      child: Text('Male'),
    ),
    DropdownMenuItem(
      value: 'f',
      child: Text('Female'),
    ),
  ];
  String gender = 'm';

  void changeGender (val){
    gender = val;

  }

  var genderSelected = "Select gender";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.h),
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
                "Register",
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
              hintText: 'First Name',
              isObscureText: false,
              controller: firstNameController,
            ),
            SizedBox(
              height: 5.h,
            ),
            DefaultTextFormField(
              validation: (){},
              onChanged: (){},
              hintText: 'Last Name',
              isObscureText: false,
              controller: lastNameController,
            ),
            SizedBox(
              height: 5.h,
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
            SizedBox(
              height: 5.h,
            ),
            DefaultTextFormField(
              validation: (){},
              onChanged: (){},
              isPasswordField: true,
              hintText: 'Confirm Password',
              controller: confirmPasswordController,
            ),
            SizedBox(
              height: 5.h,
            ),
            DefaultTextFormField(
              validation: (){},
              onChanged: (){},
              hintText: 'Phone Number',
              isObscureText: false,
              controller: phoneNumberController,
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DefaultText(text: 'Gender',fontSize: 15.sp,),
                Container(
                  height: 5.h,
                  width: 50.w,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.deepOrange, width: 2)
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      onChanged: (value) {
                        changeGender(value);
                      },
                      value: gender,
                      items: genderMenu,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>LoginScreen(),
                    ));
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  AppColors.primaryColor,
                ),
              ),
              child: const Text('Register'),
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
      ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>LoginScreen(),
              ));
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            AppColors.primaryColor,
          ),
        ),
        child: const Text('login '),
      ),
            SizedBox(
              height: 5.h,
            ),
          ],
        ),
      ),
    );
  }
}
