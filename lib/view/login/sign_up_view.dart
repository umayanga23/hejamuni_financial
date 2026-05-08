import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:hejamuni_financial/common/color_extension.dart';
import 'package:hejamuni_financial/common_widget/primary_button.dart';
import 'package:hejamuni_financial/common_widget/secondry_button.dart';
import 'package:hejamuni_financial/common_widget/round_textfield.dart';
import 'package:hejamuni_financial/view/login/sign_in_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignUpView> {
  TextEditingController textEmail = TextEditingController();
  TextEditingController textPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
        backgroundColor: TColor.gray80,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/img/app_logo.png",
                  width: media.width * 0.5,
                  fit: BoxFit.contain,
                ),
                const Spacer(),
                const SizedBox(
                  height: 15,
                ),
                RoundTextfield(
                  title: "E-mail Addres",
                  hintText: "enter email",
                  keyboardType: TextInputType.emailAddress,
                  controller: textEmail,
                ),
                const SizedBox(
                  height: 15,
                ),
                RoundTextfield(
                  title: "Password",
                  hintText: "enter Valid Password",
                  keyboardType: TextInputType.visiblePassword,
                  controller: textPassword,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 5,
                        margin: const EdgeInsets.symmetric(horizontal: 1),
                        decoration: BoxDecoration(
                          color: TColor.gray70,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 5,
                        margin: const EdgeInsets.symmetric(horizontal: 1),
                        decoration: BoxDecoration(
                          color: TColor.gray70,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 5,
                        margin: const EdgeInsets.symmetric(horizontal: 1),
                        decoration: BoxDecoration(
                          color: TColor.gray70,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 5,
                        margin: const EdgeInsets.symmetric(horizontal: 1),
                        decoration: BoxDecoration(
                          color: TColor.gray70,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Use 8 or more character a mix of letter,\nnumber & symbols.",
                      style: TextStyle(
                        color: TColor.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                PrimaryButton(title: "Get Stated it's free", onPressed: () {}),
                const Spacer(),
                Text(
                  "Do you have already an account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: TColor.white,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SecondryButton(
                    title: "Sign In",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInView(),
                        ),
                      );
                    }),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ));
  }
}
