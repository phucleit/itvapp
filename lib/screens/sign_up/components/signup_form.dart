import 'package:flutter/material.dart';
import 'package:itv/components/custom_suffix_icon.dart';
import 'package:itv/components/default_button.dart';
import 'package:itv/components/form.error.dart';
import 'package:itv/screens/complete_profile/complete_profile_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  late String name;
  String? password;
  String? confirm_password;
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildConfirmPasswordFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButton(
            text: 'Tiếp tục',
            press: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirm_password = newValue!,
      onChanged: (value) {
        if (password == confirm_password) {
          setState(() {
            errors.remove(kMatchPassError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "";
        } else if (password != value) {
          setState(() {
            errors.add(kMatchPassError);
          });
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Xác nhận mật khẩu',
        hintText: 'Nhập lại mật khẩu...',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Lock.svg',
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length >= 6 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value == null ||
            value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        } else if (value.length < 6 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
          return "";
        }
        password = value;
        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Mật khẩu',
        hintText: 'Nhập mật khẩu...',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Lock.svg',
        ),
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => name = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNamelNullError)) {
          setState(() {
            errors.remove(kNamelNullError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value == null ||
            value.isEmpty && !errors.contains(kNamelNullError)) {
          setState(() {
            errors.add(kNamelNullError);
          });
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Tên đăng nhập',
        hintText: 'Nhập tên đăng nhập...',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/User.svg',
        ),
      ),
    );
  }
}
