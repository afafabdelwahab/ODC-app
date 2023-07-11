import 'package:flutter/material.dart';
import 'package:odc/presentation/screeens/login/login_screen.dart';
import 'package:odc/presentation/screeens/settings/partners.dart';
import 'package:odc/presentation/screeens/settings/support_page.dart';
import 'package:odc/presentation/screeens/settings/terms_con.dart';
import 'package:odc/presentation/styles/colors.dart';
import 'package:odc/presentation/views/setting_item.dart';
import 'package:odc/presentation/widgets/custom_divider.dart';

import 'faq_screen.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<SettingItem> setting=[
      SettingItem(title: 'FAQ', ontap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>FAQScreen()));
      }),
      SettingItem(title: 'Terms & Conditions', ontap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>TermsConditions()));
      }),
      SettingItem(title: 'Our Partners', ontap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>Partners()));
      }),
      SettingItem(title: 'Support', ontap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>Support()));
      }),
      SettingItem(title: 'Log out', ontap: (){
      showDialog(context: context, builder:(context)=> AlertDialog(
            title:Text('Log Out'),
            content: Text('Are You Sure?'),
            actions: [
              ElevatedButton(
                onPressed: () {
            return Navigator.pop(context);
                },
                child: const Text(
                  'Cancel',
                ),
              ),
              SizedBox(width: 10,),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
                },
                child: const Text(
                  'sure',
                ),
              ),
            ],
          ),


        );

      }
      ),

    ];
    return Scaffold(body: ListView.separated(
      itemCount: setting.length,
      separatorBuilder: (context,index)=>CustomDivider(),
      itemBuilder: (context, index) => SettingItem(title: setting[index].title, ontap: setting[index].ontap)

    ));
  }
}
