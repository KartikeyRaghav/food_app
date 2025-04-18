import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/colors.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key, required this.tabName, required this.dark});

  final List<String> tabName;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tabName.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.all(5),
          child: Container(
            child:
                index == 0
                    ? Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color:
                              dark
                                  ? FAColors.buttonSecondary
                                  : FAColors.darkGrey,
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 5),
                          Icon(Icons.tune, size: 15),
                          SizedBox(width: 5),
                          Text(
                            "Filter",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.arrow_downward, size: 15),
                          SizedBox(width: 5),
                        ],
                      ),
                    )
                    : index == 5 || index == 6
                    ? Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color:
                              dark
                                  ? FAColors.buttonSecondary
                                  : FAColors.darkGrey,
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 5),
                          Text(
                            tabName[index],
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.arrow_downward, size: 15),
                          SizedBox(width: 5),
                        ],
                      ),
                    )
                    : Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color:
                              dark
                                  ? FAColors.buttonSecondary
                                  : FAColors.darkGrey,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 5,
                        ),
                        child: Center(child: Text(tabName[index])),
                      ),
                    ),
          ),
        );
      },
    );
  }
}
