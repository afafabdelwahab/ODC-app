import 'package:flutter/material.dart';
import 'package:odc/presentation/styles/colors.dart';
import 'package:odc/presentation/views/news_screen_item.dart';
import 'package:odc/presentation/widgets/custom_divider.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Color(0xfffafafa),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: primaryColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'News',
          style: TextStyle(
              color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.separated(itemBuilder: (context, index) => const NewsScreenItem(), separatorBuilder:(context,index)=>const CustomDivider() , itemCount: 5,),
    );
  }
}
