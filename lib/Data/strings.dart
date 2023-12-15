import 'package:devfest/Objects/HomeObjet.dart';

class Strings {
  static String desc =
      "Please make sure to receive and enter the OTP code to verify your identity before completing the account creation process";
  static String descinvalidotp =
      "The OTP code is incorrect. Please verify and try again";
  static String splashscreendesc =
      "Welcome to the online shopping app! Start your fantastic shopping experience now";

  static List<HomeObjet> HomeDAta = [
    HomeObjet(
        solution:
            "Hello Mrs,\n I run a company that provides online services and we would be glad to have yoiu join us.",
        fav: true,
        titel: "Looking for a job online",
        useCountrySol: "Mohammed  Rachdi",
        useNameSol: "Egypt"),
    HomeObjet(
        solution:
            "Hello,\nif you're facing a random issue with electricity, here are a few steps to troubleshoot and fix",
        fav: false,
        titel: "Having an electricity issue",
        useNameSol: "Amine Bennabi",
        useCountrySol: "Algeria"),
    HomeObjet(
        solution:
            "Hello,\n I can contribute to enhancing agricultural infrastructure and providing urgent assistance to bolster food security, overcoming the challenges of hunger during these difficult times",
        fav: false,
        titel: "Facing Hunger Amidst War",
        useCountrySol: "Qatar",
        useNameSol: "youcef ElMohssin"),
  ];
}
