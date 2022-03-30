import 'exports.dart';

void main() {
  runApp(const QuickCab());
  NavigationColor.blueNavigation();
}

class QuickCab extends StatelessWidget {
  const QuickCab({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Quick Cab',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "Avenir",
        ),
        home: const SplashScreen(),
        //SelectRideScreen(),
      ),
    );
  }
}
