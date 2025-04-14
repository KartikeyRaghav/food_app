import 'package:flutter/material.dart';
import 'package:food_app/common/widgets/round_textfield.dart';
import 'package:food_app/features/presentation/screens/more/my_order_view.dart';
import 'package:food_app/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

import 'menu_items_view.dart';

class MenuScreen extends StatelessWidget {
  MenuScreen({super.key});

  final List menuArr = [
    {
      "name": "Food",
      "image": "assets/images/dishes/menu_1.png",
      "items_count": "120",
    },
    {
      "name": "Beverages",
      "image": "assets/images/dishes/menu_2.png",
      "items_count": "220",
    },
    {
      "name": "Desserts",
      "image": "assets/images/dishes/menu_3.png",
      "items_count": "155",
    },
    {
      "name": "Promotions",
      "image": "assets/images/dishes/menu_4.png",
      "items_count": "25",
    },
  ];

  final TextEditingController txtSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 180),
            width: media.width * 0.27,
            height: media.height * 0.6,
            decoration: BoxDecoration(
              color: FAColors.primary,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  const SizedBox(height: 46),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Menu",
                          style: TextStyle(
                            color: FAColors.primary,
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
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: RoundTextfield(
                      hintText: "Search Food",
                      controller: txtSearch,
                      left: Container(
                        alignment: Alignment.center,
                        width: 30,
                        child: Icon(
                          Iconsax.search_normal,
                          size: 20,
                          color: FAColors.textSecondary,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  ListView.builder(
                    padding: const EdgeInsets.symmetric(
                      vertical: 30,
                      horizontal: 20,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: menuArr.length,
                    itemBuilder: ((context, index) {
                      var mObj = menuArr[index] as Map? ?? {};
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MenuItemsView(mObj: mObj),
                            ),
                          );
                        },
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 8,
                                bottom: 8,
                                right: 20,
                              ),
                              width: media.width - 100,
                              height: 90,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  bottomLeft: Radius.circular(25),
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 7,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  mObj["image"].toString(),
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(width: 15),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        mObj["name"].toString(),
                                        style: TextStyle(
                                          color: FAColors.textPrimary,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        "${mObj["items_count"].toString()} items",
                                        style: TextStyle(
                                          color: FAColors.textSecondary,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(17.5),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        offset: Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Iconsax.arrow_right_2,
                                    size: 30,
                                    color: FAColors.primary,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
