// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:odc/presentation/styles/colors.dart';
// import 'package:odc/presentation/widgets/custom_border_textfield.dart';
//
//
//
// class CustomTextField extends StatelessWidget {
//   TextEditingController? controller;
//   String title;
//   Function validation;
//
//
//   CustomTextField({
//     this.controller,
//     required this.title,
//     required this.validation
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//         validator: (val)
//         {
//           return validation(val);
//         },
//         controller: controller,
//         cursorColor: primaryColor,
//         decoration: InputDecoration(
//           labelText: title,
//           floatingLabelStyle: GoogleFonts.poppins(color: primaryColor),
//           enabledBorder: customBorder(grey),
//           focusedBorder: customBorder(primaryColor),
//           errorBorder: customBorder(red),
//           focusedErrorBorder: customBorder(red),
//         ));
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:odc/presentation/styles/colors.dart';


class CustomTextField extends StatelessWidget {
  CustomTextField({required this.hint,required this.controller,this.icon,this.obscureText=false,required this.keyboardType,this.preicon});
  final String hint;
  final TextEditingController controller;
  final IconButton? icon;
  final Icon? preicon;
  bool obscureText = false;
  TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return
      TextFormField(

        controller: controller,
        keyboardType: keyboardType,

        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: preicon,

          hintText: hint,
          suffixIcon: icon,
          border: OutlineInputBorder(
            borderSide:
            BorderSide(width: 3, color: Colors.grey.withOpacity(0.2)), //<-- SEE HERE
            borderRadius: BorderRadius.circular(50.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(width: 3, color: primaryColor), //<-- SEE HERE
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
      );
  }
}
