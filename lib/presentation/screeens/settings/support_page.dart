import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odc/presentation/styles/colors.dart';
import 'package:odc/presentation/views/custom_textfield.dart';
import 'package:odc/presentation/widgets/custom_border_textfield.dart';
class Support extends StatelessWidget {
  Support({Key? key}) : super(key: key);

  TextEditingController namecontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar:  AppBar(
        backgroundColor:Color(0xfffafafa),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: primaryColor,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Support',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: size.height/30,horizontal: size.width/20),
        child: Column(
          children: [
            CustomTextField(hint: 'Name', controller: namecontroller, keyboardType: TextInputType.name,preicon: Icon(Icons.person),),
            SizedBox(height: size.height/20,),
            CustomTextField(hint: 'E-Mail', controller: emailcontroller, keyboardType: TextInputType.name,preicon: Icon(Icons.email),),
            SizedBox(height: size.height/20,),
          TextFormField(
          maxLines: 5,
            cursorColor: primaryColor,
          decoration: InputDecoration(
              alignLabelWithHint: true,
              hintText: 'what make you happy?',

              floatingLabelStyle: GoogleFonts.poppins(color: primaryColor),

              enabledBorder: customBorder(grey),
              focusedBorder: customBorder(primaryColor),
              errorBorder: customBorder(red),
              focusedErrorBorder: customBorder(red)),


        ),
            SizedBox(height: size.height/20,),
            SizedBox(child: ElevatedButton(onPressed: (){}, child: Text('Submit'),),width: double.infinity,height: size.height/20,)

          ],
        ),
      ),

    );
  }
}
