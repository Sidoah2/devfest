import 'package:devfest/Providers/ButtomBarIndex.dart';
import 'package:devfest/pages/Splash_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => ButtomBarIndex(),
    )
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: SplashScreen(),
      )),
    );
  }
}

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   ArCoreController? argarCoreController;
//   arg(ArCoreController coreController) {
//     argarCoreController = coreController;
//     displayimage(argarCoreController!);
//   }

//   displayimage(ArCoreController arCoreController) async {
//     final ByteData tetbyte =
//         await rootBundle.load("images/photo1702584712.jpeg");
//     final matriel = ArCoreMaterial(
//         color: Colors.blue, textureBytes: tetbyte.buffer.asUint8List());
//     final soher = ArCoreSphere(materials: [matriel]);
//     final node = ArCoreNode(shape: soher, position: vect64.Vector3(0, 0, -1.5));
//     argarCoreController!.addArCoreNode(node);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SafeArea(
//           child: Scaffold(
//         body: ArCoreView(onArCoreViewCreated: arg),
//       )),
//     );
//   }
// }
