part of '../home.dart';

class TransactionListWidget extends StatelessWidget {
  const TransactionListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 18,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColors.white,
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
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 20,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Riwayat Transaksi",
                    style: Styles.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.black,
                    ),
                  ),
                ),
                const Icon(
                  Icons.chevron_right,
                  size: 25,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          // const Divider(
          //   color: CustomColors.lightGrey,
          // ),
          SingleTransactionWidget(),
          SingleTransactionWidget(),
          SingleTransactionWidget(),
          SingleTransactionWidget(),
          SingleTransactionWidget(),
        ],
      ),
    );
  }
}
