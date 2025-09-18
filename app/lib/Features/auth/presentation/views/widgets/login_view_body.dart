import 'package:app/Features/auth/presentation/views/widgets/dont_have_acc_text.dart';
import 'package:app/Features/auth/presentation/views/widgets/forget_pass_txt.dart';
import 'package:app/Features/auth/presentation/views/widgets/login_method_container.dart';
import 'package:app/Features/auth/presentation/views/widgets/or_txt.dart';
import 'package:app/core/utils/appIamges.dart';
import 'package:app/core/widegets/custom_app_bar.dart';
import 'package:app/core/widegets/custom_button.dart';
import 'package:app/core/widegets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomAppBar(
            txt: 'تسجيل دخول',
          ),
          const CustomTextField(
            hintText: 'البريد الإلكتروني',
            textInputType: TextInputType.emailAddress,
          ),
          const CustomTextField(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: Color(0xffC9CECF),
              )),
          const ForgetPasswordText(),
          CustomButton(
            onPressed: () {},
            txt: 'تسجيل دخول',
          ),
          const DontHaveAccountText(),
          const OrTxt(),
          const LogInMethodContainer(
              txt: 'تسجيل بواسطة جوجل', urlImage: Assets.imagesGoogle),
          const LogInMethodContainer(
              txt: 'تسجيل بواسطة أبل', urlImage: Assets.imagesApple),
          const LogInMethodContainer(
              txt: 'تسجيل بواسطة فيسبوك', urlImage: Assets.imagesFacebook),
        ],
      ),
    );
  }
}

