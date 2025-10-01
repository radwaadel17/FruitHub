import 'package:app/Features/auth/presentation/manager/cubits/sign%20in/sign_in_cubit.dart';
import 'package:app/Features/auth/presentation/views/widgets/dont_have_acc_text.dart';
import 'package:app/Features/auth/presentation/views/widgets/forget_pass_txt.dart';
import 'package:app/Features/auth/presentation/views/widgets/login_method_container.dart';
import 'package:app/Features/auth/presentation/views/widgets/or_txt.dart';
import 'package:app/core/utils/appIamges.dart';
import 'package:app/core/widegets/custom_app_bar.dart';
import 'package:app/core/widegets/custom_button.dart';
import 'package:app/core/widegets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  bool isObscure = false;
  String? email, password;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(
              txt: 'تسجيل دخول',
            ),
            CustomTextField(
              onSaved: (data) {
                email = data;
              },
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            CustomTextField(
                isObscure: isObscure,
                onSaved: (data) {
                  password = data;
                },
                hintText: 'كلمة المرور',
                textInputType: TextInputType.visiblePassword,
                suffixIcon: IconButton(
                    onPressed: () {
                      isObscure = !isObscure;
                      setState(() {});
                    },
                    icon: Icon(
                      isObscure == true
                          ? Icons.visibility_off
                          : Icons.remove_red_eye,
                      color: const Color(0xffC9CECF),
                    ))),
            const ForgetPasswordText(),
            CustomButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  BlocProvider.of<SignInCubit>(context)
                      .signIn(email: email!, password: password!);
                } else {
                  //show errors
                  setState(() {
                    AutovalidateMode.always;
                  });
                }
              },
              txt: 'تسجيل دخول',
            ),
            const DontHaveAccountText(),
            const OrTxt(),
             LogInMethodContainer(
              onPressed: (){
                BlocProvider.of<SignInCubit>(context).signInWithGoogle();
              },
                txt: 'تسجيل بواسطة جوجل', urlImage: Assets.imagesGoogle),
            const LogInMethodContainer(
                txt: 'تسجيل بواسطة أبل', urlImage: Assets.imagesApple),
            LogInMethodContainer(
              onPressed: (){
                BlocProvider.of<SignInCubit>(context).signInWithFacebook();
              },
                txt: 'تسجيل بواسطة فيسبوك', urlImage: Assets.imagesFacebook),
          ],
        ),
      ),
    );
  }
}
