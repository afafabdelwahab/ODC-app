import 'package:flutter/material.dart';
import 'package:odc/presentation/constants/app_assets.dart';

import '../../styles/colors.dart';

class Partners extends StatelessWidget {
  const Partners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
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
        title: Text(
          'Our Partner',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: size.height / 20, horizontal: size.width / 30),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.grey, Colors.white, Colors.grey],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: Stack(
            children: [
              Image.asset(odcImagePng),
              Container(
                margin: EdgeInsets.all(size.width/20),
                child: Text(
                  'ODC',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
