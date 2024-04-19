import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halagula_app/src/controllers/signupController.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../utils/uidata/style.dart';

class FillButton extends StatelessWidget {
  final color;
  final width;
  final child;
  final ontap;

  FillButton(
      {super.key, required this.color, this.width, this.child, this.ontap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: child,
      ),
    );
  }
}

class ThirdpartyLogin extends StatelessWidget {
  const ThirdpartyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'OR CONTINUE WITH',
          style: UIDataDecoration.subHeadingStyleGrey,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 120, child: Image.asset('assets/images/fblogo.png')),
            SizedBox(height: 80, child: Image.asset('assets/images/google.png'))
          ],
        ),
        FillButton(
          color: Colors.black,
          width: Get.width / 1.7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.apple,
                size: 40,
                color: Colors.white,
              ),
              Text(
                'Sign in with Apple',
                style: UIDataDecoration.subHeadingStyleGrey,
              )
            ],
          ).paddingSymmetric(vertical: Get.height * 0.007),
        )
      ],
    );
  }
}

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  // ignore: prefer_typing_uninitialized_variables
  final width;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final ontap;
  final bool? obscure;
  final ImageProvider<Object>? prefixIconImage;

  CustomTextField(
      {super.key,
      this.width,
      required this.controller,
      required this.hintText,
      this.obscure,
      this.prefixIcon,
      this.suffixIcon,
      this.ontap,
      this.prefixIconImage});

  final SignUpController _ = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          controller: controller,
          obscureText: obscure != null ? _.passwordVisibility.value : false,
          // obscureText: true,
          decoration: InputDecoration(
            prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
            suffixIcon: suffixIcon != null
                ? IconButton(onPressed: ontap, icon: Icon(suffixIcon))
                : null,
            hintText: hintText,
            contentPadding: EdgeInsets.symmetric(
                vertical: Get.height * 0.028, horizontal: Get.width * 0.04),
            fillColor: Colors.white,
            filled: true,
            hintStyle:
                const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white, width: 1.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white, width: 1.0),
            ),
          ),
        ));
  }
}

class CustomPhoneField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final width;
  final ontap;
  final initialValue;
  const CustomPhoneField({
    super.key,
    this.width,
    required this.initialValue,
    required this.controller,
    required this.hintText,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: InternationalPhoneNumberInput(
        onInputChanged: ontap,
        inputDecoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                vertical: Get.height * 0.028, horizontal: Get.width * 0.04),
            hintText: hintText,
            border: const OutlineInputBorder(borderSide: BorderSide.none)),
        selectorConfig: const SelectorConfig(
            selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
            showFlags: true,
            setSelectorButtonAsPrefixIcon: true,
            leadingPadding: Checkbox.width),
        ignoreBlank: false,
        autoValidateMode: AutovalidateMode.disabled,
        selectorTextStyle: const TextStyle(color: Colors.black),
        initialValue: initialValue,
        textFieldController: controller,
        formatInput: false,
        keyboardType:
            const TextInputType.numberWithOptions(signed: true, decimal: true),
        inputBorder: const OutlineInputBorder(),
        onInputValidated: (bool value) {
          // Handle validation
        },
      ),
    );
  }
}
