import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';


import 'ConstColor/Colors.dart';
import 'Navbar/Category.dart';
import 'Navbar/Discovery.dart';
import 'Navbar/home.dart';
import 'Navbar/notification.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffF3F4F4)
      ),
      home: splash(),
    );
  }
}




class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  Future<void>  Nextpage() async{
    Future.delayed(const Duration(seconds: 3)).then((value)=>Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    ));

  }

  @override
  void initState() {
    Nextpage();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  ConstColor().mainColor,
      body :Center(
        child: Container(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.model_training_rounded),
              Text('Hello',style: TextStyle(color: ConstColor().titleColor,fontSize: 25,fontWeight: FontWeight.w500),),
              Text('Travel',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w900),),
            ],
          ),
        ),
      ),
    );
  }
}














class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  int _currentIndex=0;
  final _pages=[
    home(),
    discovery(),
    notification(),
    category(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int value){
          setState(() {
            _currentIndex=value;
          });
        },
        currentIndex: _currentIndex,
        backgroundColor: Colors.grey,
        fixedColor: ConstColor().mainColor,
        unselectedItemColor: Colors.grey,

        items: [
          BottomNavigationBarItem(

              icon: Icon(IconlyBroken.home),label: '',backgroundColor: Colors.white),

          BottomNavigationBarItem(icon: Icon(IconlyBroken.discovery),label: ''),

          BottomNavigationBarItem(icon: Icon(IconlyBroken.notification),label: ''),



          BottomNavigationBarItem(icon: Icon(IconlyBroken.category),label: ''),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}
