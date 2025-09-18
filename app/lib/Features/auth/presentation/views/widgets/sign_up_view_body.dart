import 'package:app/Features/auth/presentation/views/widgets/Custom_check_box.dart';
import 'package:app/Features/auth/presentation/views/widgets/text_span_check_box.dart';
import 'package:app/Features/auth/presentation/views/widgets/text_span_log_in.dart';
import 'package:app/core/utils/colors.dart';
import 'package:app/core/widegets/custom_app_bar.dart';
import 'package:app/core/widegets/custom_button.dart';
import 'package:app/core/widegets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  bool? isChecked;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const CustomAppBar(txt: 'حساب جديد'),
      const CustomTextField(
        textInputType: TextInputType.text,
        hintText: 'الاسم كامل',
      ),
      const CustomTextField(
        textInputType: TextInputType.emailAddress,
        hintText: 'البريد الإلكتروني',
      ),
      const CustomTextField(
        textInputType: TextInputType.visiblePassword,
        hintText: 'كلمة المرور',
        suffixIcon: Icon(
          Icons.remove_red_eye,
          color: ColorsApp.textColor,
        ),
      ),
      Row(
        children: [
          CustomCheckBox(
            returnValue: (bool isChecked) {
              this.isChecked = isChecked;
            },
          ),
          const SizedBox(
            width: 8,
          ),
          const TextSpanCheckBoc(),
        ],
      ),
      const SizedBox(
        height: 16,
      ),
      CustomButton(
        onPressed: () {},
        txt: 'إنشاء حساب جديد',
      ),
      const SizedBox(
        height: 16,
      ),
      const TextSpanLogIn(),
    ]);
  }
}
