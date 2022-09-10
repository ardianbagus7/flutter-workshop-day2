part of '../home.dart';

class CardWalletWidget extends StatelessWidget {
  const CardWalletWidget({
    Key? key,
    required this.amount,
    required this.returnAmount,
  }) : super(key: key);

  final int amount;
  final int returnAmount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 18,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 25,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColors.primary,
        // gradient: const LinearGradient(
        //   begin: Alignment.bottomLeft,
        //   end: Alignment.topRight,
        //   colors: [
        //     CustomColors.primary,
        //     CustomColors.secondary,
        //   ],
        // ),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: CustomColors.black.withOpacity(.1),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Saldo Tabungan",
            style: Styles.roboto(
              fontSize: 16,
              color: CustomColors.lightGrey,
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.end,
            spacing: 5,
            children: [
              Text(
                "Rp",
                style: Styles.roboto(
                  fontSize: 18,
                  color: CustomColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                amount.toString(),
                style: Styles.roboto(
                  fontSize: 30,
                  color: CustomColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Divider(
            color: CustomColors.lightGrey,
          ),
          const SizedBox(height: 20),
          Text(
            "Saldo Tabungan",
            style: Styles.roboto(
              fontSize: 16,
              color: CustomColors.lightGrey,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Rp $returnAmount",
            style: Styles.roboto(
              fontSize: 20,
              color: CustomColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
