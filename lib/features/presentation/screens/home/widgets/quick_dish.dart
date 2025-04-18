import 'package:flutter/material.dart';

class QuickDIsh extends StatelessWidget {
  const QuickDIsh({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () {
                if (index != 1) {}
              },
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.asset(
                  "assets/images/dishes/item_${index + 1}.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
