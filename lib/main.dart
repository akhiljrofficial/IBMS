//import 'package:bms/utils/features/screens/login.dart';
import 'package:bms/firebase_options.dart';
import 'package:bms/utils/bindings/generalbinding.dart';
import 'package:bms/utils/features/authentication/signup/authenticationrepo.dart';
import 'package:bms/utils/features/screens/splash_screen.dart';
import 'package:bms/utils/themes/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {

WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
).then((FirebaseApp value) => Get.put(AuthenticationRepository()) );
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode:ThemeMode.system,
      theme: Apptheme.lighttheme,
      darkTheme: Apptheme.darktheme,
      initialBinding: GeneralBindings(),
      home: const ScreenSplash(),
    );
  }
}