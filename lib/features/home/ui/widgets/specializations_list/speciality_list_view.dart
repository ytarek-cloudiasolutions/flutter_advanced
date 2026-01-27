import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';

import 'package:flutter_complete_project/features/home/data/models/specializations_response_model.dart';
import 'package:flutter_complete_project/features/home/logic/home_cubit.dart';
import 'package:flutter_complete_project/features/home/ui/widgets/specializations_list/speciality_list_view_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityListView extends StatefulWidget {
  final List<SpecializationsData?>? specializationsDataList;
  const SpecialityListView({super.key, required this.specializationsDataList});

  @override
  State<SpecialityListView> createState() => _DoctorsSpecialityListViewState();
}

class _DoctorsSpecialityListViewState extends State<SpecialityListView> {
  var selectedSpecializationIndex = 0;

  @override
  Widget build(BuildContext context) {
    final isEmpty =
        widget.specializationsDataList == null ||
        widget.specializationsDataList!.isEmpty;
    return SizedBox(
      height: 100.h,
      child: isEmpty
          ? Text("Empty List", style: TextStyles.font12BlueRegular)
          : ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.specializationsDataList?.length ?? 0,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSpecializationIndex = index;
                    });
                    context.read<HomeCubit>().getDoctorsList(
                      specializationId:
                          widget.specializationsDataList?[index]?.id,
                    );
                  },
                  child: SpecialityListViewItem(
                    specializationsData: widget.specializationsDataList![index],
                    itemIndex: index,
                    selectedIndex: selectedSpecializationIndex,
                  ),
                );
              },
            ),
    );
  }
}
