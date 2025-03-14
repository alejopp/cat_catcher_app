import 'package:cached_network_image/cached_network_image.dart';
import 'package:cat_catcher_app/core/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCardWidget extends StatelessWidget {
  final String catBreed;
  final String? imageUrl;
  final String country;
  final String countryFlagUrl;
  final int intelligence;
  final VoidCallback onMorePressed;

  const CustomCardWidget({
    super.key,
    required this.catBreed,
    this.imageUrl,
    required this.country,
    required this.countryFlagUrl,
    required this.intelligence,
    required this.onMorePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.r),
      child: Card(
        color: const Color(0xFFBDBDFF),
        elevation: 6,
        shadowColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: SizedBox(
          height: 300.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCardHeader(),
              _buildCardImage(),
              _buildCardFooter(),
            ],
          ),
        ),
      ),
    );
  }

  Padding _buildCardFooter() {
    return Padding(
      padding: EdgeInsets.all(8.r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.originCountry,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF330072),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                children: [
                  SvgPicture.network(
                    countryFlagUrl,
                    width: 16.w,
                    height: 16.h,
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    country,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16.sp,
                      color: Color(0xFF330072),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${AppStrings.intelligence}:',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                  color: Color(0xFF330072),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                children: List.generate(5, (index) {
                  return Icon(
                    index < intelligence
                        ? Icons.lightbulb
                        : Icons.lightbulb_outline,
                    color: Colors.yellow.shade400,
                  );
                }),
              ),
            ],
          )
        ],
      ),
    );
  }

  Expanded _buildCardImage() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: imageUrl ?? 'https://flagcdn.com/w320/co.png',
            width: double.infinity,
            fit: BoxFit.fitWidth,
            placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) =>
                const Icon(Icons.error, color: Colors.red),
          ),
        ),
      ),
    );
  }

  Padding _buildCardHeader() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            catBreed,
            style: const TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF330072),
            ),
          ),
          ElevatedButton(
            onPressed: onMorePressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              AppStrings.more,
              style: TextStyle(
                color: Color(0xFF330072),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
