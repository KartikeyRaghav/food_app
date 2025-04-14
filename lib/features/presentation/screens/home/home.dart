import 'package:flutter/material.dart';
import 'package:food_app/common/widgets/round_textfield.dart';
import 'package:food_app/common/widgets/category_cell.dart';
import 'package:food_app/common/widgets/most_popular_cell.dart';
import 'package:food_app/common/widgets/popular_resutaurant_row.dart';
import 'package:food_app/common/widgets/recent_item_row.dart';
import 'package:food_app/common/widgets/view_all_title_row.dart';
import 'package:food_app/features/presentation/screens/more/my_order_view.dart';
import 'package:food_app/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final TextEditingController txtSearch = TextEditingController();

  final List catArr = [
    {"image": "assets/images/dishes/cat_offer.png", "name": "Offers"},
    {"image": "assets/images/dishes/cat_sri.png", "name": "Sri Lankan"},
    {"image": "assets/images/dishes/cat_3.png", "name": "Italian"},
    {"image": "assets/images/dishes/cat_4.png", "name": "Indian"},
  ];

  final List popArr = [
    {
      "image": "assets/images/dishes/res_1.png",
      "name": "Minute by tuk tuk",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food",
    },
    {
      "image": "assets/images/dishes/res_2.png",
      "name": "Café de Noir",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food",
    },
    {
      "image": "assets/images/dishes/res_3.png",
      "name": "Bakes by Tella",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food",
    },
  ];

  final List mostPopArr = [
    {
      "image": "assets/images/dishes/m_res_1.png",
      "name": "Minute by tuk tuk",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food",
    },
    {
      "image": "assets/images/dishes/m_res_2.png",
      "name": "Café de Noir",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food",
    },
  ];

  final List recentArr = [
    {
      "image": "assets/images/dishes/item_1.png",
      "name": "Mulberry Pizza by Josh",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food",
    },
    {
      "image": "assets/images/dishes/item_2.png",
      "name": "Barita",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food",
    },
    {
      "image": "assets/images/dishes/item_3.png",
      "name": "Pizza Rush Hour",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                      "Good morning Kartikey",
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivering to",
                      style: TextStyle(
                        color: FAColors.textSecondary,
                        fontSize: 11,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Current Location",
                          style: TextStyle(
                            color: FAColors.textSecondary,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 25),
                        Icon(
                          Iconsax.arrow_down_1,
                          size: 15,
                          color: FAColors.primary,
                        ),
                      ],
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
              SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  itemCount: catArr.length,
                  itemBuilder: ((context, index) {
                    var cObj = catArr[index] as Map? ?? {};
                    return CategoryCell(cObj: cObj, onTap: () {});
                  }),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ViewAllTitleRow(
                  title: "Popular Restaurants",
                  onView: () {},
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: popArr.length,
                itemBuilder: ((context, index) {
                  var pObj = popArr[index] as Map? ?? {};
                  return PopularRestaurantRow(pObj: pObj, onTap: () {});
                }),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ViewAllTitleRow(title: "Most Popular", onView: () {}),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  itemCount: mostPopArr.length,
                  itemBuilder: ((context, index) {
                    var mObj = mostPopArr[index] as Map? ?? {};
                    return MostPopularCell(mObj: mObj, onTap: () {});
                  }),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ViewAllTitleRow(title: "Recent Items", onView: () {}),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                itemCount: recentArr.length,
                itemBuilder: ((context, index) {
                  var rObj = recentArr[index] as Map? ?? {};
                  return RecentItemRow(rObj: rObj, onTap: () {});
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
