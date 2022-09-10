part of '../home.dart';

class SingleTransactionWidget extends StatelessWidget {
  const SingleTransactionWidget({
    Key? key,
  }) : super(key: key);

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
                  "Ardian Bagus",
                  style: Styles.roboto(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  "Transfer",
                  style: Styles.roboto(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  "09 Sep 2022, 13:10",
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
                "+",
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
                "30.000",
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
