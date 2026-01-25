import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';

import 'package:flutter_complete_project/features/home/data/models/specializations_response_model.dart';
import 'package:flutter_complete_project/features/home/ui/widgets/doctors_speciality_list_view_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  final List<SpecializationsData?>? specializationsDataList;
  const DoctorsSpecialityListView({
    super.key,
    required this.specializationsDataList,
  });

  @override
  Widget build(BuildContext context) {
    final isEmpty =
        specializationsDataList == null || specializationsDataList!.isEmpty;
    return SizedBox(
      height: 100.h,
      child: isEmpty
          ? Text("Empty List", style: TextStyles.font12BlueRegular)
          : ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: specializationsDataList?.length ?? 0,
              itemBuilder: (context, index) {
                return DoctorsSpecialityListViewItem(
                  specializationsData: specializationsDataList![index],
                  itemIndex: index,
                );
              },
            ),
    );
  }
}
