import 'package:flutter/material.dart';
import 'package:food_app/common/widgets/round_icon_button.dart';
import 'package:food_app/common/widgets/round_textfield.dart';
import 'package:food_app/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class AddCardView extends StatefulWidget {
  const AddCardView({super.key});

  @override
  State<AddCardView> createState() => _AddCardViewState();
}

class _AddCardViewState extends State<AddCardView> {
  TextEditingController txtCardNumber = TextEditingController();
  TextEditingController txtCardMonth = TextEditingController();
  TextEditingController txtCardYear = TextEditingController();
  TextEditingController txtCardCode = TextEditingController();
  TextEditingController txtFirstName = TextEditingController();
  TextEditingController txtLastName = TextEditingController();
  bool isAnyTime = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      width: media.width,
      decoration: BoxDecoration(
        color: FAColors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Add Credit/Debit Card",
                style: TextStyle(
                  color: FAColors.textPrimary,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close, color: FAColors.textPrimary, size: 25),
              ),
            ],
          ),
          Divider(
            color: FAColors.textSecondary.withValues(alpha: 0.4),
            height: 1,
          ),
          const SizedBox(height: 15),
          RoundTextfield(
            hintText: "Card Number",
            controller: txtCardNumber,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Text(
                "Expiry",
                style: TextStyle(
                  color: FAColors.textPrimary,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 100,
                child: RoundTextfield(
                  hintText: "MM",
                  controller: txtCardMonth,
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(width: 25),
              SizedBox(
                width: 100,
                child: RoundTextfield(
                  hintText: "YYYY",
                  controller: txtCardYear,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          RoundTextfield(
            hintText: "Card Security Code",
            controller: txtCardCode,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 15),
          RoundTextfield(hintText: "First Name", controller: txtFirstName),
          const SizedBox(height: 15),
          RoundTextfield(hintText: "Last Name", controller: txtLastName),
          const SizedBox(height: 15),
          Row(
            children: [
              Text(
                "You can remove this card at anytime",
                style: TextStyle(
                  color: FAColors.textSecondary,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Switch(
                value: isAnyTime,
                activeColor: FAColors.primary,
                onChanged: (newVal) {
                  setState(() {
                    isAnyTime = newVal;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 25),
          RoundIconButton(
            title: "Add Card",
            icon: Iconsax.add,
            color: FAColors.primary,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            onPressed: () {},
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
