import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.05),
        SizedBox(width: SizeConfig.screenWidth * 0.05),
        Text(
          "Connexion réussie",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Image.asset(
          "assets/images/Vector.png",
          height: SizeConfig.screenHeight * 0.6, //70%
        ),
        // Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.4,
          child: DefaultButton(
            text: "Accueil",
            press: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
        ),
        // Spacer(),
      ],
    );
  }
}
