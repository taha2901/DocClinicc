import 'package:doc_clinic/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'widgets/box_of_email_and_pass.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorsManager.mainBlue,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: ColorsManager.mainBlue,
          
        ),
        child: const Center(
          child: BoxOfEmailAndPassword(),
        ),
      ),
    );
  }
}
