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
              "Ardian Bagus Wicaksono",
              style: Styles.roboto(
                fontSize: 16,
                color: CustomColors.black,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              "No Rekening: 9011 3029 3992",
              style: Styles.roboto(
                fontSize: 12,
                color: CustomColors.midGrey2,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CardWalletWidget(
              amount: 1000000,
              returnAmount: 24600,
            ),
            const SizedBox(height: 20),
            const ActionButtonWidget(),
            const SizedBox(height: 20),
            const TransactionListWidget(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
