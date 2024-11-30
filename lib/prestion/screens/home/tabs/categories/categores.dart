import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/config/theme/app_styles.dart';
import 'package:news/data_model/category_DM.dart';
import 'package:news/prestion/screens/home/tabs/categories/widget/category_widget.dart';

class Categories extends StatelessWidget {
  Categories({super.key});

  List<CategoryDM> categoriesList = CategoryDM.getCategoriesList();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.all(8.0),
      child: Column(
        children: [
          Text('Pick your category\nof interest',
            style: AppStyles.picCategory,
          ),
          Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 25.w,
                    mainAxisSpacing: 20.h),
                itemBuilder: (context, index) => CategoryWidget(categoryDM: categoriesList[index], index: index),
                itemCount: categoriesList.length,
              ))
        ],
      ),
    );
  }
}