import 'package:flutter/material.dart';

import '../../core/color_manager.dart';
    
class SearchEdittext extends StatelessWidget {

  const SearchEdittext({ Key? key, required this.controller, required this.type, required this.isPassword, required this.suffixIcon, required this.labelText, this.onSubmitted, this.onChanged, this.validate, this.onTab }) : super(key: key);
  
 final TextEditingController controller;
  final TextInputType type;
  final bool isPassword;
 final Widget suffixIcon;
 final String labelText;
  final onSubmitted;
  final onChanged;
  final validate;
  final onTab;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.06,
      child: TextFormField(
        controller: controller,
        keyboardType: type,
        onFieldSubmitted: onSubmitted,
        onChanged: onChanged,
        validator: validate,
        onTap: onTab,
        obscureText: isPassword,
        // style: Theme.of(context).textTheme.bodyText1,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: ColorManager.darkGrey,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: ColorManager.darkGrey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: ColorManager.primary,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: ColorManager.darkGrey,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: ColorManager.error,
            ),
          ),
          labelText: labelText,
             suffixIcon: suffixIcon,
           prefixIcon: Image.asset('assets/images/Location.png'),
             prefixIconColor: ColorManager.black,
          //suffixStyle: TextStyle(color: ColorManager.black),
          // labelStyle: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
