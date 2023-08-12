import 'package:flutter/material.dart';
import 'package:grocery_mobile_app_for_interview/core/app_export.dart';
import 'package:grocery_mobile_app_for_interview/service/postman_service.dart';
import 'package:grocery_mobile_app_for_interview/widgets/custom_elevated_button.dart';
import 'package:grocery_mobile_app_for_interview/widgets/custom_text_form_field.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore_for_file: must_be_immutable
class SigninScreen extends StatefulWidget {
  SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isscure = true;

  Widget togglePassword() {
    return GestureDetector(
      onTap: (() {
        setState(() {
          isscure = !isscure;
        });
      }),
      child: isscure
          ? const Icon(
              Icons.visibility_off,
              color: Colors.red,
              size: 14,
            )
          : const Icon(
              Icons.visibility,
              color: Colors.red,
              size: 14,
            ),
    );
  }

  String? isValidEmail(value) {
    if (value.isEmpty) {
      return "Email can't not be empty";
    }
    if (RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(value)) {
      return null;
    } else {
      return "Invalid Email";
    }
  }

  double heightOfSignUp = 400;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SizedBox(
              height: mediaQueryData.size.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgPlaceholder,
                      height: getVerticalSize(395),
                      width: getHorizontalSize(375),
                      alignment: Alignment.topCenter),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SingleChildScrollView(
                      child: Container(
                        height: heightOfSignUp,
                        padding: getPadding(
                            left: 28, top: 26, right: 28, bottom: 26),
                        decoration: AppDecoration.fill2.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Sign In",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.titleLarge),
                            CustomTextFormField(
                              controller: emailController,
                              margin: getMargin(top: 30),
                              contentPadding: getPadding(
                                  left: 20, top: 18, right: 20, bottom: 18),
                              textStyle: theme.textTheme.bodyLarge!,
                              hintText: "rafatul3588@gmail.com",
                              hintStyle: theme.textTheme.bodyLarge!,
                              textInputAction: TextInputAction.next,
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value!.contains(RegExp(r'[a-z/A-Z]'))) {
                                  return "Phone number can't be a Letter";
                                }
                                if (value.contains(' ')) {
                                  return 'Phone number cannot contains spaces';
                                }
                                if (value.contains(RegExp(
                                    r'[!@#<>?":_`~;[\]\\|=+)(*&^%\s-]'))) {
                                  return "Invalid Phone number";
                                }
                                if (value.isEmpty) {
                                  return ("Phone number can't be empty !");
                                }
                                return null;
                              },
                              onTap: () {
                                setState(() {
                                  heightOfSignUp = 500;
                                });
                              },
                            ),
                            CustomTextFormField(
                              controller: passwordController,
                              margin: getMargin(top: 12),
                              suffix: Container(
                                padding: getPadding(
                                    left: 30, top: 22, right: 20, bottom: 22),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(30)),
                                    border: Border.all(
                                        color: appTheme.gray40001,
                                        width: getHorizontalSize(1))),
                                child: togglePassword(),
                              ),
                              hintText: "********",
                              hintStyle: theme.textTheme.bodyLarge!,
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(60)),
                              obscureText: isscure,
                              defaultBorderDecoration:
                                  TextFormFieldStyleHelper.outlineGray40001TL30,
                              enabledBorderDecoration:
                                  TextFormFieldStyleHelper.outlineGray40001TL30,
                              focusedBorderDecoration:
                                  TextFormFieldStyleHelper.outlineGray40001TL30,
                              disabledBorderDecoration:
                                  TextFormFieldStyleHelper.outlineGray40001TL30,
                              onTap: () {
                                setState(() {
                                  heightOfSignUp = 600;
                                });
                              },
                              textInputAction: TextInputAction.done,
                              validator: (value) {
                                RegExp regex = RegExp(r'^.{8,}$');
                                if (value!.isEmpty) {
                                  return ("Password is Required *");
                                }
                                if (!regex.hasMatch(value)) {
                                  return ("password must be greaterthan 8 charcter");
                                }
                                return null;
                              },
                            ),
                            CustomElevatedButton(
                                text: "SIGN IN".toUpperCase(),
                                margin: getMargin(top: 57, bottom: 42),
                                buttonStyle:
                                    CustomButtonStyles.fillPrimary.copyWith(
                                  fixedSize: MaterialStateProperty.all<Size>(
                                    Size(
                                      double.maxFinite,
                                      getVerticalSize(60),
                                    ),
                                  ),
                                ),
                                buttonTextStyle:
                                    CustomTextStyles.titleMediumBlack900,
                                onTap: () async {
                                  if (_formKey.currentState!.validate()) {
                                    try {
                                      showAlertDialog(context);
                                      final SharedPreferences prefs =
                                          await SharedPreferences.getInstance();
                                      final res = await loginstatusCode();
                                      if (res != 'false') {
                                        prefs.setString('token', res);
                                        Navigator.pop(context);
                                        onTapSignin(context);
                                      } else {
                                        Navigator.pop(context);
                                        onTapSignin(context);
                                        // return;
                                      }
                                    } catch (e, s) {
                                      print("$e===> $s");
                                      return;
                                    }
                                  } else {
                                    return;
                                  }
                                })
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: const CircularProgressIndicator(
            color: Colors.greenAccent,
          ),
        );
      },
    );
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the homeContainerScreen.
  onTapSignin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }
}
