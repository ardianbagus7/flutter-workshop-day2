part of '../auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final Api api = Api();
  bool isLoading = false;

  TextEditingController noController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void onLoginTap() async {
    setState(() {
      isLoading = true;
    });

    await api
        .login(
      mobileNumber: noController.text,
      password: passwordController.text,
    )
        .then((success) {
      if (success) {
        CommonUtil.showSnackbar(context, title: "Login success");
        context.go(Routes.homeScreen);
      } else {
        CommonUtil.showSnackbar(context, title: "Login failed");
      }
    }).catchError((e, s) {
      CommonUtil.showSnackbar(context, title: e.toString());
    });

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Center(
            child: Image.asset(
              "assets/logo.png",
              height: 80,
              width: 300,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "Log in with your mobile number",
              textAlign: TextAlign.center,
              style: Styles.roboto(
                fontSize: 16,
                color: CustomColors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              color: CustomColors.lightGrey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: noController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Mobile Number',
                labelStyle: Styles.roboto(
                  color: CustomColors.midGrey,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              color: CustomColors.lightGrey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: passwordController,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Password',
                labelStyle: Styles.roboto(
                  color: CustomColors.midGrey,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              child: Text(
                "Forgot Password?",
                style: Styles.roboto(
                  fontSize: 14,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: !isLoading ? onLoginTap : null,
            child: Container(
              height: 50,
              margin: const EdgeInsets.symmetric(
                horizontal: 18,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: CustomColors.primary,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: (!isLoading)
                  ? Text(
                      "Log in",
                      style: Styles.roboto(
                        fontSize: 18,
                      ),
                    )
                  : const CircularProgressIndicator(
                      color: CustomColors.white,
                    ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Center(
              child: Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: Styles.roboto(
                      fontSize: 14,
                      color: CustomColors.midGrey2,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      "Sign up",
                      style: Styles.roboto(
                        fontSize: 14,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
