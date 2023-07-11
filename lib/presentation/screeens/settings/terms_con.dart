
import 'package:flutter/material.dart';
import 'package:odc/presentation/styles/colors.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xfffafafa),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: primaryColor,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        title: Text(
          'Terms & Conditions',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width/20),
        child: ListView(
          children: [
            Text(
              'Personal Information:\n You agree that the provision of Services will commence upon completion of all formalities of registration required under this Terms and Conditions.The information provided must be correct. Choosing registration, you bind provide us the correct name, e-mail and other useful information. To correct or update this information, click on the "Account details" in your account. LINKdotNET.',
             maxLines: 10,
            ),
            SizedBox(height: size.height/30),
            Text(
              'Personal Information:\n You agree that the provision of Services will commence upon completion of all formalities of registration required under this Terms and Conditions.The information provided must be correct. Choosing registration, you bind provide us the correct name, e-mail and other useful information. To correct or update this information, click on the "Account details" in your account. LINKdotNET.',
              maxLines: 10,
            ),
            SizedBox(height: size.height/30,),
            Text(
              ' Personal Data Security:\n Your personal data will be transmitted to the authorities in order to check any work-related activities or other authorities as justified verifications for under the law.Data provided by clients are strictly confidential. LINKdotNET is committed in front of clients not to provide this data to third persons or companies and use them strictly for the business relationship between the client and LINKdotNET.Your personal data (name and surname of service users, phone number and e-mail) are processed byFunambol Inc.., A company based in Delaware, 1065 East Hillsdale Blvd, Ste.400, Foster CA 94404 USA and certified Safe Harbour . Therefore, your data will be subject to the legislation of that State incident such as, but without limitation to, Patriot Act. Servers used by this company are owned by mobinil , Cairo Egypt which complies with all the security measures under the Egyptian law.This site uses security measures against the loss, misuse or alteration of information that is in control of LINKdotNET.Any attempt to access personal data of another user to modify site content https://www.mobinil.com or to affect performance server that runs the site https://www.orange.eg will be considered a fraud attempt https://www.orange.eg site and cause the initiation of criminal investigations against those who has / have tried it.',
              maxLines: 10,
            ),
            SizedBox(height: size.height/30,),


          ],
        ),
      ),
    );
  }
}
