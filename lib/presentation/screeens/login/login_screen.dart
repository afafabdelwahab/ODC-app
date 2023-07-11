// import 'package:flutter/material.dart';
// import 'package:odc/presentation/constants/app_assets.dart';
// import 'package:odc/presentation/screeens/app_layout/app_layout.dart';
// import 'package:odc/presentation/screeens/home/home_screen.dart';
// import 'package:odc/presentation/screeens/signup/signup_screen.dart';
// import 'package:odc/presentation/styles/colors.dart';
// import 'package:odc/presentation/widgets/custom_text_form_field.dart';
//
// class LoginScreen extends StatelessWidget {
//   LoginScreen({Key? key}) : super(key: key);
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//         body: Padding(
//       padding: EdgeInsets.symmetric(horizontal: size.width / 30),
//       child: ListView(
//         children: [
//           Padding(
//             padding: EdgeInsets.only(top: size.height / 30),
//             child: Image.asset(
//               odcImagePng,
//               height: size.height / 11,
//               width: size.width / 1.5,
//               fit: BoxFit.cover,
//             ),
//           ),
//           SizedBox(
//             height: size.height / 30,
//           ),
//           Row(
//             children: const [
//               Text(
//                 'Login',
//                 style: TextStyle(fontSize: 40),
//               )
//             ],
//           ),
//           SizedBox(
//             height: size.height / 30,
//           ),
//           CustomTextFormField(
//             hintText: 'Email',
//             controller: emailController,
//           ),
//           SizedBox(
//             height: size.height / 30,
//           ),
//           CustomTextFormField(
//             hintText: 'Password',
//             controller: passwordController,
//           ),
//           SizedBox(
//             height: size.height / 30,
//           ),
//           Row(
//             children: [
//               TextButton(
//                   onPressed: () {},
//                   child: const Text(
//                     'Forget password?',
//                     style: TextStyle(
//                         color: primaryColor,
//                         fontSize: 20,
//                         decoration: TextDecoration.underline),
//                   ))
//             ],
//           ),
//           SizedBox(
//             height: size.height / 20,
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => AppLayout(),
//                   ));
//             },
//             child: const Text(
//               'Login',
//             ),
//           ),
//           SizedBox(
//             height: size.height / 30,
//           ),
//           Row(
//             children: [
//               const Expanded(
//                 child: Divider(
//                   color: Colors.grey,
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: size.width / 50),
//                 child: const Text('OR'),
//               ),
//               const Expanded(
//                 child: Divider(
//                   color: Colors.grey,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: size.height / 30,
//           ),
//           OutlinedButton(
//             onPressed: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => SignupScreen(),
//                   ));
//             },
//             child: const Text(
//               'Sign Up',
//             ),
//           )
//         ],
//       ),
//     ));
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:odc/presentation/constants/app_assets.dart';
import 'package:odc/presentation/screeens/app_layout/app_layout.dart';
import 'package:odc/presentation/screeens/signup/signup_screen.dart';
import 'package:odc/presentation/views/custom_textfield.dart';


import '../../styles/colors.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emialController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  bool obscureText=true;
  bool icon=true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.all(size.width / 20),
          child: ListView(
            children: [
              Image.asset(odcImagePng),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: size.height / 30,
              ),
              CustomTextField(
                keyboardType: TextInputType.emailAddress,
                hint: 'Email',
                controller: emialController,
              ),
              SizedBox(
                height: size.height / 30,
              ),

              CustomTextField(
                keyboardType: TextInputType.visiblePassword,

                hint: 'password',
                controller: passwordController,
                icon: IconButton(
                  onPressed: (){
                    setState(() {
                      obscureText=!obscureText;
                      icon=!icon;
                    });
                  },
                  icon:icon?Icon(Icons.visibility_off,color: Colors.grey,):Icon(Icons.visibility,color:primaryColor,),
                ),
                obscureText: obscureText,
              ),
              SizedBox(
                height: size.height / 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Forget Password?',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 17,
                      color: primaryColor),
                ),
              ),
              SizedBox(
                height: size.height / 30,
              ),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> AppLayout()));
                  },
                  child: Text('Login',style: TextStyle(fontSize: 18),),
                ),
                width: double.infinity,
                height: size.height / 20,
              ),
              SizedBox(
                height: size.height / 30,
              ),
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey, height: 2)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'OR',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Expanded(child: Divider(color: Colors.grey, height: 2)),
                ],
              ),
              SizedBox(
                height: size.height / 30,
              ),
              SizedBox(
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>SignupScreen()));
                  },
                  child: Text('Sign Up',style: TextStyle(color: primaryColor,fontSize: 18)),
                  style: OutlinedButton.styleFrom(
                    shape: StadiumBorder(),
                    side: BorderSide(width: 2, color:primaryColor),
                  ),
                ),
                width: double.infinity,
                height: size.height / 20,
              ),
            ],
          ),
        ));
  }
}
