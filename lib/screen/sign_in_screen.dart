import 'package:attendance/components/buttons/button.dart';
import 'package:attendance/components/gap.dart';
import 'package:attendance/components/input/input.dart';
import 'package:attendance/core/util/color_palettes.dart';
import 'package:attendance/core/util/constants.dart';
import 'package:attendance/core/util/regex.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double topHeight = screenHeight * 0.382;
    double bottomHeight = screenHeight * 0.618;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: Theme.of(context).primaryColor,
          ),
          SizedBox(
            height: screenHeight,
            child: ListView(
              children: [
                SizedBox(
                  height: topHeight,
                  child: Padding(
                    padding: const EdgeInsets.all(
                      80.0,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/SVG/logo.svg",
                      ),
                    ),
                  ),
                ),
                Container(
                  height: bottomHeight,
                  decoration: const BoxDecoration(
                    color: ColorPalette.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45.0),
                      topRight: Radius.circular(45.0),
                    ),
                  ),
                  width: double.infinity,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(Paddings.screen),
                      child: Form(
                        key: _formKey,
                        child: Gap(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          space: 20.0,
                          children: [
                            Text(
                              "مرحباً بعودتك",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 45.0,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            const SizedBox(height: 80.0),
                            Input(
                              label: "الرقم",
                              textInputAction: TextInputAction.next,
                              validator: (String? value) {
                                if (value?.isEmpty == true) {
                                  return "الرقم مطلوب";
                                }
                                return null;
                              },
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(digitsRegExp),
                              ],
                            ),
                            Input(
                              label: "كلمة المرور",
                              textInputAction: TextInputAction.done,
                              validator: (String? value) {
                                if (value?.isEmpty == true) {
                                  return "كلمة السر مطلوبة";
                                }
                                return null;
                              },
                              obscureText: true,
                              onFieldSubmitted: (value) {
                                if (_formKey.currentState?.validate() == true) {
                                  _formKey.currentState?.save();
                                  _onPressedSignIn();
                                }
                              },
                            ),
                            const SizedBox(height: 50.0),
                            Button(
                              label: "تسجيل الدخول",
                              onPressed: _onPressedSignIn,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void _onPressedSignIn() {
    print("Sign in");
    // Validate returns true if the form is valid, or false otherwise.
    if (_formKey.currentState!.validate()) {
      // If the form is valid, display a snackbar. In the real world,
      // you'd often call a server or save the information in a database.
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
    }
  }
}
