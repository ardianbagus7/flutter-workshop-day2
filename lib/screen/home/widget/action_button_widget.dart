part of '../home.dart';

class ActionButtonWidget extends StatelessWidget {
  const ActionButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 18,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
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
      child: Row(
        children: [
          Expanded(
            child: IconTextButton(
              text: "Transfer",
              icon: Icons.swap_horiz_outlined,
              onTap: () {},
            ),
          ),
          Expanded(
            child: IconTextButton(
              text: "Transaksi",
              icon: Icons.receipt,
              onTap: () {},
            ),
          ),
          Expanded(
            child: IconTextButton(
              text: "Tambah Saldo",
              icon: Icons.add_circle_outline,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
