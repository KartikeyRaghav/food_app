import 'package:flutter/material.dart';
import 'package:food_app/common/widgets/round_button.dart';
import 'package:food_app/common/widgets/round_icon_button.dart';
import 'package:food_app/features/presentation/screens/more/add_card_view.dart';
import 'package:food_app/features/presentation/screens/more/my_order_view.dart';
import 'package:food_app/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class PaymentDetailsView extends StatelessWidget {
  PaymentDetailsView({super.key});

  final List cardArr = [
    {
      "icon": "assets/icons/payment_methods/visa.png",
      "card": "**** **** **** 2187",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 46),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Iconsax.arrow_left_2,
                        size: 30,
                        color: FAColors.white,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "Payment Details",
                        style: TextStyle(
                          color: FAColors.textPrimary,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyOrderView(),
                          ),
                        );
                      },
                      icon: Icon(
                        Iconsax.shopping_cart,
                        size: 25,
                        color: FAColors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 25,
                ),
                child: Text(
                  "Customize your payment method",
                  style: TextStyle(
                    color: FAColors.textPrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Divider(
                  color: FAColors.textSecondary.withValues(alpha: 0.4),
                  height: 1,
                ),
              ),
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  color: FAColors.dark,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 15,
                      offset: Offset(0, 9),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 35,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Cash/Card On Delivery",
                            style: TextStyle(
                              color: FAColors.textPrimary,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Icon(Iconsax.check, size: 20),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Divider(
                        color: FAColors.textSecondary.withValues(alpha: 0.4),
                        height: 1,
                      ),
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: cardArr.length,
                      itemBuilder: ((context, index) {
                        var cObj = cardArr[index] as Map? ?? {};
                        return Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 35,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                cObj["icon"].toString(),
                                width: 50,
                                height: 35,
                                fit: BoxFit.contain,
                                color: FAColors.white,
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                child: Text(
                                  cObj["card"].toString(),
                                  style: TextStyle(
                                    color: FAColors.textSecondary,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 100,
                                height: 28,
                                child: RoundButton(
                                  title: 'Delete Card',
                                  fontSize: 12,
                                  onPressed: () {},
                                  type: RoundButtonType.textPrimary,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Divider(
                        color: FAColors.textSecondary.withValues(alpha: 0.4),
                        height: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 35,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Other Methods",
                            style: TextStyle(
                              color: FAColors.textPrimary,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
              const SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: RoundIconButton(
                  title: "Add Another Credit/Debit Card",
                  icon: Iconsax.add,
                  color: FAColors.primary,
                  fontSize: 16,
                  onPressed: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return const AddCardView();
                      },
                    );
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const AddCardView() ));
                  },
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
