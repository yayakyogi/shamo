import 'package:flutter/material.dart';
import 'package:shamo/core/utils/transition_page.dart';
import 'package:shamo/presentation/pages/register.dart';
import 'package:shamo/presentation/themes/themes.dart';
import 'package:shamo/presentation/widgets/button_primary.dart';
import 'package:shamo/presentation/widgets/form_input.dart';
import 'package:shamo/services/auth.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    Auth auth = Auth();

    handleSignIn() async {
      setState(() {
        _isLoading = true;
      });
      auth.getHttp().then((value) {
        print(value);
        setState(() {
          _isLoading = false;
        });
      }).catchError((e) => print(e.toString()));
    }

    // widget header
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: fw_600.copyWith(fontSize: 24, color: primaryTextColor),
            ),
            const SizedBox(height: 2),
            Text(
              'Sign In to Countinue',
              style: fw_400.copyWith(color: secondaryTextColor),
            ),
          ],
        ),
      );
    }

    // widget form email
    Widget textFieldEmail() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
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
    Widget buttonLogin() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: ButtonPrimary(
          title: _isLoading ? 'Loading...' : 'Login',
          onPressed: () => handleSignIn(),
        ),
      );
    }

    // widget button signupm
    Widget buttonSignUp() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account?",
              style: fw_400.copyWith(fontSize: 12, color: secondaryTextColor),
            ),
            const SizedBox(width: 2),
            GestureDetector(
              onTap: () {
                Navigator.push(context, EnterPage(page: const Register()));
              },
              child: Text(
                'Sign Up',
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
              textFieldEmail(),
              textFieldPassword(),
              buttonLogin(),
              buttonSignUp(),
            ],
          ),
        ),
      ),
    );
  }
}
