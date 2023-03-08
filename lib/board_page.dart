import 'package:flutter/material.dart';

import 'home_screen.dart';

Widget boardPage(String imgPath, String title, String desc,PageController controller, bool isLast, BuildContext context ) {
  TextStyle titleStyle = const TextStyle(
      color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold);
  TextStyle descStyle = const TextStyle(
      color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400);
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage(imgPath),
          fit: BoxFit.cover,
          colorFilter: const ColorFilter.mode(Colors.black54,
              BlendMode.luminosity) //change image mode (light, dark ..)
          ),
    ),
    padding: const EdgeInsets.all(16.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: titleStyle,
        ),
        const SizedBox(height: 12),
        Text(desc, style: descStyle),
        const SizedBox(height: 64),
        Align(
          alignment:Alignment. centerRight,
          child: RawMaterialButton(
            onPressed: () {
             if (isLast){
               Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));}
               else{
               controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);}
             },

            fillColor: Colors.orange[800],
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 64),
            shape: const StadiumBorder(),
            child: Text(isLast ? "Skip" : "Next Page", style: const TextStyle(color: Colors.white, fontSize: 20),),
          ),
        ),
        const SizedBox(height: 12),
      ],
    ),
  );
}
