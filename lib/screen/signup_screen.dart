import 'package:flutter/material.dart';

import '../widget/signup_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignupWidget(),
    );
  }
}


