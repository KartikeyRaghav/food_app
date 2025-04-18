import 'package:flutter/material.dart';
import 'package:food_app/common/styles/spacing_style.dart';
import 'package:food_app/utils/theme/widget_themes/search_bar_field_theme.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: Padding(
        padding: FASpacingStyle.containerPadding,
        child: TextFormField(
          decoration: FASearchBarFieldTheme.getInputDecoration(
            hintText: "Search...",
            suffixIcon: Icon(Icons.search, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
