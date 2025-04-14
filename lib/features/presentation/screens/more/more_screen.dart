import 'package:flutter/material.dart';
import 'package:food_app/features/presentation/screens/more/about_us_view.dart';
import 'package:food_app/features/presentation/screens/more/inbox_view.dart';
import 'package:food_app/features/presentation/screens/more/my_order_view.dart';
import 'package:food_app/features/presentation/screens/more/notification_view.dart';
import 'package:food_app/features/presentation/screens/more/payment_details_view.dart';
import 'package:food_app/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class MoreScreen extends StatelessWidget {
  MoreScreen({super.key});

  final List moreArr = [
    {
      "index": "1",
      "name": "Payment Details",
      "image": Iconsax.dollar_circle,
      "base": 0,
    },
    {
      "index": "2",
      "name": "My Orders",
      "image": Iconsax.shopping_bag,
      "base": 0,
    },
    {
      "index": "3",
      "name": "Notifications",
      "image": Iconsax.notification,
      "base": 15,
    },
    {"index": "4", "name": "Inbox", "image": Iconsax.card_pos, "base": 0},
    {"index": "5", "name": "About Us", "image": Iconsax.info_circle, "base": 0},
    {"index": "6", "name": "Logout", "image": Iconsax.info_circle, "base": 0},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 46),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "More",
                      style: TextStyle(
                        color: FAColors.textPrimary,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
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
              ListView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: moreArr.length,
                itemBuilder: (context, index) {
                  var mObj = moreArr[index] as Map? ?? {};
                  var countBase = mObj["base"] as int? ?? 0;
                  return InkWell(
                    onTap: () {
                      switch (mObj["index"].toString()) {
                        case "1":
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PaymentDetailsView(),
                            ),
                          );

                          break;

                        case "2":
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyOrderView(),
                            ),
                          );
                        case "3":
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NotificationsView(),
                            ),
                          );
                        case "4":
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const InboxView(),
                            ),
                          );
                        case "5":
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AboutUsView(),
                            ),
                          );
                        case "6":
                          print('hello');
                        // ServiceCall.logout();

                        default:
                      }
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 20,
                      ),
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 12,
                            ),
                            decoration: BoxDecoration(
                              color: FAColors.darkerGrey,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            margin: const EdgeInsets.only(right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: FAColors.white,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  alignment: Alignment.center,
                                  child: Icon(mObj["image"], size: 25, color: FAColors.primary,),
                                ),
                                const SizedBox(width: 15),
                                Expanded(
                                  child: Text(
                                    mObj["name"].toString(),
                                    style: TextStyle(
                                      color: FAColors.primary,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 15),
                                if (countBase > 0)
                                  Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(12.5),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      countBase.toString(),
                                      style: TextStyle(
                                        color: FAColors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                const SizedBox(width: 30),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: FAColors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Icon(
                              Iconsax.arrow_right_2,
                              size: 30,
                              color: FAColors.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
