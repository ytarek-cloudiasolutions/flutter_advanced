import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account yet?',
            style: TextStyles.font13DarkBlueRegular,
          ),
          TextSpan(text: ' Sign Up', style: TextStyles.font13BlueSemiBold),
        ],
      ),
    );
  }
}
