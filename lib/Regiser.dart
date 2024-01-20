// ignore_for_file: null_check_always_fails, unrelated_type_equality_checks

import 'package:center_system/utils/app_colors.dart';
import 'package:center_system/widgets/custom_button.dart';
import 'package:center_system/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Register_Screen extends StatefulWidget {
  const Register_Screen({super.key});

  @override
  State<Register_Screen> createState() => _Register_ScreenState();
}

class _Register_ScreenState extends State<Register_Screen> {
  List<String> Departments = ["عام", "علمى", "ادبي", "علمى علوم", "علمى رياضة"];
  String dep = "عام";
  bool isPassTrue1 = true;
  bool isPassTrue2 = true;
  bool isFalse = false;
  // ignore: non_constant_identifier_names
  GlobalKey<FormState> FormKey = GlobalKey();
  GlobalKey<FormState> PhoneKey = GlobalKey();
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xff3D5CFF).withOpacity(0.8),
        ),
        child: Form(
          key: FormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "انشاء حساب جديد",
                  style: TextStyle(
                    color: Colors.white,
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
                  "أدخل التفاصيل الخاصة بك أدناه",
                  style: TextStyle(
                    color: Colors.white,

                    // color: Color(0xffB8B8D2),
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
                          label: "اسم الطالب",
                          hint: "اسم الطالب بالكامل",
                          validate: (value) {
                            if (value == "") {
                              return "هذا الحقل مطلوب";
                            } else if (value!.length < 3) {
                              return "يجب أن يكون هذا الحقل أكثر من 3 أحرف";
                            }
                            return null;
                          },
                          controller: TextEditingController(),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "رقم الطالب",
                            style: TextStyle(
                              color: Color(0xff1F1F39),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),

                        IntlPhoneField(
                          initialCountryCode: "EG",
                          // key: PhoneKey,
                          validator: (value) {
                            if (value == "") {
                              print(value);
                              return "هذا الحقل مطلوب";
                            }
                            return null;
                          },

                          focusNode: focusNode,
                          decoration: InputDecoration(
                            hintText: 'رقم الطالب',
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.phone_android,
                                color: AppColors.black,
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(),
                                borderRadius: BorderRadius.circular(16)),
                          ),

                          // languageCode: "ar",
                          onChanged: (phone) {
                            print(phone.completeNumber);
                          },
                          onCountryChanged: (country) {
                            print('Country changed to: ' + country.name);
                          },
                        ),

                        CustomTextFormField(
                          label: "البريد الالكترونى",
                          hint: "البريد الالكترونى",
                          validate: (value) {
                            if (value! == "") {
                              return "هذا الحقل مطلوب";
                            } else if (value.contains("@gmail.com") == false &&
                                value.length > 10) {
                              return "يرجى ادخال البريد بشكل صحيح";
                            }
                            return null;
                          },
                          controller: TextEditingController(),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextFormField(
                          label: "كلمة السر",
                          suffixIconOnPressed: () {
                            setState(() {
                              isPassTrue1 = !isPassTrue1;
                            });
                          },
                          validate: (value) {
                            if (value == "") {
                              return "هذا الحقل مطلوب";
                            } else if (value!.length < 3) {
                              return "يجب أن يكون هذا الحقل أكثر من 3 أحرف";
                            }
                            return null;
                          },
                          isPassword: isPassTrue1,
                          hint: "كلمة السر",
                          icon: isPassTrue1
                              ? Icons.visibility_off
                              : Icons.visibility_outlined,
                          // controller: TextEditingController(),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextFormField(
                          label: "تاكيد كلمة السر",
                          isPassword: isPassTrue2,
                          validate: (value) {
                            if (value == "") {
                              return "هذا الحقل مطلوب";
                            } else if (value!.length < 3) {
                              return "يجب أن يكون هذا الحقل أكثر من 3 أحرف";
                            }
                            return null;
                          },
                          hint: "تاكيد كلمة السر",
                          suffixIconOnPressed: () {
                            setState(() {
                              isPassTrue2 = !isPassTrue2;
                            });
                          },
                          icon: isPassTrue2
                              ? Icons.visibility_off
                              : Icons.visibility_outlined,
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Text(
                              "القسم",
                              style: TextStyle(
                                color: Color(0xff1F1F39),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              // height: 50,

                              width: 250,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: DropdownButton<String>(
                                value: dep,
                                underline: const SizedBox(),
                                isExpanded: true,
                                menuMaxHeight: 150,
                                items:
                                    Departments.map((item) => DropdownMenuItem(
                                          value: item,
                                          child: Text(
                                            item,
                                            style:
                                                const TextStyle(fontSize: 15),
                                          ),
                                        )).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    dep = value!;
                                  });
                                },
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
                        const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "رقم ولى الامر",
                            style: TextStyle(
                              color: Color(0xff1F1F39),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 5,
                        ),
                        IntlPhoneField(
                          initialCountryCode: "EG", focusNode: focusNode,
                          // focusNode: focusNode,
                          decoration: InputDecoration(
                            hintText: 'رقم ولى الامر',
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.phone_android,
                                color: AppColors.black,
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(),
                                borderRadius: BorderRadius.circular(16)),
                          ),
                          // languageCode: "en",
                          onChanged: (phone) {
                            print(phone.completeNumber);
                          },
                          validator: (value) {
                            if (value == "") {
                              return "هذا الحقل مطلوب";
                            }
                            return null;
                          },
                          onCountryChanged: (country) {
                            print('Country changed to: ' + country.name);
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: isFalse,
                              onChanged: (value) {
                                setState(() {
                                  isFalse = value!;
                                });
                              },
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.7,
                              // height: MediaQuery.of(context).size.width * 0.2,
                              child: const Text(
                                "من خلال إنشاء حساب، يجب عليك الموافقة على الشروط والأحكام الخاصة بنا.",
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
                          height: 7,
                        ),

                        CustomButton(
                          onPressed: () {
                            if (FormKey.currentState!.validate() && isFalse) {
                              print("ok");
                            } else {
                              print("Please check");
                            }
                          },
                          text: "انشاء حساب جديد",
                        ),

                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "هل لديك حساب بالفعل ؟ ",
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
                                "تسجيل دخول",
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
        ),
      ),
    );
  }
}
