import 'package:face_camera/face_camera.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:parking_auto/Screen/otp_phone.dart';
import 'package:parking_auto/Screen/payment.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();


  const firebaseOptions = FirebaseOptions(
    appId: '1:601251091983:android:a7fd23a34760410193f57a',
    apiKey: 'AIzaSyAZ1gYbNl6qwQHpAEV08ZvJakjXnonsO5o',
    projectId: 'smart-parking-5fd71',
    messagingSenderId: '601251091983',
    authDomain: 'smart-parking-5fd71.firebaseapp.com',
  );

  await Firebase.initializeApp(
    options: firebaseOptions
  );
  // await Firebase.initializeApp();
  FaceCamera.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: RegisterUser(),
      //home: HomePage(),
      //home: RegistrationHistory(),
      home: CheckOut(),
      //home: LoginWithPhone(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Select Option"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => OtpPhone()));
                },
                child: Text("Login with google")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => OtpPhone()));
                },
                child: Text("Login with facebook")),

            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => OtpPhone()));
                },
                child: Text("Login with Phone")),

            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => OtpPhone()));
                },
                child: Text("Login with Twitter"))
          ],
        ),
      ),
    );
  }
}