import 'package:flutter/material.dart';
import 'package:calmify/core/theme/index.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final String? hintText;

  const SearchBar({
    super.key,
    required this.controller,
    required this.onChanged,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.darkSurface,
        borderRadius: AppBorderRadius.medium,
        border: Border.all(color: AppColors.darkDivider),
        boxShadow: AppShadows.soft,
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        style: ITextStyle.body.largeRegular,
        decoration: InputDecoration(
          hintText: hintText ?? 'Search exercises...',
          hintStyle: ITextStyle.body.largeRegular.copyWith(
            color: AppColors.darkTextSecondary,
          ),
          prefixIcon: Icon(Icons.search, color: AppColors.darkTextSecondary),
          suffixIcon:
              controller.text.isNotEmpty
                  ? IconButton(
                    icon: Icon(Icons.clear, color: AppColors.darkTextSecondary),
                    onPressed: () {
                      controller.clear();
                      onChanged('');
                    },
                  )
                  : null,
          border: InputBorder.none,
          contentPadding: AppPadding.medium,
        ),
      ),
    );
  }
}
