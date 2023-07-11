import 'package:flutter/material.dart';
import 'package:odc/presentation/styles/colors.dart';
import 'package:odc/presentation/views/custom_text.dart';

class NewsScreenItem extends StatelessWidget {
  const NewsScreenItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width / 25),
      child: Card(
        child: ClipPath(
        child: Container(
        padding: EdgeInsets.all(16),
         decoration: BoxDecoration(
         border: Border(
            left: BorderSide(color: primaryColor, width: 2),
           right: BorderSide(color: primaryColor, width: 2),
           top: BorderSide(color: primaryColor, width: 2),
           bottom: BorderSide(color: primaryColor, width: 2),
              ),
          ),
    child: Row(
      children: [
        Flexible(
          flex: 5,
          child: Image.network(
            "https://img.freepik.com/premium-photo/astronaut-outer-open-space-planet-earth-stars-provide-background-erforming-space-planet-earth-sunrise-sunset-our-home-iss-elements-this-image-furnished-by-nasa_150455-16829.jpg?w=2000",
            fit: BoxFit.contain,
            // height: size.height / 5,
            // width: size.width / 5,
          ),
        ),
        Spacer(
          flex: 1,
        ),
        Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'title',
                  fontSize: 24,
                  textColor: primaryColor,
                ),
                SizedBox(
                  height: size.height / 50,
                ),
                CustomText(
                  text:
                  'titletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitle',
                  textColor: Colors.black,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            )),
        Spacer(
          flex: 1,
        )
      ],
    ),
    ),
    clipper: ShapeBorderClipper(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(3))),
         )
       )
    );
  }
}
