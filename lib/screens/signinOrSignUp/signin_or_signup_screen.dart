import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../components/primary_button.dart';
import '../../constants.dart';
import '../../main_provider.dart';
import '../chats/chats_screen.dart';

class SigninOrSignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeMode = Provider.of<ThemeModeProvider>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Spacer(flex: 2),
              Image.asset(
                themeMode.getThemeDark()
                    ? "assets/images/Logo_dark.png"
                    : "assets/images/Logo_light.png",
                height: 146,
              ),
              Spacer(),
              PrimaryButton(
                text: "Sign In",
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatsScreen(),
                  ),
                ),
              ),
              SizedBox(height: kDefaultPadding * 1.5),
              PrimaryButton(
                color: Theme.of(context).colorScheme.secondary,
                text: "Sign Up",
                press: () {},
              ),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
