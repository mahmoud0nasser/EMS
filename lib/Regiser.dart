import 'package:center_system/utils/app_colors.dart';
import 'package:center_system/widgets/custom_button.dart';
import 'package:center_system/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Register_Screen extends StatelessWidget {
  const Register_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: AppColors.backgroundCol,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Sign Up",
              style: TextStyle(
                color: Color(0xff1F1F39),
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Enter your details below & free sign up",
              style: TextStyle(
                color: Color(0xffB8B8D2),
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  )),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      label: "Name",
                      hint: "enter your Name",
                      controller: TextEditingController(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      label: "Phone Number",
                      hint: "enter your Phone Number",
                      controller: TextEditingController(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      label: "Email",
                      hint: "enter your Email",
                      controller: TextEditingController(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      label: "Password",
                      isPassword: true,
                      hint: "enter your Password",
                      controller: TextEditingController(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      label: "Confirm Password",
                      isPassword: true,
                      hint: "enter your Password",
                      controller: TextEditingController(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      label: "Current Year",
                      hint: "Current Year",
                      controller: TextEditingController(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      label: "Department",
                      hint: "enter your Department",
                      controller: TextEditingController(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      label: "Father's phone Number",
                      hint: "Father's phone Number",
                      controller: TextEditingController(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                      onPressed: () {},
                      text: "Sign Up",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
