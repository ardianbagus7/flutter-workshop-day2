part of '../auth.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is splash screen"),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                context.go(Routes.loginScreen);
              },
              child: Text("Go to login screen"),
            ),
          ],
        ),
      ),
    );
  }
}
