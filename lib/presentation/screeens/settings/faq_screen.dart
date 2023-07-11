import 'package:flutter/material.dart';
class FAQScreen extends StatelessWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xfffafafa),
        elevation: 0,
      ),

      body: ListView.builder(

          itemCount: 5,
          itemBuilder: (BuildContext,int index){
            return ExpansionTile(
              title:Text('How are you?'),
              children: [
                Text('sdfhjhhhhhhhhhhhhhhh'),
              ],
            );
          }
      )


    );
  }
}