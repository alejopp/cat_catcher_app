import 'package:cached_network_image/cached_network_image.dart';
import 'package:cat_catcher_app/core/constants/app_strings.dart';
import 'package:cat_catcher_app/core/routes/routes.dart';
import 'package:cat_catcher_app/features/cat/domain/entities/cat.dart';
import 'package:cat_catcher_app/features/cat/presentation/screens/cat_webview_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

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
        appBar: _buildAppBar(),
        body: _buildBody(context),
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: Text(
        catData.name,
      ),
    );
  }

  Column _buildBody(BuildContext context) {
    return Column(
      children: [
        _buildImageSection(context),
        _buildDetailsSection(context),
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

  Expanded _buildDetailsSection(BuildContext context) {
    return Expanded(
      child: Scrollbar(
        thumbVisibility: true,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    catData.origin,
                    style: Theme.of(context).textTheme.titleMedium,
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
                catData.description, //TODO Verify style
              ),
              SizedBox(height: 20.h),
              _buildInfoRow(context, AppStrings.intelligence,
                  catData.intelligence, Icons.lightbulb),
              _buildInfoRow(context, AppStrings.adaptability,
                  catData.intelligence, Icons.star),
              _buildInfoRow(context, AppStrings.childFriendly,
                  catData.childFriendly, Icons.child_care),
              _buildInfoRow(context, AppStrings.socialNeeds,
                  catData.socialNeeds, Icons.people),
              _buildInfoRow(context, AppStrings.dogFriendly,
                  catData.dogFriendly, Icons.pets),
              Row(
                children: [
                  Icon(Icons.favorite, color: Colors.redAccent),
                  SizedBox(width: 10.w),
                  Text(
                    AppStrings.lifeSpan(
                      catData.lifeSpan,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              Row(
                children: [
                  Icon(Icons.person, color: Colors.blueAccent),
                  SizedBox(width: 10.h),
                  Expanded(
                    child: Text(
                      AppStrings.temperament(catData.temperament),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              if (catData.wikipediaUrl.isNotEmpty)
                TextButton(
                  onPressed: () {
                    context.push(Routes.catWebViewScreen,
                        extra: CatWebViewParams(
                          url: catData.wikipediaUrl,
                          title: catData.name,
                        ));
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      AppStrings.webLinkLabel,
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(
    BuildContext context,
    String title,
    int level,
    IconData icon,
  ) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.r),
      child: Row(
        children: [
          Icon(icon, color: Colors.orangeAccent),
          SizedBox(width: 10.w),
          Text(
            "$title: ",
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
