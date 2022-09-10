part of '../home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is home screen"),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: Text("Back to login screen"),
            ),
          ],
        ),
      ),
    );
  }
}
