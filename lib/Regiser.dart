// ignore_for_file: null_check_always_fails

import 'package:center_system/utils/app_colors.dart';
import 'package:center_system/widgets/custom_button.dart';
import 'package:center_system/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Register_Screen extends StatefulWidget {
  const Register_Screen({super.key});

  @override
  State<Register_Screen> createState() => _Register_ScreenState();
}

class _Register_ScreenState extends State<Register_Screen> {
  List<String> Departments = ["علمى", "ادبي", "علمى علوم", "علمى رياضة", "عام"];
  String dep = "علمى";

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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Number",
                          style: TextStyle(
                            color: Color(0xff1F1F39),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 60,
                              child: TextFormField(
                                // controller: controller,
                                // cursorColor: AppColors.primary,
                                keyboardType: TextInputType.phone,
                                // validator: validate,
                                // obscureText: isPassword,
                                readOnly: true,
                                decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff858597)),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16.0,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff858597)),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                  ),
                                  // hintText: hint,
                                  // hintStyle:
                                  // const TextStyle(color: Color(0xff858597)),
                                  hintText: "+20",
                                  hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  // suffixIcon: IconButton(
                                  // onPressed: suffixIconOnPressed,
                                  // icon: Icon(
                                  // icon,
                                  // color: AppColors.primary,
                                  // ),
                                  // ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 257,
                              child: TextFormField(
                                // controller: controller,
                                // cursorColor: AppColors.primary,
                                keyboardType: TextInputType.phone,
                                // validator: validate,
                                // obscureText: isPassword,
                                decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff858597)),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16.0,
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff858597)),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                  ),
                                  // hintText: hint,
                                  // hintStyle:
                                  // const TextStyle(color: Color(0xff858597)),
                                  hintText: "enter your Phone",
                                  hintStyle:
                                      const TextStyle(color: Color(0xff858597)),

                                  suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.phone_android,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            //     SizedBox(
                            //       width: 250,
                            //       child: CustomTextFormField(
                            //         label: "Phone Number",
                            //         hint: "enter your Phone Number",
                            //         controller: TextEditingController(),
                            //       ),
                            //     ),
                          ],
                        ),
                      ],
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
                    Row(
                      children: [
                        const Text(
                          "Department",
                          style: TextStyle(
                            color: Color(0xff1F1F39),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 50,
                          width: 200,
                          child: FittedBox(
                            child: DropdownButton<String>(
                              value: dep,
                              items: Departments.map((item) => DropdownMenuItem(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(fontSize: 15),
                                    ),
                                  )).toList(),
                              onChanged: (value) {
                                setState(() {
                                  dep = value!;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    // CustomTextFormField(
                    //   label: "Department",
                    //   hint: "enter your Department",
                    //   controller: TextEditingController(),
                    // ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Father's Number",
                          style: TextStyle(
                            color: Color(0xff1F1F39),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 60,
                              child: TextFormField(
                                // controller: controller,
                                // cursorColor: AppColors.primary,
                                keyboardType: TextInputType.phone,
                                // validator: validate,
                                // obscureText: isPassword,
                                readOnly: true,
                                decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff858597)),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16.0,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff858597)),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                  ),
                                  // hintText: hint,
                                  // hintStyle:
                                  // const TextStyle(color: Color(0xff858597)),
                                  hintText: "+20",
                                  hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  // suffixIcon: IconButton(
                                  // onPressed: suffixIconOnPressed,
                                  // icon: Icon(
                                  // icon,
                                  // color: AppColors.primary,
                                  // ),
                                  // ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 257,
                              child: TextFormField(
                                // controller: controller,
                                // cursorColor: AppColors.primary,
                                keyboardType: TextInputType.phone,
                                // validator: validate,
                                // obscureText: isPassword,
                                decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff858597)),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16.0,
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff858597)),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                  ),
                                  // hintText: hint,
                                  // hintStyle:
                                  // const TextStyle(color: Color(0xff858597)),
                                  hintText: "enter your Phone",
                                  hintStyle:
                                      const TextStyle(color: Color(0xff858597)),

                                  suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.phone_android,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            //     SizedBox(
                            //       width: 250,
                            //       child: CustomTextFormField(
                            //         label: "Phone Number",
                            //         hint: "enter your Phone Number",
                            //         controller: TextEditingController(),
                            //       ),
                            //     ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomButton(
                      onPressed: () {},
                      text: "Sign Up",
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          // height: MediaQuery.of(context).size.width * 0.2,
                          child: const Text(
                            "By creating an account you have to agreewith our them & condication.",
                            // overflow: TextOverflow.clip,
                            style: TextStyle(
                              color: Color(0xff858597),
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account？ ",
                          // overflow: TextOverflow.clip,
                          style: TextStyle(
                            color: Color(0xff858597),
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, null!);
                          },
                          child: const Text(
                            "Log in",
                            // overflow: TextOverflow.clip,
                            style: TextStyle(
                              color: Color(0xff3D5CFF),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
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
