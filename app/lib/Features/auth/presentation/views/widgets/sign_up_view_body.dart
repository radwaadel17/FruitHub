import 'package:app/Features/auth/presentation/manager/cubits/sign_up_cubit.dart';
import 'package:app/Features/auth/presentation/views/widgets/Custom_check_box.dart';
import 'package:app/Features/auth/presentation/views/widgets/text_span_check_box.dart';
import 'package:app/Features/auth/presentation/views/widgets/text_span_log_in.dart';
import 'package:app/core/functions/error_bar_function.dart';
import 'package:app/core/utils/colors.dart';
import 'package:app/core/widegets/custom_app_bar.dart';
import 'package:app/core/widegets/custom_button.dart';
import 'package:app/core/widegets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  bool? isChecked;
  String? name, email, password;
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  bool isObscure = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(children: [
          const CustomAppBar(txt: 'حساب جديد'),
          CustomTextField(
            onSaved: (data) {
              name = data;
            },
            textInputType: TextInputType.text,
            hintText: 'الاسم كامل',
          ),
          CustomTextField(
            onSaved: (data) {
              email = data;
            },
            textInputType: TextInputType.emailAddress,
            hintText: 'البريد الإلكتروني',
          ),
          CustomTextField(
            isObscure: isObscure,
            onSaved: (data) {
              password = data;
            },
            textInputType: TextInputType.visiblePassword,
            hintText: 'كلمة المرور',
            suffixIcon: IconButton(
              onPressed: () {
                isObscure = !isObscure;
                setState(() {});
              },
              icon: Icon(
                isObscure == true ? Icons.visibility_off : Icons.remove_red_eye,
                color: ColorsApp.textColor,
              ),
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
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                if (isChecked == null || isChecked == false) {
                  buildErrorBar(context, 'يجب الموافقة على الشروط والأحكام');
                  return;
                }
                BlocProvider.of<SignUpCubit>(context)
                    .signUp(name: name!, password: password!, email: email!);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            txt: 'إنشاء حساب جديد',
          ),
          const SizedBox(
            height: 16,
          ),
          const TextSpanLogIn(),
        ]),
      ),
    );
  }
}
