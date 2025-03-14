import 'package:cached_network_image/cached_network_image.dart';
import 'package:cat_catcher_app/core/constants/app_strings.dart';
import 'package:cat_catcher_app/core/theme/app_styles.dart';
import 'package:cat_catcher_app/features/cat/domain/entities/cat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CatDetailScreen extends StatelessWidget {
  final Cat catData;

  const CatDetailScreen({
    super.key,
    required this.catData,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF330072), //TODO Color//Color(0xFF1E1E1E),
        appBar: _buildAppBar(),
        body: _buildBody(context),
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xFF330072), // Color morado oscuro
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
      title: Text(
        catData.name,
        style: AppStyles.bodyNormalBoldStyle,
      ),
    );
  }

  Column _buildBody(BuildContext context) {
    return Column(
      children: [
        _buildImageSection(context),
        _buildDetailsSection(),
      ],
    );
  }

  SizedBox _buildImageSection(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4, // 40% de la pantalla
      width: double.infinity,
      child: CachedNetworkImage(
        imageUrl: catData.image?.url ?? '',
        fit: BoxFit.cover,
        placeholder: (context, url) =>
            Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) =>
            Icon(Icons.error, color: Colors.red),
      ),
    );
  }

  Expanded _buildDetailsSection() {
    return Expanded(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  catData.origin,
                  style: AppStyles.bodyNormalBoldStyle,
                ),
                SizedBox(width: 10.w),
                SvgPicture.network(
                  'https://flagcdn.com/${catData.countryCode.toLowerCase()}.svg',
                  width: 24,
                  height: 24,
                )
              ],
            ),
            SizedBox(height: 10.h),
            Text(
              catData.description,
              style: AppStyles.bodyNormalStyle,
            ),
            SizedBox(height: 20.h),
            _buildInfoRow(
                AppStrings.intelligence, catData.intelligence, Icons.lightbulb),
            _buildInfoRow(
                AppStrings.adaptability, catData.intelligence, Icons.star),
            _buildInfoRow(AppStrings.childFriendly, catData.childFriendly,
                Icons.child_care),
            _buildInfoRow(
                AppStrings.socialNeeds, catData.socialNeeds, Icons.people),
            _buildInfoRow(
                AppStrings.dogFriendly, catData.dogFriendly, Icons.pets),
            SizedBox(height: 10.h),
            Row(
              children: [
                Icon(Icons.favorite, color: Colors.redAccent),
                SizedBox(width: 10.w),
                Text(
                  AppStrings.lifeSpan(catData.lifeSpan),
                  style: AppStyles.bodyNormalStyle,
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Icon(Icons.person, color: Colors.blueAccent),
                SizedBox(width: 10.h),
                Expanded(
                  child: Text(
                    catData.temperament,
                    style: AppStyles.bodyNormalStyle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String title, int level, IconData icon) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.r),
      child: Row(
        children: [
          Icon(icon, color: Colors.orangeAccent),
          SizedBox(width: 10.w),
          Text(
            "$title: ",
            style: AppStyles.bodyNormalBoldStyle,
          ),
          Row(
            children: List.generate(
              5,
              (index) => Icon(
                index < level ? icon : Icons.circle_outlined,
                color: index < level ? Colors.orangeAccent : Colors.white30,
                size: 16.r,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
