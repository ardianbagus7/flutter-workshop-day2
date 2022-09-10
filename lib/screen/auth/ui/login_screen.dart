part of '../auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is login screen"),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                context.push(Routes.homeScreen);
              },
              child: Text("Go To Home Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
