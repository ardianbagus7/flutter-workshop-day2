part of '../home.dart';

class SingleTransactionWidget extends StatelessWidget {
  const SingleTransactionWidget({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 25,
            backgroundColor: CustomColors.primary,
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.title,
                  style: Styles.roboto(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  transaction.description,
                  style: Styles.roboto(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  transaction.date,
                  style: Styles.roboto(
                    fontSize: 12,
                    color: CustomColors.midGrey2,
                  ),
                ),
              ],
            ),
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.end,
            children: [
              Text(
                transaction.transactionType == "debit" ? "+" : "-",
                style: Styles.roboto(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
              Text(
                "Rp",
                style: Styles.roboto(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
              Text(
                "${transaction.amount}",
                style: Styles.roboto(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
