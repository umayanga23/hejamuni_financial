import 'package:flutter/material.dart';

import 'package:hejamuni_financial/common/color_extension.dart';
import 'package:hejamuni_financial/common_widget/primary_button.dart';
import 'package:hejamuni_financial/common_widget/secondry_button.dart';
import 'package:hejamuni_financial/view/login/sign_up_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/img/apple_btn.png"),
                        ),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              // ✅ Fix
                              color: Colors.black.withValues(alpha: 0.5),
                              blurRadius: 8,
                              offset: const Offset(0, 4))
                        ]),
                    alignment: Alignment.center,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/img/apple.png",
                          width: 15,
                          height: 15,
                          color: TColor.white,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Center(
                          child: Text(
                            "Sign Up With Apple",
                            style: TextStyle(
                              color: TColor.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ), // ✅ Center closed
                  ), // ✅ Container closed
                ),
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/img/google_btn.png"),
                        ),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              // ✅ Fix
                              color: Colors.white.withValues(alpha: 0.5),
                              blurRadius: 8,
                              offset: const Offset(0, 4))
                        ]),
                    alignment: Alignment.center,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/img/google.png",
                          width: 15,
                          height: 15,
                          color: TColor.gray,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Center(
                          child: Text(
                            "Sign Up With Google",
                            style: TextStyle(
                              color: TColor.gray,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ), // ✅ Center closed
                  ), // ✅ Container closed
                ),
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/img/fb_btn.png"),
                        ),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.blue.withValues(alpha: 0.5),
                              blurRadius: 10,
                              offset: const Offset(0, 4))
                        ]),
                    alignment: Alignment.center,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/img/fb.png",
                          width: 15,
                          height: 15,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Center(
                          child: Text(
                            "Sign Up With FaceBook",
                            style: TextStyle(
                              color: TColor.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ), // ✅ Center closed
                  ), // ✅ Container closed
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Or",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: TColor.white,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpView()));
                  },
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/img/secodry_btn.png"),
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      // ✅ Added Center
                      child: Text(
                        "Sign Up With E-mail",
                        style: TextStyle(
                          color: TColor.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ), // ✅ Center closed
                  ), // ✅ Container closed
                ),
                const SizedBox(height: 15),
                Text(
                  "By registe ring, you agree to our Terms of Use. Learn we collect, Use and share your data.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: TColor.white,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ));
  }
}
