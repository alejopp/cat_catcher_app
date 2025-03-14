import 'package:cat_catcher_app/core/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchBarWidget extends StatelessWidget {
  final bool searching;
  final Function? onTextChanged;
  final VoidCallback? onCancelSearch;
  final TextEditingController? textEditingController;

  const CustomSearchBarWidget({
    super.key,
    required this.searching,
    this.onTextChanged,
    this.onCancelSearch,
    this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Color(0xFF330072),
      floating: false,
      pinned: false,
      expandedHeight: 100.h,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(bottom: 16.h, left: 16.w, right: 16.w),
        title: SizedBox(
          height: 40,
          child: TextField(
            onChanged: (value) {
              onTextChanged?.call(value);
            },
            controller: textEditingController,
            style: TextStyle(
              decoration: TextDecoration.none,
              decorationThickness: 0,
              color: Color(0xFF330072),
              fontSize: 14.sp,
            ),
            decoration: InputDecoration(
              hintText: AppStrings.searchBreadHint,
              hintStyle: TextStyle(fontSize: 12.sp, color: Colors.grey),
              filled: true,
              fillColor: Colors.white,
              prefixIcon: searching
                  ? GestureDetector(
                      onTap: () {
                        onCancelSearch?.call();
                      },
                      child: Icon(
                        Icons.clear,
                        color: Color(0xFF330072),
                      ),
                    )
                  : Icon(
                      Icons.search,
                      color: Color(0xFF330072),
                    ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
