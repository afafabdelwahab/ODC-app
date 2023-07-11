import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  SettingItem({Key? key,required this.title,required this.ontap}) : super(key: key);
  String title;
  VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        trailing: IconButton(onPressed: ontap, icon: Icon(Icons.arrow_forward_ios)),
      ),
    );
  }
}
