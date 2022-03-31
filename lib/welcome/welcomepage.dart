import 'package:cooking_recipe_flutter/home/home.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // color: Colors.green,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('img/onboard/indonesia_food.jpg'),
                fit: BoxFit.cover)),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                Colors.black.withOpacity(0.4),
                Colors.white.withOpacity(0.3)
              ])),
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Indonesia Food \nRecipe Cooking',
                  style: TextStyle(
                      fontSize: 25, color: Colors.white, letterSpacing: 1),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Let's make delicious dish \nwith the best recipe for the family",
                  style: TextStyle(
                      fontSize: 17, color: Colors.white, letterSpacing: 1),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                ConfirmationSlider(
                    width: 250,
                    foregroundColor: Colors.green,
                    textStyle: TextStyle(color: Colors.black),
                    text: 'Get Started!',
                    onConfirmation: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                          (route) => false);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
