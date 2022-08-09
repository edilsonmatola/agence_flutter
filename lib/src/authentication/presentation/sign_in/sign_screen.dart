import 'package:agence_flutter/src/authentication/widgets/primary_button.dart';
import 'package:agence_flutter/src/authentication/widgets/secondary_button.dart';
import 'package:agence_flutter/src/authentication/widgets/sign_in_form.dart';
import 'package:agence_flutter/src/constants/app_assets.dart';
import 'package:flutter/material.dart';

import '../../../products/presentation/product_screen/presentation.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInState();
}

class _SignInState extends State<SignInScreen> {
  // Controladores de campos
  final TextEditingController nameInputController = TextEditingController();
  final TextEditingController passwordInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: ListView(
            children: [
              Column(
                children: [
                  const Text(
                    'AGENCE',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      letterSpacing: 10,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SignInForm(
                    prefixIcon: Icons.person_outline,
                    hintText: 'User',
                    controller: nameInputController,
                    obscureText: false,
                    onSaved: (value) {
                      setState(() {
                        nameInputController.text = value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SignInForm(
                    sufixIcon: Icons.visibility_off_outlined,
                    prefixIcon: Icons.lock_outline,
                    hintText: 'Password',
                    controller: passwordInputController,
                    obscureText: true,
                    onSaved: (value) {
                      setState(() {
                        passwordInputController.text = value;
                      });
                    },
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password?',
                    ),
                  ),
                  PrimaryButton(
                    text: 'Sign In',
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductScreen(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const DividerWidget(),
                  const SizedBox(
                    height: 16,
                  ),
                  SecondaryButton(
                    buttonColor: Colors.grey.shade100,
                    textColor: Colors.black,
                    text: 'Login with Google',
                    iconImage: AppAssets.googleAuthIcon,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SecondaryButton(
                    buttonColor: Colors.grey.shade100,
                    textColor: Colors.black,
                    text: 'Login with Facebook',
                    iconImage: AppAssets.facebookAuthIcon,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DividerWidget extends StatelessWidget {
  const DividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .40,
          child: const Divider(
            color: Color.fromRGBO(203, 203, 212, 1),
            thickness: 1,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        const Text('OR'),
        const SizedBox(
          width: 4,
        ),
        const SizedBox(
          width: 4,
        ),
        const SizedBox(
          width: 4,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .40,
          child: const Divider(
            color: Color.fromRGBO(203, 203, 212, 1),
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
