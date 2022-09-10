part of '../home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Api api = Api();

  bool isLoading = false;
  HomeScreenData? homeScreenData;

  Future<void> onRefresh() async {
    setState(() {
      isLoading = true;
    });

    await api.fetchHomeData().then((value) {
      setState(() {
        homeScreenData = value;
      });
    }).catchError((e, s) {
      print("$e $s");
    });

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    onRefresh();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.lightGrey,
      appBar: AppBar(
        backgroundColor: CustomColors.lightGrey,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.only(left: 18.0),
          child: CircleAvatar(
            backgroundColor: CustomColors.primary,
            radius: 28,
          ),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              homeScreenData?.user.name ?? "-",
              style: Styles.roboto(
                fontSize: 16,
                color: CustomColors.black,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              "No Rekening: ${homeScreenData?.user.noRekening}",
              style: Styles.roboto(
                fontSize: 12,
                color: CustomColors.midGrey2,
              ),
            ),
          ],
        ),
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardWalletWidget(
                amount: homeScreenData?.wallet.amount ?? 0,
                returnAmount: homeScreenData?.wallet.returnAmount ?? 0,
              ),
              const SizedBox(height: 20),
              const ActionButtonWidget(),
              const SizedBox(height: 20),
              TransactionListWidget(
                transactionList: homeScreenData?.transactionList ?? [],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
