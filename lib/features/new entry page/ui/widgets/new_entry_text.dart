import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:pill2/core/theming/colors.dart';
import 'package:pill2/core/theming/text_style.dart';
import 'package:pill2/features/new%20entry%20page/logic/new_entry_cubit.dart';
import 'package:pill2/features/new%20entry%20page/ui/widgets/new_entry_method.dart';
import 'package:pill2/features/new%20entry%20page/ui/widgets/panel_title.dart';


class NewEntryText extends StatelessWidget {
  const NewEntryText({super.key, this.onSaved});

  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    var inject = context.read<NewEntryCubit>();
    return Form(
      key:inject.formKey ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PanelTitle(
            title: "Medicine Name",
            isRequired: true,
          ),
          TextFormField(
        
            onSaved: (value) {
              context.read<NewEntryCubit>().medcineNameValidate = value;
            },
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return "Name is required";
              } else {
                return null;
              }
            },
            controller: inject.nameControler,
            maxLength: 12,
            textCapitalization: TextCapitalization.words,
            decoration: textformDecoration(),
            style: AppTextStyles.font16Textcolorpoppins
                .copyWith(color: AppColors.kOtherColor),
          ),
          const PanelTitle(
            title: "Dosage in mg",
            isRequired: false,
          ),
          TextFormField(
            maxLength: 12,
            controller: inject.dosvageControler,
            // textCapitalization: TextCapitalization.,
            keyboardType: TextInputType.number,
            decoration: textformDecoration(),
            style: AppTextStyles.font16Textcolorpoppins
                .copyWith(color: AppColors.kOtherColor),
          ),
        ],
      ),
    );
  }
}
