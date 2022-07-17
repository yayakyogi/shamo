import 'package:flutter/material.dart';
import 'package:shamo/core/utils/transition_page.dart';
import 'package:shamo/presentation/pages/login.dart';
import 'package:shamo/presentation/themes/themes.dart';
import 'package:shamo/presentation/widgets/button_primary.dart';
import 'package:shamo/presentation/widgets/form_input.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    // function untuk menghandle signup
    handleSignUp() {
      setState(() {
        _isLoading = true;
      });
    }

    // widget header
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style: fw_600.copyWith(fontSize: 24, color: primaryTextColor),
            ),
            const SizedBox(height: 2),
            Text(
              'Register and Happy Shoping',
              style: fw_400.copyWith(color: secondaryTextColor),
            ),
          ],
        ),
      );
    }

    // widget form fullName
    Widget textFieldFullName() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: FormInput(
          textEditingController: _fullNameController,
          title: 'FullName',
          icon: 'assets/icons/ic_fullname.png',
          isObscureText: false,
          hintText: 'Your Full Name',
        ),
      );
    }

    // widget form fullName
    Widget textFieldUsername() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: FormInput(
          textEditingController: _usernameController,
          title: 'Username',
          icon: 'assets/icons/ic_username.png',
          isObscureText: false,
          hintText: 'Your Username',
        ),
      );
    }

    // widget form email
    Widget textFieldEmail() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: FormInput(
          textEditingController: _emailController,
          title: 'Email',
          icon: 'assets/icons/ic_email.png',
          isObscureText: false,
          hintText: 'Your Email Address',
        ),
      );
    }

    // widget form password
    Widget textFieldPassword() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: FormInput(
          textEditingController: _passwordController,
          title: 'Password',
          icon: 'assets/icons/ic_key.png',
          isObscureText: true,
          hintText: 'Your Password',
        ),
      );
    }

    // widget button login
    Widget buttonSignUp() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: ButtonPrimary(
          title: _isLoading ? 'Loading...' : 'Sign Up',
          onPressed: () => handleSignUp(),
        ),
      );
    }

    // widget button signupm
    Widget buttonLogin() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account? ",
              style: fw_400.copyWith(fontSize: 12, color: secondaryTextColor),
            ),
            const SizedBox(width: 2),
            GestureDetector(
              onTap: () {
                Navigator.pop(context, ExitPage(page: const Login()));
              },
              child: Text(
                'Sign In',
                style: fw_600.copyWith(fontSize: 12, color: primaryColor),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: ListView(
            children: [
              header(),
              textFieldFullName(),
              textFieldUsername(),
              textFieldEmail(),
              textFieldPassword(),
              buttonSignUp(),
              buttonLogin(),
            ],
          ),
        ),
      ),
    );
  }
}
