import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/constants.dart';
import 'package:fruit_hub/core/utils/styles.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/dont_have_account_widget.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/social_login_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        children: [
          const SizedBox(height: 24),
          const CustomTextFormField(
            hintText: 'البريد الالكتروني',
            keyboardType: TextInputType.emailAddress,
          ),

          const CustomTextFormField(
            suffixIcon: Icon(Icons.remove_red_eye, color: Color(0xFFC9CECF)),
            hintText: 'كلمه المرور',
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'نسيت كلمة المرور؟',
                style: Styles.semiBold13.copyWith(
                  color: AppColors.lightPrimaryColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 33),
          CustomButton(onPressed: () {}, text: 'تسجيل دخول'),
          const DontHaveAnAccountWidget(),
          const SizedBox(height: 33),
          const OrDivider(),
          const SizedBox(height: 16),
          SocialLoginButton(
            onPressed: () {
              // context.read<SigninCubit>().signinWithGoogle();
            },
            image: Assets.imagesGoogleIcon,
            title: 'تسجيل بواسطة جوجل',
          ),
          const SizedBox(height: 16),
          Platform.isIOS
              ? Column(
                children: [
                  SocialLoginButton(
                    onPressed: () {
                      // context.read<SigninCubit>().signinWithApple();
                    },
                    image: Assets.imagesApplIcon,
                    title: 'تسجيل بواسطة أبل',
                  ),
                  const SizedBox(height: 16),
                ],
              )
              : const SizedBox(),
          SocialLoginButton(
            onPressed: () {
              // context.read<SigninCubit>().signinWithFacebook();
            },
            image: Assets.imagesFacebookIcon,
            title: 'تسجيل بواسطة فيسبوك',
          ),
        ],
      ),
    );
  }
}
